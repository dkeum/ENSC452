
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

//Prototype function----------------------------------------------------
void generate_shape(); // v1
void generate_shape_from_rng(int bin_num, int counter,int background_color, int rotation); // v2
void generate_with_shape_parms(int shape_type, int location, int color, int counter,int background_color, int rotation); //v2

//


int main()
{


	Xil_DCacheDisable();

    //Disable cache on OCM
    // S=b1 TEX=b100 AP=b11, Domain=b1111, C=b0, B=b0
    Xil_SetTlbAttributes(0xFFFF0000,0x14de2);



	Square square;
	Bins bin;
	Circle circle;
	Triangle triangle;
	Pentagon pentagon;
	Sound_effects_name sound_effect;
	Background background;

	// BACKGROUND DETAILS
	background.set_background(background_color);


	// drawing bins but need freq range on them
	bin.draw_Bin(200,20,120,0,(int)0xFF0000FF); //temp value for freq range
	bin.draw_Bin(200,220,320,0,(int)0x00F00F00); //temp value for freq range
	bin.draw_Bin(200,420,520,0,(int)0x0000FFFF); //0 is temp value for freq range
	bin.draw_Bin(200,620,720,0,(int)0x00003000); //temp value for freq range
	bin.draw_Bin(200,820,920,0,(int)0xFFFFFFFF); //temp value for freq range


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
	double rotation_amount = 3.141592653589/18; //(14th first turn,189 second turn)

	while(1){

		// (1) check light pattern mode and other settings (sound effects)
		while(is_light_pattern_changed==1){


			background_color = background.set_background(light_pattern_mode );
			// drawing bins but need freq range on them
			bin.draw_Bin(200,20,120,0,(int)0xFF0000FF); //temp value for freq range
			bin.draw_Bin(200,220,320,0,(int)0x00F00F00); //temp value for freq range
			bin.draw_Bin(200,420,520,0,(int)0x0000FFFF); //0 is temp value for freq range
			bin.draw_Bin(200,620,720,0,(int)0x00003000); //temp value for freq range
			bin.draw_Bin(200,820,920,0,(int)0xFFFFFFFF); //temp value for freq range

			// drawing the appropriate name
			sound_effect.draw_sound_effects_name(1000,200);
			sound_effect.display_light_pattern_mode(light_pattern_mode); // takes input 1-4
			is_light_pattern_changed =0;
		}

		//disable rotation for standard and elongate mode
		if(light_pattern_mode ==1 || light_pattern_mode==4 ){
			rotation = 0;
		}
		// (2) generate shapes
		generate_shape_from_rng(1,counter,background_color,rotation);
		generate_shape_from_rng(2,counter1,background_color,rotation);
		generate_shape_from_rng(3,counter2,background_color,rotation);
		generate_shape_from_rng(4,counter3,background_color,rotation);
		generate_shape_from_rng(5,counter4,background_color,rotation);





		// (3) if the shapes reach the bottom then put the appropriate counters to 0.


		usleep(100000);
		if(counter > 1100){
			counter=0;
		}
		if(counter1 > 1100){
					counter1=0-100;
				}
		if(counter2 > 1100){
					counter2=0-200;
				}
		if(counter3 > 1100){
					counter3=0-300;
				}
		if(counter4 > 1100){
					counter4=0-400;
				}

		// (4) increase all counters
		counter = counter+tempo_speed_change;
		counter1 = counter1+tempo_speed_change;
		counter2 = counter2+tempo_speed_change;
		counter3 = counter3+tempo_speed_change;
		counter4 = counter4+tempo_speed_change;
		rotation=rotation+rotation_amount;

		// (5) if stop playing music then stop everything
		while(is_music_streaming == 2){}


		}

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



// Idea here is that there's 5 buffers corresponding to a bin
// 1) each buffer has 4 limit ( 4 shapes can be present in each bin at a time.
// 2) this code will consume an element from each buffer every 2 of seconds
// 3) if the buffer is empty then do nothing for that bin
// 4) otherwise start dropping a shape for the bin
void generate_shape_from_rng(int bin_num, int counter,int background_color, int rotation){
	// the first 15 elements will be for bin 1, next 15 is bin 2, and so on until bin 5
	int * temp_buffer= prng_output;
	int buffer_index = (bin_num-1); // buffer number goes from 0-4

	//bin 1
	int jj= 0;

	// the program accepts 4 shapes per bin at a time.
	//
	int shape = temp_buffer[3*4*jj  + 3*buffer_index]; // accept values 1-4
	int bin   = temp_buffer[3*4*jj+1+ 3*buffer_index]; // accept valeus of 1-5
	int color = temp_buffer[3*4*jj+2+ 3*buffer_index]; // accept valeus of 1-7


	generate_with_shape_parms(shape, 1, color,counter,background_color,rotation);


	jj= 1;
	//bin 2
	shape = temp_buffer[3*4*jj  + 3*buffer_index]; // accept values 1-4
	bin   = temp_buffer[3*4*jj+1+ 3*buffer_index]; // accept valeus of 1-5
	color = temp_buffer[3*4*jj+2+ 3*buffer_index]; // accept valeus of 1-5


	generate_with_shape_parms(shape, 2, color,counter,background_color,rotation);


	jj= 2;
	//bin 3
	shape = temp_buffer[3*4*jj  + 3*buffer_index]; // accept values 1-4
	bin   = temp_buffer[3*4*jj+1+ 3*buffer_index]; // accept valeus of 1-5
	color = temp_buffer[3*4 *jj+2+ 3*buffer_index]; // accept valeus of 1-5


		generate_with_shape_parms(shape, 3, color,counter,background_color,rotation);



	jj= 3;
	//bin 4
	shape = temp_buffer[3*4*jj  + 3*buffer_index]; // accept values 1-4
	bin   = temp_buffer[3*4*jj+1+ 3*buffer_index]; // accept valeus of 1-5
	color = temp_buffer[3*4*jj+2+ 3*buffer_index]; // accept valeus of 1-5


	generate_with_shape_parms(shape, 4, color,counter,background_color,rotation);


	jj= 4;
	//bin 5
	shape = temp_buffer[3*4*jj  + 3*buffer_index]; // accept values 1-4
	bin   = temp_buffer[3*4*jj+1+ 3*buffer_index]; // accept valeus of 1-5
	color = temp_buffer[3*4*jj+2+ 3*buffer_index]; // accept valeus of 1-5


	generate_with_shape_parms(shape, 5, color,counter,background_color,rotation);

	return;
}

void generate_with_shape_parms(int shape_type, int location, int color, int counter, int background_color, int rotation){

	// take the current audio volume
	int size = audio_volume_change;
	// take the current speed




	int color_array[] = {(int)0xFF0000FF,(int)0x00F00F00,(int)0x0000FFFF,(int)0xFFFFFFFF,(int)0x00003000,(int)0x0330FFFF,(int)0x0550F55F};

	if(shape_type ==1 ){
		//square
		Square square;
//		square.draw_Square(-50, (location-1)*200 +70,size, color_array[color]); // -50 is the starting y coordinate which is off the screen
		square.draw_Square_flexible_version(-100+counter,(location-1)*200 + 70,size, color_array[color], rotation,background_color);
	}
	else if(shape_type ==2){
		//circle
		Circle circle;
//		circle.draw_Circle(-50, (location-1)*200 +70,size, color_array[color]);
//		circle.draw_Circle(-50,(location-1)*200,size,mycolor[my_bin]);
		circle.draw_Circle_flexible_version(-100+counter,((location-1)*200 + 70),size,color_array[color],background_color);
	}
	else if(shape_type ==3){
		//triangle
		Triangle triangle;
		//triangle.draw_Triangle(((location-1)*200 + 70), 100+counter,1,(int)0xFFFFFFFF);
//		triangle.draw_Triangle(((location-1)*200 + 70), -50,size, color_array[color]);
		triangle.draw_Triangle_flexible_version(((location-1)*200 + 70), -100+counter,size,color_array[color],rotation, background_color);
	}
	else{// if(shape_type != 1 || shape_type != 2 || shape_type != 3)
		//pentagon
		Pentagon pentagon;
		//pentagon.draw_Pentagon(((location-1)*200 + 70), 100+counter,1,(int)0xFFFFFFFF, rotation);
//		pentagon.draw_Pentagon(((location-1)*200 + 70), -50,size,color_array[color]);
		pentagon.draw_Pentagon_flexible_version(((location-1)*200 + 70), -100+counter,size,color_array[color], rotation,background_color);
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

