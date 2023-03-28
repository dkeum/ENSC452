#include "main.h"
#include "xil_mmu.h"
#include "xpseudo_asm.h"
#include "xtime_l.h"
#include "xaxidma.h"



void generate_PRNG(XAxiDma * myDma,unsigned long long int time_elapsed);
//Main Program Entry Point
int main()
{

//	// Local variables
//	int status = 0;
//	fft_t*       p_fft_inst;
//	cplx_data_t * rx_buff = malloc(sizeof(cplx_data_t)*FFT_INIT_POINTS);
//	cplx_data_t * tx_buff = malloc(sizeof(cplx_data_t)*FFT_INIT_POINTS);
	XAxiDma myDma;
	XAxiDma_Config * myDmaConfig;


    //Configure Audio Codec
	AudioPllConfig();
	LineinLineoutConfig();


    //Configure Switch and Button GPIO
	if(XGpio_Initialize(&btn_swt_gpio, XPAR_AXI_GPIO_0_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;

	XGpio_SetDataDirection(&btn_swt_gpio, SWITCH_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&btn_swt_gpio, BUTTON_CHANNEL, 0xFF);

	//Configure DMA for RNG
    myDmaConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
    int status = XAxiDma_CfgInitialize(&myDma, myDmaConfig);

//	// Initialize interrupt controller
//	status = IntcInitFunction(INTC_DEVICE_ID, &btn_swt_gpio);
//	if(status != XST_SUCCESS) return XST_FAILURE;
//
//    // Create FFT object
//    p_fft_inst = fft_create(
//    	XPAR_GPIO_2_DEVICE_ID,
//		XPAR_AXIDMA_1_DEVICE_ID,
//    	XPAR_PS7_SCUGIC_0_DEVICE_ID,
//		XPAR_FABRIC_AXI_DMA_1_S2MM_INTROUT_INTR,
//		XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR
//    );
//
//    if (p_fft_inst == NULL){
//    	xil_printf("ERROR! Failed to create FFT instance.\n\r");
//    	return -1;
//    }
//
//    //Setting the FFT to FFT_INIT_POINTS points
//    fft_set_num_pts(p_fft_inst, FFT_INIT_POINTS);
//
//
//    if (tx_buff == NULL){
//    	xil_printf("ERROR! Failed to allocate memory for the stimulus buffer.\n\r");
//    	return -1;
//    }
//
//    if (rx_buff == NULL){
//    	xil_printf("ERROR! Failed to allocate memory for the result buffer.\n\r");
//    	return -1;
//    }
    XTime tStart,tEnd;
    XTime_GetTime(&tStart);
    unsigned long long int tempTime;
    int bin = 0;
    // Main event loop
    while (1){
    	XTime_GetTime(&tEnd);
    	tempTime = (2*(tEnd-tStart))%300;
////    	for(int i = 0; i < 5; i++){
////    		bin += detect_freq(tx_buff, rx_buff, FFT_INIT_POINTS, p_fft_inst);
////    	}
//        xil_printf("VGA Bin = %d \r\n", bin/5);
        bin = 0;
        sleep(3);
        generate_PRNG(&myDma, tempTime);
    }



    return 0;

}




//generates numbers up to 20 shapes. each shape will have randomized color, position,
void generate_PRNG(XAxiDma * myDma,unsigned long long int time_elapsed){
	u32 status;
	u32 output_location[20]; // output of seed is here. We want to let at most 4 shapes per bin at a time. 4*5 = 20
	u32 seed[20]; //seed

	u32 size= 30;

	for(int ii =0; ii < size;ii++){
			seed[ii] = time_elapsed+ii+100;
	}




	Xil_DCacheFlushRange((u32)seed,size*sizeof(u32));
	status = XAxiDma_SimpleTransfer(myDma, (u32)seed, size*sizeof(u32),XAXIDMA_DEVICE_TO_DMA);
	status = XAxiDma_SimpleTransfer(myDma, (u32)output_location, size*sizeof(u32),XAXIDMA_DMA_TO_DEVICE);//typecasting in C/C++
	if(status != XST_SUCCESS){
		xil_printf("DMA initialization failed\n");
		return;
	}
//	usleep(30000);
	int a,b,c,d,e;

	// new seeds for the next iteration
	for(int ii =0; ii < size;ii++){
		seed[ii] = output_location[ii];

		xil_printf("the rand num generated: %0x \r\n",output_location[ii]);

	}


	return;

}

