//Includes
#include <xparameters.h>
#include "intr_handlers.h"
#include "interrupts.h"
#include "main.h"

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
