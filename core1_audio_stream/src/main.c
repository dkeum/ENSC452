#include "audio.h"
#include <stdio.h>
#include <sleep.h>
#include "xil_io.h"
#include "xil_mmu.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xscugic.h"
#include "xil_exception.h"



#define COMM_VAL (*(volatile unsigned long *)(0xFFFF0000))



// Parameter definitions
#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_2_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR


XScuGic INTCInst; //Interrupt Controller
//XIicPs Iic; //I2C Interface
XGpio btn_swt_gpio; // GPIO instance for buttons and switches

#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR

#define BUTTON_SWITCH_BASE XPAR_GPIO_0_BASEADDR
#define BUTTON_SWITCH_ID XPAR_GPIO_0_DEVICE_ID

/* ---------------------------------------------------------------------------- *
 * 							Define GPIO Channels								*
 * ---------------------------------------------------------------------------- */
#define BUTTON_CHANNEL 1
#define SWITCH_CHANNEL 2



#define BTN_INT XGPIO_IR_CH1_MASK
#define SWT_INT XGPIO_IR_CH2_MASK

#define AMP_UP 4
#define AMP_DWN 8
#define STOP_START 1
#define RECORD 32
#define PLAYBACK 16
#define TONE_UP 16
#define TONE_DWN 2
#define STREAM 0
#define SOUND_EFFECT_1 1
#define SOUND_EFFECT_2 2
#define SOUND_EFFECT_3 3
#define SIG_DETECT_3 192
#define SIG_DETECT_2 128
#define SIG_DETECT_1 64
#define LIGHT_PTN_1 4
#define LIGHT_PTN_2 8
#define LIGHT_PTN_3 12
#define AUDIO_BUFF_MAX 960000


enum AUDIO_STREAM_STATUS {ON, OFF};

//Global variable to determine the system state
unsigned int AUDIO_STATE;
unsigned int INTR_CH;
unsigned int AUDIO_BUFF_SIZE;
int RECORDED_DATA_PTR[960000];


//Interrupt Handlers (Prototype Functions)
void change_amplitude(unsigned int OP_CODE);
void change_tone(unsigned int OP_CODE);

void record_audio( unsigned int OP_CODE);
void playback_audio( unsigned int OP_CODE);
void add_soundfx( unsigned int OP_CODE);
void start_stop_audio(unsigned int OP_CODE);
void light_fx(u8 OP_CODE);
void sig_detect_fx(u8 OP_CODE);

//Canvas Drawing Operations
void draw_static_canvas();
// Audio Interface --> Will becomes main interrupt handler
void audio_interface(unsigned int operation, unsigned int interrupt_ch);
//State System
void change_sys_state(unsigned int curr_state, unsigned int new_state);
void Global_Interrupt_Handler(void *InstancePtr);
int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);









int main()
{


		//Configure the IIC data structure
		IicConfig(XPAR_XIICPS_0_DEVICE_ID);
		//Configure the Audio Codec's PLL
		AudioPllConfig();
		//Configure the Line in and Line out ports.
		//Call LineInLineOutConfig() for a configuration that
		//enables the HP jack too.
		AudioConfigureJacks();

		if(XGpio_Initialize(&btn_swt_gpio, BUTTON_SWITCH_ID) != XST_SUCCESS) return XST_FAILURE;

		XGpio_SetDataDirection(&btn_swt_gpio, SWITCH_CHANNEL, 0xFF);
		XGpio_SetDataDirection(&btn_swt_gpio, BUTTON_CHANNEL, 0xFF);

	//		 Initialize interrupt controller
		int status = IntcInitFunction(INTC_DEVICE_ID, &btn_swt_gpio);
		if(status != XST_SUCCESS) return XST_FAILURE;

    while(1){
    	audio_stream();
    }

    return 0;
}






//Local Variables
static int btn_value;
static int switch_value;

void Global_Interrupt_Handler(void *InstancePtr)
{
	// Disable GPIO interrupts for both switch and pointers
	XGpio_InterruptDisable(&btn_swt_gpio, SWT_INT);
	XGpio_InterruptDisable(&btn_swt_gpio, BTN_INT);

	// Ignore additional switch slides and button presses
	if (((XGpio_InterruptGetStatus(&btn_swt_gpio) & SWT_INT) != SWT_INT) && ((XGpio_InterruptGetStatus(&btn_swt_gpio) & BTN_INT) != BTN_INT)) {
			return;
	}

	switch_value = XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT);
	usleep(1000);

	//Sleep to correct for button and switch double bounce
	if(switch_value == XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT) && switch_value != 0){
		switch(switch_value){
			case RECORD:
				record_audio(RECORD);
				break;
			case PLAYBACK:
				playback_audio( PLAYBACK);
				break;
			case SOUND_EFFECT_1:
				add_soundfx( SOUND_EFFECT_1);
				break;
			case SOUND_EFFECT_2:
				add_soundfx( SOUND_EFFECT_2);
				break;
			case SOUND_EFFECT_3:
				add_soundfx( SOUND_EFFECT_3);
				break;
			default:
				break;
		}
	}

	btn_value = XGpio_DiscreteRead(&btn_swt_gpio, BTN_INT);
	usleep(1000);

	if (btn_value == XGpio_DiscreteRead(&btn_swt_gpio, BTN_INT) && btn_value != 0){
		switch(btn_value){
			case AMP_UP:
				change_amplitude(AMP_UP);
				break;
			case AMP_DWN:
				change_amplitude(AMP_DWN);
				break;
			case TONE_UP:
				change_tone(TONE_UP);
				break;
			case TONE_DWN:
				change_tone(TONE_DWN);
				break;
			case STOP_START:
				start_stop_audio(STOP_START);
				break;
			default:
				break;
		}
	}

	// Enable
    (void)XGpio_InterruptClear(&btn_swt_gpio, SWT_INT);
    (void)XGpio_InterruptClear(&btn_swt_gpio, BTN_INT);

    // Enable GPIO interrupts
    XGpio_InterruptEnable(&btn_swt_gpio, SWT_INT);
    XGpio_InterruptEnable(&btn_swt_gpio, BTN_INT);
}

//----------------------------------------------------
// INITIAL SETUP FUNCTIONS
//----------------------------------------------------

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr)
{
	//Enable Button Interrupt
	XGpio_InterruptEnable(&btn_swt_gpio, BTN_INT);
	//Enable Switch Interrupt
	XGpio_InterruptEnable(&btn_swt_gpio, SWT_INT);

	//Enable the interrupt handler globally
	XGpio_InterruptGlobalEnable(&btn_swt_gpio);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, XScuGicInstancePtr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr)
{
	XScuGic_Config *IntcConfig;
	int status;

	// Interrupt controller initialization
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst,
					  	  	 INTC_GPIO_INTERRUPT_ID,
					  	  	 (Xil_ExceptionHandler)Global_Interrupt_Handler,
					  	  	 (void *)GpioInstancePtr);

	if(status != XST_SUCCESS) return XST_FAILURE;

	// Enable Switch and Button interrupts
	XGpio_InterruptEnable(GpioInstancePtr, BTN_INT);
	XGpio_InterruptEnable(GpioInstancePtr, SWT_INT);

	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO(s)
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);

	return XST_SUCCESS;
}




int *AMP_VAL_ADDR = (int*)0x000000080; //Need to update
int *BIN_DETECTED = (int*)0x00000081; //DDR Space for Freq Bin Detected
int *TONE_SCALE_ADDR = (int*)0x00000082;
int *AUDIO_STREAM_MODE_ADDR =(int*) 0x00000083;

void change_sys_state(unsigned int curr_state, unsigned int new_state){
	//xil_printf("Switching State from %d to %d\r\n", curr_state, new_state);
	AUDIO_STATE = new_state;
	return;
}

void change_amplitude(unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);
	//Increase or decrease the amplitude of the audio stream
	if(AUDIO_STATE == AMP_UP){
		if(*AMP_VAL_ADDR != 0xFE){
			*AMP_VAL_ADDR = *AMP_VAL_ADDR + 4;
			*AMP_VAL_ADDR = *AMP_VAL_ADDR | 0x02; //Don't mute :)
			AudioWriteToReg(R31_PLAYBACK_LINE_OUTPUT_LEFT_VOLUME_CONTROL, *AMP_VAL_ADDR);
			AudioWriteToReg(R32_PLAYBACK_LINE_OUTPUT_RIGHT_VOLUME_CONTROL, *AMP_VAL_ADDR);
		}
	}else if(AUDIO_STATE == AMP_DWN){
		if(*AMP_VAL_ADDR != 0x02){
			*AMP_VAL_ADDR = *AMP_VAL_ADDR - 4;
			*AMP_VAL_ADDR = *AMP_VAL_ADDR | 0x02; //Don't mute :)
			AudioWriteToReg(R31_PLAYBACK_LINE_OUTPUT_LEFT_VOLUME_CONTROL, *AMP_VAL_ADDR);
			AudioWriteToReg(R32_PLAYBACK_LINE_OUTPUT_RIGHT_VOLUME_CONTROL, *AMP_VAL_ADDR);
		}
	}
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}
void change_tone(unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);

	//Increase or decrease the tone of the audio stream
	if(AUDIO_STATE == TONE_UP){
		if(*TONE_SCALE_ADDR != 1){
			*TONE_SCALE_ADDR = *TONE_SCALE_ADDR - 1;
		}
	}else if(AUDIO_STATE == TONE_DWN){
		if(*TONE_SCALE_ADDR != 5){
			*TONE_SCALE_ADDR = *TONE_SCALE_ADDR + 1;
		}
	}
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}
void record_audio( unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);
	u32 in_right, in_left;
	int i = 0;
	while(i < AUDIO_BUFF_MAX && (XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT) != 0)){
		// Read audio input from codec
		in_left = Xil_In32(I2S_DATA_RX_L_REG);
		in_right = Xil_In32(I2S_DATA_RX_R_REG);
		RECORDED_DATA_PTR[i] = (u32)in_left;
		i++;
		RECORDED_DATA_PTR[i] = (u32)in_right;
		usleep(23);
		i++;
	}
	AUDIO_BUFF_SIZE = i;
	//Revert system state to stream after recoding
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}

void playback_audio( unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);
	int i = 0;
	while(i < AUDIO_BUFF_SIZE && (XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT) != 0)){
		Xil_Out32(I2S_DATA_TX_L_REG, (u32)RECORDED_DATA_PTR[i]);
		i++;
		Xil_Out32(I2S_DATA_TX_R_REG, (u32)RECORDED_DATA_PTR[i]);
		usleep(23**TONE_SCALE_ADDR);
		i++;
	}
	//Revert system state to stream after playback
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}
void add_soundfx( unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);
	u32 left, right, i;

	//Invert Audio Stream
	if(AUDIO_STATE == SOUND_EFFECT_1){
		while(XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT) == SOUND_EFFECT_1){
			left = Xil_In32(I2S_DATA_RX_L_REG);
			right = Xil_In32(I2S_DATA_RX_R_REG);
			left = left ^ 0xFFFF;
			right = right ^ 0xFFFF;
			Xil_Out32(I2S_DATA_TX_L_REG, left);
			Xil_Out32(I2S_DATA_TX_R_REG, right);
	}
	}else if(AUDIO_STATE == SOUND_EFFECT_2){
		u32 temp_arr[96000];
		i = 0;
		while(XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT) == SOUND_EFFECT_2){
			while( i < 96000 && (XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT) == SOUND_EFFECT_2)){
				left = Xil_In32(I2S_DATA_RX_L_REG);
				right = Xil_In32(I2S_DATA_RX_R_REG);
				Xil_Out32(I2S_DATA_TX_L_REG, left);
				Xil_Out32(I2S_DATA_TX_R_REG, right);
				temp_arr[i++] = left;
				temp_arr[i++] = right;
			}
			i = 0;
			while( i < 96000 && (XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT) == SOUND_EFFECT_2)){
				Xil_Out32(I2S_DATA_TX_L_REG, temp_arr[i++]);
				Xil_Out32(I2S_DATA_TX_R_REG, temp_arr[i++]);
				usleep(12);
			}
			i = 0;
	}
	}else {
		int shft_cnt = rand() % 8;
		int rnd_mask = 0xFFFF >> shft_cnt;
		while(XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT) == SOUND_EFFECT_3){
			shft_cnt = rand() % 8;
			rnd_mask = 0xFFFF >> shft_cnt;
			left = Xil_In32(I2S_DATA_RX_L_REG) & rnd_mask;
			right = Xil_In32(I2S_DATA_RX_R_REG) & rnd_mask;
			Xil_Out32(I2S_DATA_TX_L_REG, left);
			Xil_Out32(I2S_DATA_TX_R_REG, right);
		}
	}
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}
void start_stop_audio(unsigned int OP_CODE){
	if(OP_CODE == STOP_START && *AUDIO_STREAM_MODE_ADDR == OFF){
		change_sys_state(AUDIO_STATE, OP_CODE);
		*AUDIO_STREAM_MODE_ADDR = ON;
	}else if(OP_CODE == STOP_START && *AUDIO_STREAM_MODE_ADDR == ON) {
		change_sys_state(AUDIO_STATE, OP_CODE);
		*AUDIO_STREAM_MODE_ADDR = OFF;
	}
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}

void light_fx(u8 OP_CODE){
	if(OP_CODE == LIGHT_PTN_1){
		//TODO Light Pattern 1
		xil_printf("Adding light pattern 1.\r\n");
	}else if(OP_CODE == LIGHT_PTN_2){
		//TODO Light Pattern 2
		xil_printf("Adding light pattern 2.\r\n");
	}else{
		//TODO Light Pattern 3
		xil_printf("Adding light pattern 3.\r\n");
	}
	return;
}

void sig_detect_fx(u8 OP_CODE){
	if(OP_CODE == SIG_DETECT_1){
		//TODO Sig. Pattern 1
		xil_printf("Signal Pattern 1 Detected.\r\n");
	}else if(OP_CODE == SIG_DETECT_2){
		//TODO Sig. Pattern 2
		xil_printf("Signal Pattern 2 Detected.\r\n");
	}else{
		//TODO Sig. Pattern 3
		xil_printf("Signal Pattern 3 Detected.\r\n");
	}
	return;
}

void draw_static_canvas(){
	xil_printf("Drawing Static Canvas\r\n");
	return;
}

void audio_interface(unsigned int op_mode, uint interrupt_ch){

	if(interrupt_ch != BTN_INT){

	switch(op_mode){
		case RECORD:
			record_audio(RECORD);
			break;
		case PLAYBACK:
			playback_audio(PLAYBACK);
			break;
		case SOUND_EFFECT_1:
			add_soundfx(SOUND_EFFECT_1);
			break;
		case SOUND_EFFECT_2:
			add_soundfx(SOUND_EFFECT_2);
			break;
		case SOUND_EFFECT_3:
			add_soundfx(SOUND_EFFECT_3);
			break;
		case SIG_DETECT_1:
			sig_detect_fx(SIG_DETECT_1);
			break;
		case SIG_DETECT_2:
			sig_detect_fx(SIG_DETECT_2);
			break;
		case SIG_DETECT_3:
			sig_detect_fx(SIG_DETECT_3);
			break;
		case LIGHT_PTN_1:
			light_fx(LIGHT_PTN_1);
			break;
		case LIGHT_PTN_2:
			light_fx(LIGHT_PTN_2);
			break;
		case LIGHT_PTN_3:
			light_fx(LIGHT_PTN_3);
			break;
		default:
			if(*AUDIO_STREAM_MODE_ADDR == ON){
				xil_printf("STREAMING AUDIO\r\n");
				audio_stream();
			} else {
				xil_printf("AUDIO STREAM OFF\r\n");
			}
			break;
	}
	}else {
		audio_stream();
	}
} // audio_interface()
