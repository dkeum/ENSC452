/*
 * ip_functions.c
 *
 * Contains all functions which pertain to setup and use of IP periperals.
 */

#include "adventures_with_ip.h"

XGpio Gpio;
#define BUFFER_SIZE 480000*2 // 48Khz * 10 seconds * 2 // 2 because im recording left and right audio data into the same buffer
u32 audio_buffer[BUFFER_SIZE];
//u32 sine_audio_buffer[BUFFER_SIZE];

int normal_speed = 20; // 20 = 1/48 Khz
double normal_volume = 4; // we change the amplitude here.

u32 seed[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}; //seed











/* ---------------------------------------------------------------------------- *
 * 								audio_stream()									*
 * ---------------------------------------------------------------------------- *
 * This function performs audio loopback streaming by sampling the input audio
 * from the codec and then immediately passing the sample to the output of the
 * codec.
 *
 * The main menu can be accessed by entering 'q' on the keyboard.
 * ---------------------------------------------------------------------------- */
void audio_stream(){
	u32  in_left, in_right;
	while (is_music_streaming == 1){
		// Read audio input from codec
		in_left = Xil_In32(I2S_DATA_RX_L_REG);
		in_right = Xil_In32(I2S_DATA_RX_R_REG);
		// Write audio output to codec
		Xil_Out32(I2S_DATA_TX_L_REG, normal_volume*in_left);
		Xil_Out32(I2S_DATA_TX_R_REG, normal_volume*in_right);
	}
} // audio_stream()


void audio_record(){
	u32  in_left, in_right;
	u32 counter= 0;

//	xil_printf("address is this is: %p\r\n",audio_buffer);
//	while ((counter < BUFFER_SIZE ) && !XUartPs_IsReceiveData(UART_BASEADDR)){
	while ((counter < BUFFER_SIZE && is_music_streaming == 0)){
		// Read audio input from codec
		in_left = Xil_In32(I2S_DATA_RX_L_REG);
		in_right = Xil_In32(I2S_DATA_RX_R_REG);
		audio_buffer[counter] = in_left;
		audio_buffer[counter+1] = in_right;
//		xil_printf("counter value is: %d\r\n",counter);
//		xil_printf("counter value is: %d\r\n",counter);
		Xil_Out32(I2S_DATA_TX_L_REG,audio_buffer[counter]);
		Xil_Out32(I2S_DATA_TX_R_REG,audio_buffer[counter+1]);
		counter=counter+2;
		usleep(normal_speed); // controls the input sample frequency

	}

	//exit conditons

	// if we finished recording then go back to streaming music
	//1)
	if(counter >= BUFFER_SIZE){
		audio_stream();
	}

	//if the user decides to end recording early via interrupt
	if(is_music_streaming != 0){
		menu();
	}

} // audio_stream()

void audio_play(){
//	u32  out_left, out_right;
	u32 counter1 = 0;

	while ((counter1 < BUFFER_SIZE ) &&  is_music_streaming == 3 ){

			Xil_Out32(I2S_DATA_TX_L_REG,audio_buffer[counter1] );
			Xil_Out32(I2S_DATA_TX_R_REG,audio_buffer[counter1+1] );

		usleep(normal_speed);
		counter1=counter1+2;
		}


	//exit condition

	//1) we have played back 10 second of music
	if(counter1 >= BUFFER_SIZE ){
		xil_printf("ten seconds of playing is done. \r\n");
		menu();
	}
	//2 the user decides to exit in the middle via an interrupt
	if(is_music_streaming != 3 ){
		menu();
	}

}


void audio_speedup(){
	normal_speed= normal_speed - 4;
}

void audio_slowdown(){
	normal_speed= normal_speed + 4;
}

void audio_normal_speed(){
	normal_speed= 20;
}

void audio_raiseVolume(){
	normal_volume = normal_volume+1;
}

void audio_lowerVolume(){
	normal_volume = normal_volume-1;
}


void sine_wave(){

//int f = 1000;// 1kHz
//u32 counter1=0;;
//
//
////// store the sine wave into memory
////	for(int count=0; count<BUFFER_SIZE; count++){
////		double val = 100000*sin(2*3.1415*f*(count%48)/48); // 48 samples which is 1 cycles at 1Khz
////		sine_audio_buffer[count] =  val;
////		sine_audio_buffer[count+1] = val;
////	}
//
//
//
//// play the sine wave
//	while ((counter1 < BUFFER_SIZE) && !XUartPs_IsReceiveData(UART_BASEADDR) ){
//
//		// store the sine wave into memory
//		for(int count=0; count<480; count++){
//			double val = 1000000*sin(2*3.1415*f*count/480); // 48 samples which is 1 cycles at 1Khz
//			sine_audio_buffer[count] =  val;
//		}
//		Xil_Out32(I2S_DATA_TX_L_REG,sine_audio_buffer[counter1%480]);
//		Xil_Out32(I2S_DATA_TX_R_REG,sine_audio_buffer[counter1%480]);
//		usleep(normal_speed); //48 kHz sampling
//		counter1++;
//		}
//
//	if(counter1 >= BUFFER_SIZE ){
//		xil_printf("ten seconds of playing is done. \r\n");
//		menu();
//	}
//
//
//	if(XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET) == 'q') menu();
//		else {
//			sine_wave();
//		}
}
/* ---------------------------------------------------------------------------- *
 * 								gpio_initi()									*
 * ---------------------------------------------------------------------------- *
 * Initialises the GPIO driver for the push buttons and switches.
 * ---------------------------------------------------------------------------- */
unsigned char gpio_init()
{
	int Status;

	Status = XGpio_Initialize(&Gpio, BUTTON_SWITCH_ID);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	XGpio_SetDataDirection(&Gpio, SWITCH_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&Gpio, BUTTON_CHANNEL, 0xFF);

	return XST_SUCCESS;
}

/* ---------------------------------------------------------------------------- *
 * 								nco_initi()									*
 * ---------------------------------------------------------------------------- *
 * Initialises the NCO driver by looking up the configuration in the config
 * table and then initialising it.
 * ---------------------------------------------------------------------------- */
void nco_init(void *InstancePtr){
//	XNco_Config *cfgPtr;
//	int status;

	/* Initialise the NCO driver so that it's ready to use */

	// Look up the configuration in the config table
//	cfgPtr = XNco_LookupConfig(NCO_ID);
//	if (!cfgPtr) {
//		print("ERROR: Lookup of NCO configuration failed.\n\r");
//	}

	// Initialise the NCO driver configuration
//	status = XNco_CfgInitialize(InstancePtr, cfgPtr);
//	if (status != XST_SUCCESS) {
//		print("ERROR: Could not initialise NCO.\n\r");
//	}
}



//generates numbers up to 20 shapes. each shape will have randomized color, position,
void generate_PRNG(XAxiDma myDma){
	u32 status;
	u32 seed[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}; //seed
	int output_location[20]; // output of seed is here. We want to let at most 4 shapes per bin at a time. 4*5 = 20

	//u32* prng_output = (*(volatile unsigned long *)0xFFFF0060;
	int* prng_output_location = prng_output;


	Xil_DCacheFlushRange((u32)seed,20*sizeof(u32));
	status = XAxiDma_SimpleTransfer(&myDma, (u32)output_location, 20*sizeof(u32),XAXIDMA_DEVICE_TO_DMA);
	status = XAxiDma_SimpleTransfer(&myDma, (u32)seed, 20*sizeof(u32),XAXIDMA_DMA_TO_DEVICE);//typecasting in C/C++
	if(status != XST_SUCCESS){
		xil_printf("DMA initialization failed\n");
		return;
	}

	int a,b,c,d;

	// new seeds for the next iteration
	for(int ii =0; ii < 20;ii++){
		seed[ii] = output_location[ii];


		xil_printf(" the rand num generated: %0x \r\n",output_location[ii]);

		a = output_location[ii] % 4; //shapes
		b = output_location[ii] % 5; // location
		c = output_location[ii] % 7; // color
		d = output_location[ii] % 8; // size 1-8
		prng_output_location[4*ii] =  abs(a);
		prng_output_location[4*ii +1] =  abs(b); // later on this could be the output from the FFT ip
		prng_output_location[4*ii +2] =  abs(c);
		prng_output_location[4*ii +3] =  abs(d);

	}

	//4*19+3 = 79
	prng_output_location[4*20 +3] = output_location[4] % 8;// for random bin colors
	prng_output_location[4*20 +4] = output_location[1] % 8;
	prng_output_location[4*20 +5] = output_location[7] % 8;
	prng_output_location[4*20 +6] = output_location[9] % 8;

	// set a flag to indicate... something?

	xil_printf("DMA transfer success..\r\n");
	for(int i=0;i<20;i++){
		xil_printf("The shape param %0x \r\n",prng_output_location[4*i]);
		xil_printf("the bin location param %0x \r\n",prng_output_location[4*i+1]);
		xil_printf("the color param %0x \r\n",prng_output_location[4*i+2]);
		xil_printf("the size param %0x \r\n\r\n",prng_output_location[4*i+3]);
	}


}
