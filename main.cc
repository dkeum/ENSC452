
//Empty C++ Application
#include <stdio.h>
#include "xil_types.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"
#include <cstdlib>

#include "shape_params.h"




volatile bool TIMER_INTR_FLG;
XScuGic InterruptController; /* Instance of the Interrupt Controller */
static XScuGic_Config *GicConfig;/* The configuration parameters of thecontroller */
int NUM_BYTES_BUFFER = 5242880;


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
volatile int background_color=1;
volatile int display_shape=1;
//----------------------------------------------------
// PROTOTYPE FUNCTIONS
//----------------------------------------------------
static void BTN_Intr_Handler(void *baseaddr_p);
static int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr);
static int ScuGicInterrupt_Init(u16 DeviceId, XGpio *GpioInstancePtr);
//----------------------------------------------------



void BTN_Intr_Handler(void *InstancePtr)
{
	u32 CntrlRegister;
		CntrlRegister = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_CR_OFFSET);
		XUartPs_WriteReg(UART_BASEADDR, XUARTPS_CR_OFFSET,
						  ((CntrlRegister & ~XUARTPS_CR_EN_DIS_MASK) |
						   XUARTPS_CR_TX_EN | XUARTPS_CR_RX_EN));

	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, SWS_INT);
	XGpio_InterruptDisable(&BTNInst, BTN_INT);

	btn_value = XGpio_DiscreteRead(&BTNInst, BUTTON_CHANNEL);
	//BTNC = 1, BTNR =8, BTNL = 4, BTNU=16, BTND = 2;
	sws_value = XGpio_DiscreteRead(&BTNInst, SWITCH_CHANNEL);
	//(SW3, SW2): Standard mode(0,0), Rotation mode(0,1), Random mode(1,0), Elongated shapes mode(1,1)

//	btn_value = XGpio_DiscreteRead(&BTNInst, 1);
	xil_printf("btn value: %d\r\n", btn_value );
	xil_printf("sws value: %d\r\n", sws_value );

	if(sws_value==0){
		background_color=1;
	}
	else if(sws_value==4){
		background_color=2;
	}
	else if(sws_value==8){
		background_color=3;
	}
	else if(sws_value==12){
		background_color=4;
	}


	if(btn_value ==1 ){
		display_shape=1;
	}
	else if(btn_value==2){
		display_shape=2;
	}
	else if(btn_value==4){
			display_shape=3;
		}
	else if(btn_value==8 || btn_value == 16){
			display_shape=4;
	}

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


int main()
{
	Xil_DCacheDisable();


	int xStatus;
	xil_printf("Entering Main\r\n");

	//-----------Setup push buttons---------------------------------------
	xStatus = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	if(xStatus != XST_SUCCESS) return XST_FAILURE;

	// Set all buttons direction to inputs
	XGpio_SetDataDirection(&BTNInst, BUTTON_CHANNEL, 0xFF); // channel 1 for push buttons
	XGpio_SetDataDirection(&BTNInst, SWITCH_CHANNEL, 0xFF); // channel 2 for dip switch

	// Initialize interrupt controller
	xStatus = ScuGicInterrupt_Init(INTC_DEVICE_ID, &BTNInst);
	if(xStatus != XST_SUCCESS) return XST_FAILURE;

	Square square;
	Bins bin;
	Circle circle;
	Triangle triangle;
	Pentagon pentagon;
	Sound_effects_name sound_effect;
	Background background;

	// BACKGROUND DETAILS
	background.set_background(background_color);

	// background color first
	// standard mode black background
	// rotation mode
	// random mode
	// elongated shape mode

	// drawing bins but need freq range on them
	bin.draw_Bin(200,200,300,0,(int)0xFF0000FF); //temp value for freq range
	bin.draw_Bin(200,400,500,0,(int)0x00F00F00F); //temp value for freq range
	bin.draw_Bin(200,600,700,0,(int)0x0000FFFF); //0 is temp value for freq range
	bin.draw_Bin(200,800,900,0,(int)0x00003000); //temp value for freq range
	bin.draw_Bin(200,1000,1100,0,(int)0xFFFFFFFF); //temp value for freq range

			// drawing the appropriate name
			sound_effect.draw_sound_effects_name(1000,200);
			sound_effect.display_light_pattern_mode(background_color); // takes input 1-4

	int counterr = 0;
	while(1){
		while(BTN_FLAG==false){
			if(display_shape==1)
			square.draw_Square(0+counterr,100+counterr,220,280,(int)0x00000FFFF); // edit first two params for y coordinates and 3,4th param for x coordinates

			if(display_shape==2)
			circle.draw_Circle(500+counterr,400,30,0xFF0000FF);

			if(display_shape==3)
			triangle.draw_Triangle(450, 0+counterr, (int)0xFFFFFFFF); //1000

			if(display_shape==4)
			pentagon.draw_Pentagon(750, 100+counterr, (int)0xFFFFFFFF);


			sleep(0.5);
			counterr=counterr+7;

			if (counterr > 924) counterr= 0;
//			if(isvertical){
//				counterr=0;
//			}
		}

		background.set_background(background_color);
		bin.draw_Bin(200,200,300,0,(int)0xFF0000FF); //temp value for freq range
		bin.draw_Bin(200,400,500,0,(int)0x00F00F00F); //temp value for freq range
		bin.draw_Bin(200,600,700,0,(int)0x0000FFFF); //0 is temp value for freq range
		bin.draw_Bin(200,800,900,0,(int)0x00003000); //temp value for freq range
		bin.draw_Bin(200,1000,1100,0,(int)0xFFFFFFFF); //temp value for freq range
		sound_effect.draw_sound_effects_name(1000,200);
		sound_effect.display_light_pattern_mode(background_color); // takes input 1-4

		BTN_FLAG=false;
	}
	return 0;
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




