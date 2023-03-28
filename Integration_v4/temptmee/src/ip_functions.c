#include "ip_functions.h"
#include "fft.h"
#include "audio.h"
#include "math.h"
#include "xaxidma.h"

void sample_audio_stream(cplx_data_t * data_buff, int sample_points){
	for(int i = 0; i < sample_points; i++){
		//Read from audio codec
		(data_buff++)->data_re = Xil_In32(I2S_DATA_RX_L_REG);
		(data_buff)->data_im = 0;
		if(((data_buff)->data_re & 0x00800000) == 0x00800000){
			(data_buff)->data_re = 0x00800000 | 0xFF800000; //Sign extend if MSB of audio data is 1
		}
		usleep(20.8); //Sample @ 48 kHz
	}
	return;
}

int detect_freq(cplx_data_t * tx_buff, cplx_data_t * rx_buff, int sample_points, fft_t * fft_inst){
	
	int status = 0;
	int abs_val = 0;
	int freq_bin = 0;
	int vga_bin = 0;
	double freq_detected = 0;
	
	//Collection of sample_points from ADAU1761 Audio Codec for Xilinx FFT
	memset(tx_buff, 0, sample_points*sizeof(cplx_data_t));
	sample_audio_stream(tx_buff, sample_points);
	memset(rx_buff, 0, sample_points*sizeof(cplx_data_t));

	//Send data to FFT
	status = fft(fft_inst, tx_buff, rx_buff);

	if(status != FFT_SUCCESS){
		xil_printf("FFT Failure.\n\r");
		return -1;
	}else{
		//Determine the frequency range detected.
		/*
		512 Points --> 93.75 Hz bins
		Range of interest (0, 2000) Hz
		Bins to find the max amplitude 0 to 22
		*/
		for(int i = 0; i < 22; i++){
			if(abs((rx_buff++)->data_re) > abs_val){
				abs_val = abs((rx_buff)->data_re);
				freq_bin = i;
			}
		}
		//Determine what freq to bin mapping
		freq_detected = (freq_bin)*48000.00/sample_points;
		vga_bin = (int) (freq_detected/400);
		return vga_bin;
	}
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
