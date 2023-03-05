/*
 * adventures_with_ip.c
 *
 * Main source file. Contains main() and menu() functions.
 */
#include "adventures_with_ip.h"
#include "xpseudo_asm.h"
#include "xil_mmu.h"
#include "xscugic.h"
#include "xgpio.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xil_types.h"

#include <stdio.h>

#include "xil_mmu.h"
#include "xpseudo_asm.h"
#define sev() __asm__("sev")
#define ARM1_STARTADR 0xFFFFFFF0
#define ARM1_BASEADDR  0x10080000


extern u32 MMutable;


XScuGic InterruptController; /* Instance of the Interrupt Controller */
static XScuGic_Config *GicConfig;/* The configuration parameters of thecontroller */

// Parameter definitions
#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_0_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID 61

#define BTN_INT 			XGPIO_IR_CH1_MASK
#define SWS_INT  			XGPIO_IR_CH2_MASK
XGpio BTNInst;

static int btn_value;
static int sws_value;


volatile bool isvertical = true;
volatile bool BTN_FLAG=true;
volatile int display_shape=1;
//----------------------------------------------------
// PROTOTYPE FUNCTIONS
//----------------------------------------------------
static void BTN_Intr_Handler(void *baseaddr_p);
static int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr);
static int ScuGicInterrupt_Init(u16 DeviceId, XGpio *GpioInstancePtr);
static u32 checkHalted(u32 baseAddress,u32 offset);
//----------------------------------------------------




/* ---------------------------------------------------------------------------- *
 * 									main()										*
 * ---------------------------------------------------------------------------- *
 * Runs all initial setup functions to initialise the audio codec and IP
 * peripherals, before calling the interactive menu system.
 * ---------------------------------------------------------------------------- */
int main(void)
{
	//Disable cache on OCM
	 // S=b1 TEX=b100 AP=b11, Domain=b1111, C=b0, B=b0
	 Xil_SetTlbAttributes(0xFFFF0000,0x14de2);


	    //Disable cache on OCM
	    // S=b1 TEX=b100 AP=b11, Domain=b1111, C=b0, B=b0
	    Xil_SetTlbAttributes(0xFFFF0000,0x14de2);

	    xil_printf("ARM0: writing startaddress for ARM1\n\r");
	    Xil_Out32(ARM1_STARTADR, ARM1_BASEADDR);
	    dmb(); //waits until write has finished

	    xil_printf("ARM0: sending the SEV to wake up ARM1\n\r");
	    sev();


	int xStatus;

	//-----------Setup push buttons---------------------------------------
	xStatus = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	if(xStatus != XST_SUCCESS) return XST_FAILURE;

	// Set all buttons direction to inputs
	XGpio_SetDataDirection(&BTNInst, BUTTON_CHANNEL, 0xFF); // channel 1 for push buttons
	XGpio_SetDataDirection(&BTNInst, SWITCH_CHANNEL, 0xFF); // channel 2 for dip switch

	// Initialize interrupt controller
	xStatus = ScuGicInterrupt_Init(INTC_DEVICE_ID, &BTNInst);
	if(xStatus != XST_SUCCESS) return XST_FAILURE;




	//Configure the IIC data structure
	IicConfig(XPAR_XIICPS_0_DEVICE_ID);

	//Configure the Audio Codec's PLL
	AudioPllConfig();

	//Configure the Line in and Line out ports.
	//Call LineInLineOutConfig() for a configuration that
	//enables the HP jack too.
	AudioConfigureJacks();
	xil_printf("Entering Main\r\n");
	xil_printf("ADAU1761 configured\r\n");
	/* Initialise GPIO and NCO peripherals */
//	gpio_init();


	//configure the shared variables
	is_music_streaming =1;
	tempo_speed_change=4;
	audio_volume_change=4;
	sound_effect_added = 0;
	light_pattern_mode = 1;
	is_light_pattern_changed = 0;
	reset_bin_counters = 0;



	/* Display interactive menu interface via terminal */
	xil_printf("going into menu \r\n");


	menu();

    return 1;
}

/* ---------------------------------------------------------------------------- *
 * 									menu()										*
 * ---------------------------------------------------------------------------- *
 * Presented at system startup. Allows the user to select between three
 * options by pressing certain keys on the keyboard:
 * 		's' - 	Audio loopback streaming
 * 		'n' - 	Tonal noise is generated by an NCO and added to the audio
 * 				being captured from the audio codec.
 * 		'f' - 	The audio + tonal noise is passed to an adaptive LMS noise
 * 				cancellation filter which will use the tonal noise estimate
 * 				to remove the noise from the audio.
 *
 * 	This menu is shown upon exiting from any of the above options.
 * ---------------------------------------------------------------------------- */
void menu(){

	/* Turn off all LEDs */
//	Xil_Out32(LED_BASE, 0);

    // DMA configuration
    XAxiDma_Config *myDmaConfig;
    XAxiDma myDma;
    u32 status;

    myDmaConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
    status = XAxiDma_CfgInitialize(&myDma, myDmaConfig);
    if(status != XST_SUCCESS){
    	xil_printf("DMA initialization failed\r\n");
    	return;
    }



	int temp_speed_value = tempo_speed_change;
	int counter_prng  = 0;

	while(1){


		if(counter_prng % 10000000 == 0 ){
			generate_PRNG(myDma); // this should sample the music
			counter_prng = 0;
		}

		if(is_music_streaming == 0){
			audio_record();
		}
		else if(is_music_streaming == 1){

			tempo_speed_change=temp_speed_value;
			audio_stream();
		}
		else if(is_music_streaming == 2){
			// music is paused
			tempo_speed_change = 0;
			reset_bin_counters = 1;

		}
		else if(is_music_streaming == 3){
			audio_play();
		}
		counter_prng++;

	}

} // menu()


void BTN_Intr_Handler(void *InstancePtr)
{


//	xil_printf("value of sws_value is here: %d \r\n",sws_value);
//	xil_printf("value of sws_value and mask is here: %d \r\n",(sws_value&48));
//	xil_printf("value of btn_value is here: %d \r\n",btn_value);

	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, SWS_INT);
	XGpio_InterruptDisable(&BTNInst, BTN_INT);

	btn_value = XGpio_DiscreteRead(&BTNInst, BUTTON_CHANNEL);
	//BTNC = 1, BTNR =8, BTNL = 4, BTNU=16, BTND = 2;
	sws_value = XGpio_DiscreteRead(&BTNInst, SWITCH_CHANNEL);
	//(SW3, SW2): Standard mode(0,0), Rotation mode(0,1), Random mode(1,0), Elongated shapes mode(1,1)

//	btn_value = XGpio_DiscreteRead(&BTNInst, 1);
//	xil_printf("btn value: %d\r\n", btn_value );
//	xil_printf("sws value: %d\r\n", sws_value );



	// mask all bits except for sw3 and sw2
	// 12 = 00001100
	if((sws_value & 12) == 0 ){

		if(light_pattern_mode !=1){
			is_light_pattern_changed =1;
		}
		light_pattern_mode=1;

	}
	else if((sws_value & 12) == 4){

		if(light_pattern_mode !=2){
				is_light_pattern_changed =1;
		}
		light_pattern_mode=2;
		is_light_pattern_changed =1;
	}
	else if((sws_value & 12) == 8){

		if(light_pattern_mode !=3){
			is_light_pattern_changed =1;
		}
		light_pattern_mode=3;

		}
	else if((sws_value & 12) == 12){
		if(light_pattern_mode !=4){
			is_light_pattern_changed =1;
		}
			light_pattern_mode=4;
		}

	// playback audio and recording

	// 48 = 00110000
	if((sws_value& 48) ==0){
		is_music_streaming=1;
	}
	else if((sws_value& 48) ==16){ //recording state
			is_music_streaming=0;
	}
	else if((sws_value& 48) ==32){ //playback state
		is_music_streaming=3;
	}
	else if((sws_value& 48) ==48){ // we cannot record and playback at the same time. audio_stream()
			is_music_streaming=1;
	}

//	xil_printf("value of sws_value is here: %d \r\n",sws_value);
//	xil_printf("value of sws_value and mask is here: %d \r\n",(sws_value&48));
//	xil_printf("value of btn_value is here: %d \r\n",btn_value);


//	for buttons ---------------------------------------------------
	if(btn_value ==1 ){//center
		if(is_music_streaming==2){
			is_music_streaming=1;
		}
		else{
			is_music_streaming=2;
		}
	}
	else if(btn_value==8){//btnR

		if(audio_volume_change <8){
			audio_volume_change++;
			audio_raiseVolume();
		}
	}
	else if(btn_value==4){//btnL

		if(audio_volume_change >2){
			audio_volume_change--;
			audio_lowerVolume();
			}
		}
	else if(btn_value==16){//btnU
		if(tempo_speed_change <8){
			audio_speedup();
			tempo_speed_change++;
		}
	}
	else if(btn_value==2){ //btnD
		if(tempo_speed_change >2){
			audio_slowdown();
			tempo_speed_change--;
		}
	}

		xil_printf("\r\n value of is_music_streaming %d \r\n",is_music_streaming);
		xil_printf("value of tempo_speed_change: %d \r\n",tempo_speed_change);
		xil_printf("value of audio_volume_change: %d \r\n",audio_volume_change);


	BTN_FLAG = true;

	//if the center button is pressed then change to vertical bars
	if(btn_value == 1){
		isvertical = !isvertical;
	}

    (void)XGpio_InterruptClear(&BTNInst, BTN_INT);
    (void)XGpio_InterruptClear(&BTNInst, SWS_INT);
    // Enable GPIO interrupts
    XGpio_InterruptEnable(&BTNInst, BTN_INT);
    XGpio_InterruptEnable(&BTNInst, SWS_INT);
}

int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr){

	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptEnable(&BTNInst, SWS_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	(Xil_ExceptionHandler) XScuGic_InterruptHandler,
	XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}

/*Setup all interrupts of the system*/
int ScuGicInterrupt_Init(u16 DeviceId, XGpio *GpioInstancePtr) // intstead of timer ptr we want push button pointer
{
	int Status;
	// Interrupt controller initialisation
	GicConfig = XScuGic_LookupConfig(DeviceId);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}
	Status = XScuGic_CfgInitialize(&InterruptController, GicConfig,
	GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	// Call to interrupt setup
	Status = SetUpInterruptSystem(&InterruptController);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	/*Connect a device driver handler that will be called when an interrupt for the device occurs, the device driver handler performs the specific interrupt processing for the device*/
	Status = XScuGic_Connect(&InterruptController,
						  	  	 INTC_GPIO_INTERRUPT_ID,
						  	  	 (Xil_ExceptionHandler)BTN_Intr_Handler,
						  	  	 (void *)GpioInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&InterruptController, INTC_GPIO_INTERRUPT_ID);

	return XST_SUCCESS;
}


u32 checkHalted(u32 baseAddress,u32 offset){
	u32 status;
	status = (XAxiDma_ReadReg(baseAddress,offset))&XAXIDMA_HALTED_MASK;
	return status;
}
