
//Empty C++ Application
#include <stdio.h>
#include "xil_types.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"
#include <cstdlib>
//#include <pthread.h> //calls its own sleep and usleep functions


#include "shape_params.h"



#include "xil_mmu.h"
#include "xpseudo_asm.h"
#define sev() __asm__("sev")
#include "main.h"

#define ARM1_STARTADR 0xFFFFFFF0
#define ARM1_BASEADDR  0x10080000






volatile bool TIMER_INTR_FLG;
XScuGic InterruptController; /* Instance of the Interrupt Controller */
//static XScuGic_Config *GicConfig;/* The configuration parameters of thecontroller */
int NUM_BYTES_BUFFER = 5242880;


// Parameter definitions
#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_0_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID 61

#define BTN_INT 			XGPIO_IR_CH1_MASK
#define SWS_INT  			XGPIO_IR_CH2_MASK
XGpio BTNInst;
//static int btn_value;
//static int sws_value;


volatile bool isvertical = true;
volatile bool BTN_FLAG=true;
volatile int background_color=1;
volatile int display_shape=1;

int shape_mode_is_one = 0;

//Prototype function----------------------------------------------------
void generate_shape(); // v1
void generate_shape_from_rng(int bin_num, int counter,int background_color, double rotation,int elongate_on); // v2
void generate_with_shape_parms(int shape_type, int location, int color, int counter,int background_color, double rotation, int elongate_on); //v2
void generate_shape_from_Prng(int bin_num, int counter,int background_color, double rotation,int elongate_mode);
void generate_with_shape_parms_PRNG(int shape_type, int location, int color, int size,int counter,int background_color, double rotation, int elongate_on); //v2


// Global Variables
Square square;
Bins bin1,bin2,bin3,bin4,bin5;
Circle circle;
Triangle triangle;
Pentagon pentagon;
Sound_effects_name sound_effect;
Background background;
int elongate_mode=0;
int isbin1_changed=0;
int isbin2_changed=0;
int isbin3_changed=0;
int isbin4_changed=0;
int isbin5_changed=0;

int bin1_print =0;
int bin2_print =0;
int bin3_print =0;
int bin4_print =0;
int bin5_print =0;

int enter_bin1= 0;
int enter_bin2= 0;
int enter_bin3= 0;
int enter_bin4= 0;
int enter_bin5= 0;

int color_array[] = {(int)0xFF0000FF,(int)0x00F00F00,(int)0x0000FFFF,(int)0xFFFFFFFF,(int)0x00003000,(int)0x0330FFFF,(int)0x0550F55F};

int default_color[]={(int)0xFF0000FF,(int)0x00F00F00,(int)0x0000FFFF,(int)0x00003000,(int)0xFFFFFFFF};
int random_mode_color[5];

int random_size_controler=0;


int main()
{
//	Xil_DCacheDisable();

    //Disable cache on OCM
    // S=b1 TEX=b100 AP=b11, Domain=b1111, C=b0, B=b0
    Xil_SetTlbAttributes(0xFFFF0000,0x14de2);

	// BACKGROUND DETAILS
	background.set_background(background_color);



	//configure the shared variables
	is_music_streaming =1;
	tempo_speed_change=4;
	audio_volume_change=4;
	sound_effect_added = 0;
	light_pattern_mode = 1;
	is_light_pattern_changed = 0;
	reset_bin_counters = 0;
	is_audio_changed=0;


	usleep(100); // wait for PRNG output from the audio code.

	// GET the bin colors from DMA
	// update the bin to different colors based on Random mode is activated or not
	int *pointer_bin_colors=prng_output;

	random_mode_color[0] = color_array[pointer_bin_colors[5*21]];
	random_mode_color[1] = color_array[pointer_bin_colors[5*21+1]];
	random_mode_color[2] = color_array[pointer_bin_colors[5*21+2]];
	random_mode_color[3] = color_array[pointer_bin_colors[5*21+3]];
	random_mode_color[4] = color_array[pointer_bin_colors[5*21+4]];



	// drawing bins but need freq range on them
	bin1.draw_Bin(200,20,120,0,default_color[0]); //temp value for freq range
	bin2.draw_Bin(200,220,320,0,default_color[1]); //temp value for freq range
	bin3.draw_Bin(200,420,520,0,default_color[2]); //0 is temp value for freq range
	bin4.draw_Bin(200,620,720,0,default_color[3]); //temp value for freq range
	bin5.draw_Bin(200,820,920,0,default_color[4]); //temp value for freq range


	// drawing the appropriate name
	sound_effect.draw_sound_effects_name(1000,200);
	sound_effect.display_light_pattern_mode(background_color); // takes input 1-4


	//	for(int ii= 0;ii<10;ii++){
	//		generate_shape();
	//		sleep(3);
	//	}

	double rotation =0;
	int counter =0;
	int counter1 =-100;
	int counter2 =-200;
	int counter3 =-300;
	int counter4 =-400;
	double rotation_amount = 0.2; //(14th first turn,189 second turn)


	// Local variables
	int status = 0;
	fft_t*       p_fft_inst;
	cplx_data_t * rx_buff = malloc(sizeof(cplx_data_t)*FFT_INIT_POINTS);
	cplx_data_t * tx_buff = malloc(sizeof(cplx_data_t)*FFT_INIT_POINTS);
	XAxiDma myDma;
	XAxiDma_Config * myDmaConfig;

	//Configure Audio Codec
	AudioPllConfig();
	LineinLineoutConfig();


	    // Create FFT object
    p_fft_inst = fft_create(
    	XPAR_GPIO_2_DEVICE_ID,
		XPAR_AXIDMA_1_DEVICE_ID,
    	XPAR_PS7_SCUGIC_0_DEVICE_ID,
    	XPAR_FABRIC_AXI_DMA_1_S2MM_INTROUT_INTR,
    	XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR
    );

	    if (p_fft_inst == NULL){
    	xil_printf("ERROR! Failed to create FFT instance.\n\r");
    	return -1;
    }
	int bin = 0;

    //Setting the FFT to FFT_INIT_POINTS points
    fft_set_num_pts(p_fft_inst, FFT_INIT_POINTS);


    if (tx_buff == NULL){
    	xil_printf("ERROR! Failed to allocate memory for the stimulus buffer.\n\r");
    	return -1;
    }

    if (rx_buff == NULL){
    	xil_printf("ERROR! Failed to allocate memory for the result buffer.\n\r");
    	return -1;
    }



	while(1){
			

		bin += detect_freq(tx_buff, rx_buff, FFT_INIT_POINTS, p_fft_inst);
		xil_printf("VGA Bin = %d \r\n", bin/5);
        bin = 0;
		
		// (1) check light pattern mode and other settings (sound effects)
		while(is_light_pattern_changed==1){
			background_color = background.set_background(light_pattern_mode);



			if(light_pattern_mode != 3){
			// drawing bins but need freq range on them
				bin1.draw_Bin(200,20,120,0,default_color[0]); //temp value for freq range
				bin2.draw_Bin(200,220,320,0,default_color[1]); //temp value for freq range
				bin3.draw_Bin(200,420,520,0,default_color[2]); //0 is temp value for freq range
				bin4.draw_Bin(200,620,720,0,default_color[3]); //temp value for freq range
				bin5.draw_Bin(200,820,920,0,default_color[4]); //temp value for freq range
			}
			else{
				bin1.draw_Bin(200,20 ,120,0,random_mode_color[0]); //temp value for freq range
				bin2.draw_Bin(200,220,320,0,random_mode_color[1]); //temp value for freq range
				bin3.draw_Bin(200,420,520,0,random_mode_color[2]); //0 is temp value for freq range
				bin4.draw_Bin(200,620,720,0,random_mode_color[3]); //temp value for freq range
				bin5.draw_Bin(200,820,920,0,random_mode_color[4]); //temp value for freq range
			}
			// drawing the appropriate name
			sound_effect.draw_sound_effects_name(1000,200);
			sound_effect.display_light_pattern_mode(light_pattern_mode); // takes input 1-4
			is_light_pattern_changed =0;
		}

		//disable rotation for standard and elongate mode
		if(light_pattern_mode ==1 || light_pattern_mode==4 ){
			rotation = 0;
			if(light_pattern_mode==4){
				elongate_mode = 1;
			}
		}else{
			elongate_mode = 0;
		}


		// handling random sized shapes for random mode
		if(is_audio_changed ==1 ){
			if(audio_volume_change <= 7){
				random_size_controler++;
			}
			is_audio_changed=0;
		}
		if(is_audio_changed == 2){
			if(audio_volume_change >= 0){
				random_size_controler--;
			}
			is_audio_changed=0;
		}




		// (2) generate shapes
		if(light_pattern_mode == 3){
			Xil_DCacheFlush();
			generate_shape_from_Prng(1,counter,background_color,rotation,elongate_mode);
			Xil_DCacheFlush();
			generate_shape_from_Prng(2,counter1,background_color,rotation,elongate_mode);
			Xil_DCacheFlush();
			generate_shape_from_Prng(3,counter2,background_color,rotation,elongate_mode);
			Xil_DCacheFlush();
			generate_shape_from_Prng(4,counter3,background_color,rotation,elongate_mode);
			Xil_DCacheFlush();
			generate_shape_from_Prng(5,counter4,background_color,rotation,elongate_mode);
			Xil_DCacheFlush();
		}
		else{
			Xil_DCacheFlush();
			generate_shape_from_rng(1,counter,background_color,rotation,elongate_mode);
			Xil_DCacheFlush();
			generate_shape_from_rng(2,counter1,background_color,rotation,elongate_mode);
			Xil_DCacheFlush();
			generate_shape_from_rng(3,counter2,background_color,rotation,elongate_mode);
			Xil_DCacheFlush();
			generate_shape_from_rng(4,counter3,background_color,rotation,elongate_mode);
			Xil_DCacheFlush();
			generate_shape_from_rng(5,counter4,background_color,rotation,elongate_mode);
			Xil_DCacheFlush();
		}



		//bin 1
		if(isbin1_changed ==1 ){
			Xil_DCacheFlush();
			bin1.draw_Bin(200,20,120,0,(int)0xF0FF0FFF); //temp value for freq range

			if(bin1_print == 0){
				if(enter_bin1==0){
					bin1.counter++;
					xil_printf("shape is stored in bin1!\r\n");
					enter_bin1++;
				}
				else{
					bin1.counter++;
					xil_printf("shape is stored! bin1 counter is this: %d\r\n",bin1.counter);
				}
				bin1_print =1;
			}
		}
		else if(isbin1_changed ==0){
			if(light_pattern_mode != 3){
				Xil_DCacheFlush();
				bin1.draw_Bin(200,20,120,0,default_color[0]); //temp value for freq range
			}
			else{
				Xil_DCacheFlush();
				bin1.draw_Bin(200,20,120,0,default_color[rand()%5]); //temp value for freq range
			}
		}

		// bin 2
		if(isbin2_changed ==1 ){
			Xil_DCacheFlush();
			bin2.draw_Bin(200,220,320,0,(int)0xF0FF0FFF); //temp value for freq range
			if(bin2_print == 0){
			if(enter_bin2==0){
				bin2.counter++;
				xil_printf("shape is stored in bin2!\r\n");
				enter_bin2++;
			}
			else{
				bin2.counter++;
				xil_printf("shape is stored! bin2 counter is this: %d\r\n",bin2.counter);
			}
			bin2_print =1;
			}

		}
		else if(isbin2_changed ==0){
			if(light_pattern_mode != 3){
				Xil_DCacheFlush();
				bin2.draw_Bin(200,220,320,0,default_color[1]); //temp value for freq range
			}
			else{
				Xil_DCacheFlush();
				bin2.draw_Bin(200,220,320,0,default_color[rand()%5]);
			}
		}
		// bin 3
		if(isbin3_changed ==1 ){
			Xil_DCacheFlush();
			bin3.draw_Bin(200,420,520,0,(int)0xF0FF0FFF); //temp value for freq range
			if(bin3_print == 0){
			if(enter_bin3==0){
				bin3.counter++;
				xil_printf("shape is stored in bin3!\r\n");
				enter_bin3++;
			}
			else{
				bin3.counter++;
				xil_printf("shape is stored! bin3 counter is this: %d\r\n",bin3.counter);
			}
			}
			bin3_print =1;
		}
		else if(isbin3_changed ==0){
			if(light_pattern_mode != 3){
				Xil_DCacheFlush();
				bin3.draw_Bin(200,420,520,0,default_color[2]); //temp value for freq range
			}
			else{
				Xil_DCacheFlush();
				bin3.draw_Bin(200,420,520,0,default_color[rand()%5]); //temp value for freq range
			}
		}
		// bin4
		if(isbin4_changed ==1 ){
			Xil_DCacheFlush();
			bin4.draw_Bin(200,620,720,0,(int)0xF0FF0FFF); //temp value for freq range
			if(bin4_print == 0){
			if(enter_bin4==0){
				bin4.counter++;
				xil_printf("shape is stored in bin4!\r\n");
				enter_bin4++;
			}
			else{
				bin4.counter++;
				xil_printf("shape is stored! bin4 counter is this: %d\r\n",bin4.counter);
			}
			}

			bin4_print =1;
		}
		else if(isbin4_changed ==0){
			if(light_pattern_mode != 3){
				Xil_DCacheFlush();
				bin4.draw_Bin(200,620,720,0,default_color[3]); //temp value for freq range
			}else{
				Xil_DCacheFlush();
				bin4.draw_Bin(200,620,720,0,default_color[rand()%5]); //temp value for freq range
			}
		}
		if(isbin5_changed ==1 ){
			Xil_DCacheFlush();
			bin5.draw_Bin(200,820,920,0,(int)0xF0FF0FFF); //temp value for freq range
			if(bin5_print == 0){
			if(enter_bin5==0){
				bin5.counter++;
				xil_printf("shape is stored in bin5!\r\n");
				enter_bin5++;
			}
			else{
				bin5.counter++;
				xil_printf("shape is stored! bin5 counter is this: %d\r\n",bin5.counter);
			}
			}

			bin5_print =1;
		}
		else if(isbin5_changed ==0){
			if(light_pattern_mode != 3){
				Xil_DCacheFlush();
				bin5.draw_Bin(200,820,920,0,default_color[4]); //temp value for freq range
			}
			else{
				Xil_DCacheFlush();
				bin5.draw_Bin(200,820,920,0,default_color[rand()%5]); //temp value for freq range
			}
		}

		Xil_DCacheFlush();

		// (3) if the shapes reach the bottom then put the appropriate counters to 0.
		usleep(100000);
//		sleep(1);
		if(counter > 1080){
			counter=0;
			isbin1_changed=0;
			bin1_print =0;
			bin2_print =0;
			bin3_print =0;
			bin4_print =0;
			bin5_print =0;

//			xil_printf("bin1 counter is here: %d \r\n",bin1.counter);
		}
		if(counter1 > 1080){
			counter1=-100;
			isbin2_changed=0;
//			xil_printf("bin2 counter is here: %d \r\n",bin2.counter);
			bin1_print =0;
			bin2_print =0;
			bin3_print =0;
			bin4_print =0;
			bin5_print =0;
		}
		if(counter2 > 1080){
			counter2=-100;
//			xil_printf("bin3 counter is here: %d \r\n",bin3.counter);
			isbin3_changed=0;
//			xil_printf("shape is unstored in bin3: %d \r\n",bin1.counter);
			bin1_print =0;
			bin2_print =0;
			bin3_print =0;
			bin4_print =0;
			bin5_print =0;
		}
		if(counter3 > 1080){
			counter3=-100;
			isbin4_changed=0;
//			xil_printf("bin4 counter is here: %d \r\n",bin4.counter);
//			xil_printf("shape is unstored in bin4: %d \r\n",bin1.counter);
			bin1_print =0;
			bin2_print =0;
			bin3_print =0;
			bin4_print =0;
			bin5_print =0;
		}
		if(counter4 > 1080){
			counter4=-100;

			isbin5_changed=0;
//			xil_printf("bin5 counter is here: %d \r\n",bin5.counter);
//			xil_printf("shape is unstored in bin5: %d \r\n",bin1.counter);
			bin1_print =0;
			bin2_print =0;
			bin3_print =0;
			bin4_print =0;
			bin5_print =0;
		}






		isbin1_changed=0;
		isbin2_changed=0;
		isbin3_changed=0;
		isbin4_changed=0;
		isbin5_changed=0;


		// (4) increase all counters
		counter = counter+tempo_speed_change;
//		if(counter >= 150)
		counter1 = counter1+tempo_speed_change;
//		if(counter1 >= 150)
		counter2 = counter2+tempo_speed_change;
//		if(counter2 >= 150)
		counter3 = counter3+tempo_speed_change;
//		if(counter3 >= 150)
		counter4 = counter4+tempo_speed_change;
		rotation=rotation+rotation_amount;

		// (5) if stop playing music then stop everything
		while(is_music_streaming == 2){}



		//reset bin code
		if( reset_bin_counters == 1){
			bin1.counter =0;
			bin2.counter =0;
			bin3.counter =0;
			bin4.counter =0;
			bin5.counter =0;
			reset_bin_counters = 0;
			shape_mode_is_one++;
			xil_printf("All bins have been reset \r\n");
		}

		}// end of while loop()



	return 0;
}






void generate_shape(){
	// Providing a seed value
	//	srand((unsigned) time(NULL));


		int mycolor[] = {(int)0xFF0000FF,(int)0x00F00F00,(int)0x0000FFFF,(int)0x00003000,(int)0xFFFFFFFF}; //red
		int my_rand = rand()%4; // need to change this later
		// Providing a seed value
	//	srand((unsigned) time(NULL));
		int my_bin = rand()%5; // need to change this later
		int location = my_bin*200 + 70;
		my_bin = rand()%5; // need to change this lat
		int size = audio_volume_change;
		int speed = tempo_speed_change;
		int counter =0 ;

	while(1){
		if(my_rand == 0){
			Circle circle;
			circle.draw_Circle(100+counter,location,size,mycolor[my_bin]);
		}
		if(my_rand == 1){
			Square square;
			square.draw_Square(100+counter,location,size,mycolor[my_bin]);
			}
		if(my_rand == 2){
			Triangle triangle;
			triangle.draw_Triangle(location,100+counter,size,mycolor[my_bin]);
			}
		if(my_rand == 3){
			Pentagon pentagon;
			pentagon.draw_Pentagon(location,100+counter,size,mycolor[my_bin]);
			}
		if(tempo_speed_change != 0 ){
			counter = counter + speed;
		}
		usleep(10000);
		if(counter> 800){
			return;
		}
	}

}




// EVERYONE MODE EXCEPT FOR RANDOM MODE

// Idea here is that there's 5 buffers corresponding to a bin
// 1) each buffer has 4 limit ( 4 shapes can be present in each bin at a time.
// 2) this code will consume an element from each buffer every 2 of seconds
// 3) if the buffer is empty then do nothing for that bin
// 4) otherwise start dropping a shape for the bin
void generate_shape_from_rng(int bin_num, int counter,int background_color, double rotation,int elongate_mode){
	// the first 15 elements will be for bin 1, next 15 is bin 2, and so on until bin 5
	int * temp_buffer= prng_output;
	int buffer_index = (bin_num-1); // buffer number goes from 0-4

	//bin 1
	int jj= 0;

	// the program accepts 4 shapes per bin at a time.
	//
	int shape = temp_buffer[5*4*jj  + 5*buffer_index]; // accept values 1-4
	int bin   = temp_buffer[5*4*jj+1+ 5*buffer_index]; // accept valeus of 1-5
	int color = temp_buffer[5*4*jj+2+ 5*buffer_index]; // accept valeus of 1-7
	int size = temp_buffer[5*4*jj+3+ 5*buffer_index]; // accept valeus of 1-7


	generate_with_shape_parms(shape, 1, color,counter,background_color,rotation,elongate_mode);


	jj= 1;
	//bin 2
	shape = temp_buffer[5*4*jj  + 5*buffer_index]; // accept values 1-4
	bin   = temp_buffer[5*4*jj+1+ 5*buffer_index]; // accept valeus of 1-5
	color = temp_buffer[5*4*jj+2+ 5*buffer_index]; // accept valeus of 1-5
	size = temp_buffer[5*4*jj+3+ 5*buffer_index]; // accept valeus of 1-7


	generate_with_shape_parms(shape, 2, color,counter,background_color,rotation,elongate_mode);


	jj= 2;
	//bin 3
	shape = temp_buffer[5*4*jj  + 5*buffer_index]; // accept values 1-4
	bin   = temp_buffer[5*4*jj+1+ 5*buffer_index]; // accept valeus of 1-5
	color = temp_buffer[5*4 *jj+2+ 5*buffer_index]; // accept valeus of 1-5
	size = temp_buffer[5*4*jj+3+ 5*buffer_index]; // accept valeus of 1-7


	generate_with_shape_parms(shape, 3, color,counter,background_color,rotation,elongate_mode);



	jj= 3;
	//bin 4
	shape = temp_buffer[5*4*jj  + 5*buffer_index]; // accept values 1-4
	bin   = temp_buffer[5*4*jj+1+ 5*buffer_index]; // accept valeus of 1-5
	color = temp_buffer[5*4*jj+2+ 5*buffer_index]; // accept valeus of 1-5
	size = temp_buffer[5*4*jj+3+ 5*buffer_index]; // accept valeus of 1-7


	generate_with_shape_parms(shape, 4, color,counter,background_color,rotation,elongate_mode);


	jj= 4;
	//bin 5
	shape = temp_buffer[5*4*jj  + 5*buffer_index]; // accept values 1-4
	bin   = temp_buffer[5*4*jj+1+ 5*buffer_index]; // accept valeus of 1-5
	color = temp_buffer[5*4*jj+2+ 5*buffer_index]; // accept valeus of 1-5
	size = temp_buffer[5*4*jj+3+ 5*buffer_index]; // accept valeus of 1-7


	generate_with_shape_parms(shape, 5, color,counter,background_color,rotation,elongate_mode);

	return;
}

void generate_with_shape_parms(int shape_type, int location, int color, int counter, int background_color, double rotation,int elongate_mode){

	// take the current audio volume
	int size = audio_volume_change;
	// take the current speed

	if(shape_type ==1 ){
		//square
		Square square;
//		square.draw_Square(-50, (location-1)*200 +70,size, color_array[color]); // -50 is the starting y coordinate which is off the screen
		int rv = square.draw_Square_flexible_version(-100+counter,(location-1)*200 + 70,size, color_array[color], rotation,background_color,elongate_mode);

		if(rv ==1){
			if(location==1){
				isbin1_changed = 1;
			}
			else if(location==2){
				isbin2_changed = 1;
			}
			else if(location==3){
				isbin3_changed = 1;
			}
			else if(location==4){
				isbin4_changed = 1;
			}
			else if(location==5){
				isbin5_changed = 1;
			}
		}
	}
	else if(shape_type ==2){
		//circle
		Circle circle;
//		circle.draw_Circle(-50, (location-1)*200 +70,size, color_array[color]);
//		circle.draw_Circle(-50,(location-1)*200,size,mycolor[my_bin]);
		int rv = circle.draw_Circle_flexible_version(-100+counter,((location-1)*200 + 70),size,color_array[color],background_color,elongate_mode);

		if(rv ==1){
			if(location==1){
				isbin1_changed = 1;
			}
			else if(location==2){
				isbin2_changed = 1;
			}
			else if(location==3){
				isbin3_changed = 1;
			}
			else if(location==4){
				isbin4_changed = 1;
			}
			else if(location==5){
				isbin5_changed = 1;
			}
		}

	}
	else if(shape_type ==3){
		//triangle
		Triangle triangle;
		//triangle.draw_Triangle(((location-1)*200 + 70), 100+counter,1,(int)0xFFFFFFFF);
//		triangle.draw_Triangle(((location-1)*200 + 70), -50,size, color_array[color]);
		int rv =triangle.draw_Triangle_flexible_version(((location-1)*200 + 70), -100+counter,size,color_array[color],rotation, background_color,elongate_mode);
		if(rv ==1){
			if(location==1){
				isbin1_changed = 1;
			}
			else if(location==2){
				isbin2_changed = 1;
			}
			else if(location==3){
				isbin3_changed = 1;
			}
			else if(location==4){
				isbin4_changed = 1;
			}
			else if(location==5){
				isbin5_changed = 1;
			}
		}


	}
	else{// if(shape_type != 1 || shape_type != 2 || shape_type != 3)
		//pentagon
		Pentagon pentagon;
		//pentagon.draw_Pentagon(((location-1)*200 + 70), 100+counter,1,(int)0xFFFFFFFF, rotation);
//		pentagon.draw_Pentagon(((location-1)*200 + 70), -50,size,color_array[color]);
		int rv =pentagon.draw_Pentagon_flexible_version(((location-1)*200 + 70), -100+counter,size,color_array[color], rotation,background_color,elongate_mode);

		if(rv ==1){
			if(location==1){
				isbin1_changed = 1;
			}
			else if(location==2){
				isbin2_changed = 1;
			}
			else if(location==3){
				isbin3_changed = 1;
			}
			else if(location==4){
				isbin4_changed = 1;
			}
			else if(location==5){
				isbin5_changed = 1;
			}
		}

	}
	return;
}



// RANDOM MODE BELOW

void generate_shape_from_Prng(int bin_num, int counter,int background_color, double rotation,int elongate_mode){
	// the first 15 elements will be for bin 1, next 15 is bin 2, and so on until bin 5
		int * temp_buffer= prng_output;
		int buffer_index = (bin_num-1); // buffer number goes from 0-4

		//bin 1
		int jj= 0;

		// the program accepts 4 shapes per bin at a time.
		//
		int shape      = temp_buffer[5*4*jj + 5*buffer_index]; // accept values 1-4


		int bin        = temp_buffer[5*4*jj+1+ 5*buffer_index]; // accept valeus of 1-5
		int color      = temp_buffer[5*4*jj+2+ 5*buffer_index]; // accept valeus of 0-6
		int size	   = temp_buffer[5*4*jj+3+ 5*buffer_index]; // accept valeus of 1-7
		size = size +random_size_controler;
		int isrotating = temp_buffer[5*4*jj+4+ 5*buffer_index]; // accept valeus of 1-7
		color = rand()%7;
		double temp_rotate;
		if(isrotating ==0){
			temp_rotate = 0;
		}else{
			temp_rotate = rotation;
		}



		generate_with_shape_parms_PRNG(shape, 1, color,size,counter,background_color,temp_rotate,elongate_mode);


		jj= 1;
		//bin 2
		shape      = temp_buffer[5*4*jj  + 5*buffer_index]; // accept values 1-4
		bin        = temp_buffer[5*4*jj+1+ 5*buffer_index]; // accept valeus of 1-5
		color      = temp_buffer[5*4*jj+2+ 5*buffer_index]; // accept valeus of 0-6
		size	   = temp_buffer[5*4*jj+3+ 5*buffer_index]; // accept valeus of 1-7
		size = size +random_size_controler;
		isrotating = temp_buffer[5*4*jj+4+ 5*buffer_index]; // accept valeus of 1-7
		color = rand()%7;

			if(isrotating ==0){
				temp_rotate = 0;
			}else{
				temp_rotate = rotation;
		}

		generate_with_shape_parms_PRNG(shape, 2, color,size,counter,background_color,temp_rotate,elongate_mode);


		jj= 2;
		//bin 3
		shape      = temp_buffer[5*4*jj  + 5*buffer_index]; // accept values 1-4
		bin        = temp_buffer[5*4*jj+1+ 5*buffer_index]; // accept valeus of 1-5
		color      = temp_buffer[5*4*jj+2+ 5*buffer_index]; // accept valeus of 0-6
		size	   = temp_buffer[5*4*jj+3+ 5*buffer_index]; // accept valeus of 1-7
		size = size +random_size_controler;

		isrotating = temp_buffer[5*4*jj+4+ 5*buffer_index]; // accept valeus of 1-7
		color = rand()%7;

			if(isrotating ==0){
				temp_rotate = 0;
			}else{
				temp_rotate = rotation;
		}

		generate_with_shape_parms_PRNG(shape, 3, color,size,counter,background_color,temp_rotate,elongate_mode);



		jj= 3;
		//bin 4
		shape      = temp_buffer[5*4*jj  + 5*buffer_index]; // accept values 1-4
		bin        = temp_buffer[5*4*jj+1+ 5*buffer_index]; // accept valeus of 1-5
		color      = temp_buffer[5*4*jj+2+ 5*buffer_index]; // accept valeus of 0-6
		size	   = temp_buffer[5*4*jj+3+ 5*buffer_index]; // accept valeus of 1-7
		size = size +random_size_controler;
		isrotating = temp_buffer[5*4*jj+4+ 5*buffer_index]; // accept valeus of 1-7
		color = rand()%7;

		if(isrotating ==0){
			temp_rotate = 0;
		}else{
			temp_rotate = rotation;
		}



		generate_with_shape_parms_PRNG(shape, 4, color,size,counter,background_color,temp_rotate,elongate_mode);


		jj= 4;
		//bin 5
		shape = temp_buffer[5*4*jj  + 5*buffer_index]; // accept values 1-4
		bin   = temp_buffer[5*4*jj+1+ 5*buffer_index]; // accept valeus of 1-5
		color = temp_buffer[5*4*jj+2+ 5*buffer_index]; // accept valeus of 1-5
		size  = temp_buffer[5*4*jj+3+ 5*buffer_index]; // accept valeus of 1-7
		size = size +random_size_controler;

		isrotating = temp_buffer[5*4*jj+4+ 5*buffer_index]; // accept valeus of 1-7
		color = rand()%7;
		if(isrotating ==0){
				temp_rotate = 0;
		}else{
			temp_rotate = rotation;
		}


		generate_with_shape_parms_PRNG(shape, 5, color,size,counter,background_color,temp_rotate,elongate_mode);

		return;
}


void generate_with_shape_parms_PRNG(int shape_type, int location, int color, int size,int counter,int background_color, double rotation, int elongate_on){

	if(shape_type ==1){
		//square
		Square square;
//		square.draw_Square(-50, (location-1)*200 +70,size, color_array[color]); // -50 is the starting y coordinate which is off the screen
		int rv = square.draw_Square_flexible_version(-100+counter,(location-1)*200 + 70,size, color_array[color], rotation,background_color,elongate_mode);

		if(rv ==1){
			if(location==1){
				isbin1_changed = 1;
			}
			else if(location==2){
				isbin2_changed = 1;
			}
			else if(location==3){
				isbin3_changed = 1;
			}
			else if(location==4){
				isbin4_changed = 1;
			}
			else if(location==5){
				isbin5_changed = 1;
			}
		}
	}
	else if(shape_type ==2){
		//circle
		Circle circle;
//		circle.draw_Circle(-50, (location-1)*200 +70,size, color_array[color]);
//		circle.draw_Circle(-50,(location-1)*200,size,mycolor[my_bin]);
		int rv = circle.draw_Circle_flexible_version(-100+counter,((location-1)*200 + 70),size,color_array[color],background_color,elongate_mode);

		if(rv ==1){
			if(location==1){
				isbin1_changed = 1;
			}
			else if(location==2){
				isbin2_changed = 1;
			}
			else if(location==3){
				isbin3_changed = 1;
			}
			else if(location==4){
				isbin4_changed = 1;
			}
			else if(location==5){
				isbin5_changed = 1;
			}
		}

	}
	else if(shape_type ==3){
		//triangle
		Triangle triangle;
		//triangle.draw_Triangle(((location-1)*200 + 70), 100+counter,1,(int)0xFFFFFFFF);
//		triangle.draw_Triangle(((location-1)*200 + 70), -50,size, color_array[color]);
		int rv =triangle.draw_Triangle_flexible_version(((location-1)*200 + 70), -100+counter,size,color_array[color],rotation, background_color,elongate_mode);
		if(rv ==1){
			if(location==1){
				isbin1_changed = 1;
			}
			else if(location==2){
				isbin2_changed = 1;
			}
			else if(location==3){
				isbin3_changed = 1;
			}
			else if(location==4){
				isbin4_changed = 1;
			}
			else if(location==5){
				isbin5_changed = 1;
			}
		}


	}
	else if(shape_type ==4){// if(shape_type != 1 || shape_type != 2 || shape_type != 3)
		//pentagon
		Pentagon pentagon;
		//pentagon.draw_Pentagon(((location-1)*200 + 70), 100+counter,1,(int)0xFFFFFFFF, rotation);
//		pentagon.draw_Pentagon(((location-1)*200 + 70), -50,size,color_array[color]);
		int rv =pentagon.draw_Pentagon_flexible_version(((location-1)*200 + 70), -100+counter,size,color_array[color], rotation,background_color,elongate_mode);

		if(rv ==1){
			if(location==1){
				isbin1_changed = 1;
			}
			else if(location==2){
				isbin2_changed = 1;
			}
			else if(location==3){
				isbin3_changed = 1;
			}
			else if(location==4){
				isbin4_changed = 1;
			}
			else if(location==5){
				isbin5_changed = 1;
			}
		}

	}


	return;

}















// Useful commented code part 1


//	int counterr = 0;
//	while(1){
//
//		sleep(1);

//		circle.draw_Circle(100+counterr,100,1,0xFF0000FF);
//		circle.draw_Circle(100+counterr,200,2,0xFF0000FF);
//		circle.draw_Circle(100+counterr,300,3,0xFF0000FF);
//		circle.draw_Circle(100+counterr,400,4,0xFF0000FF);
//		circle.draw_Circle(100+counterr,500,5,0xFF0000FF);
//		circle.draw_Circle(100+counterr,600,6,0xFF0000FF);
//		circle.draw_Circle(100+counterr,700,7,0xFF0000FF);
//		circle.draw_Circle(100+counterr,800,8,0xFF0000FF);
//
//		square.draw_Square(200+counterr,100,1,(int)0xFF0000FF);
//		square.draw_Square(200+counterr,200,2,(int)0xFF0000FF);
//		square.draw_Square(200+counterr,300,3,(int)0xFF0000FF);
//		square.draw_Square(200+counterr,400,4,(int)0xFF0000FF);
//		square.draw_Square(200+counterr,500,5,(int)0xFF0000FF);
//		square.draw_Square(200+counterr,600,6,(int)0xFF0000FF);
//		square.draw_Square(200+counterr,700,7,(int)0xFF0000FF);
//		square.draw_Square(200+counterr,800,8,(int)0xFF0000FF);
//
//
//		triangle.draw_Triangle(100, 300+counterr,1, (int)0xFFFFFFFF);
//		triangle.draw_Triangle(200, 300+counterr,2, (int)0xFFFFFFFF);
//		triangle.draw_Triangle(300, 300+counterr,3, (int)0xFFFFFFFF);
//		triangle.draw_Triangle(400, 300+counterr,4, (int)0xFFFFFFFF);
//		triangle.draw_Triangle(500, 300+counterr,5, (int)0xFFFFFFFF);
//		triangle.draw_Triangle(600, 300+counterr,6, (int)0xFFFFFFFF);
//		triangle.draw_Triangle(700, 300+counterr,7, (int)0xFFFFFFFF);
//		triangle.draw_Triangle(800, 300+counterr,8, (int)0xFFFFFFFF);


//
//		pentagon.draw_Pentagon(100, 100+counterr,1, (int)0xFFFFFFFF);
//		pentagon.draw_Pentagon(200, 100+counterr,2, (int)0xFFFFFFFF);
//		pentagon.draw_Pentagon(300, 100+counterr,3, (int)0xFFFFFFFF);
//		pentagon.draw_Pentagon(400, 100+counterr,4, (int)0xFFFFFFFF);
//		pentagon.draw_Pentagon(500, 100+counterr,5, (int)0xFFFFFFFF);
//		pentagon.draw_Pentagon(600, 100+counterr,6, (int)0xFFFFFFFF);
//		pentagon.draw_Pentagon(700, 100+counterr,7, (int)0xFFFFFFFF);
//		pentagon.draw_Pentagon(800, 100+counterr,8, (int)0xFFFFFFFF);



//		pentagon.draw_Pentagon(750, 100+counterr, (int)0xFFFFFFFF);
//		counterr=counterr+tempo_volume_change;
//		if (counterr > 700) counterr= 0;



//		while(BTN_FLAG==false){
//			if(display_shape==1){
//				square.draw_Square(0+counterr,100,220,280,(int)0x00000FFFF);
////				square.draw_Square(0+counterr,100+counterr,220,280,(int)0x00000FFFF); // edit first two params for y coordinates and 3,4th param for x coordinates
//			}
//			if(display_shape==2){
//				circle.draw_Circle(500,400,30,0xFF0000FF);
////			circle.draw_Circle(500+counterr,400,30,0xFF0000FF);
//			}
//
//			if(display_shape==3){
//				triangle.draw_Triangle(450, 0, (int)0xFFFFFFFF); //1000
////				triangle.draw_Triangle(450, 0+counterr, (int)0xFFFFFFFF); //1000
//			}
//
//			if(display_shape==4){
//				pentagon.draw_Pentagon(750, 100, (int)0xFFFFFFFF);
////				pentagon.draw_Pentagon(750, 100+counterr, (int)0xFFFFFFFF);
//			}
////
//			sleep(0.5);
//			counterr=counterr+7;
////
//			if (counterr > 924) counterr= 0;
//			if(isvertical){
//				counterr=0;
//			}
//		}

//		background.set_background(background_color);
//		bin.draw_Bin(200,200,300,0,(int)0xFF0000FF); //temp value for freq range
//		bin.draw_Bin(200,400,500,0,(int)0x00F00F00F); //temp value for freq range
//		bin.draw_Bin(200,600,700,0,(int)0x0000FFFF); //0 is temp value for freq range
//		bin.draw_Bin(200,800,900,0,(int)0x00003000); //temp value for freq range
//		bin.draw_Bin(200,1000,1100,0,(int)0xFFFFFFFF); //temp value for freq range
//		sound_effect.draw_sound_effects_name(1000,200);
//		sound_effect.display_light_pattern_mode(background_color); // takes input 1-4
//
//		BTN_FLAG=false;
//	}



// Useful commented code part 2

//		square.draw_Square_flexible_version(400+counter,(0*200 + 70),1,(int)0x00003000, rotation,0x00000000);
//		square.draw_Square_flexible_version(400+counter,(1*200 + 70),2,(int)0x00003000, rotation,0x00000000);
//		square.draw_Square_flexible_version(400+counter,(2*200 + 70),6,(int)0x00003000, rotation,0x00000000);
//		square.draw_Square_flexible_version(400+counter,(3*200 + 70),7,(int)0x00003000, rotation,0x00000000);
//		square.draw_Square_flexible_version(400+counter,(4*200 + 70),8,(int)0xFFFFFFFF, rotation,0x00000000);
//
//		circle.draw_Circle_flexible_version(300+counter,(0*200 + 70),1,(int)0xFFFFFFFF,0x00000000);
//		circle.draw_Circle_flexible_version(300+counter,(1*200 + 70),2,(int)0xFFFFFFFF,0x00000000);
//		circle.draw_Circle_flexible_version(300+counter,(2*200 + 70),6,(int)0xFFFFFFFF,0x00000000);
//		circle.draw_Circle_flexible_version(300+counter,(3*200 + 70),7,(int)0xFFFFFFFF,0x00000000);
//		circle.draw_Circle_flexible_version(300+counter,(4*200 + 70),8,(int)0xFFFFFFFF,0x00000000);
//
//
//		triangle.draw_Triangle_flexible_version((0*200 + 70), 200+counter,1,(int)0xFFFFFFFF, rotation,0x00000000);
//		triangle.draw_Triangle_flexible_version((1*200 + 70), 200+counter,2,(int)0xFFFFFFFF, rotation,0x00000000);
//		triangle.draw_Triangle_flexible_version((2*200 + 70), 200+counter,6,(int)0xFFFFFFFF, rotation,0x00000000);
//		triangle.draw_Triangle_flexible_version((3*200 + 70), 200+counter,7,(int)0xFFFFFFFF, rotation,0x00000000);
//		triangle.draw_Triangle_flexible_version((4*200 + 70), 200+counter,8,(int)0xFFFFFFFF, rotation,0x00000000);
//
//		pentagon.draw_Pentagon_flexible_version((0*200 + 70), 100+counter,1,(int)0xFFFFFFFF, rotation,0x00000000);
//		pentagon.draw_Pentagon_flexible_version((1*200 + 70), 100+counter,2,(int)0xFFFFFFFF, rotation,0x00000000);
//		pentagon.draw_Pentagon_flexible_version((2*200 + 70), 100+counter,6,(int)0xFFFFFFFF, rotation,0x00000000);
//		pentagon.draw_Pentagon_flexible_version((3*200 + 70), 100+counter,7,(int)0xFFFFFFFF, rotation,0x00000000);
//		pentagon.draw_Pentagon_flexible_version((4*200 + 70), 100+counter,8,(int)0xFFFFFFFF, rotation,0x00000000);
