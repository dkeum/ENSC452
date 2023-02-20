
//Empty C++ Application
#include <stdio.h>
#include "xil_types.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"
#include <cstdlib>
#include <pthread.h> //calls its own sleep and usleep functions


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
void generate_shape();
void *generate_shape(void * arg);

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
	bin.draw_Bin(200,220,320,0,(int)0x00F00F00F); //temp value for freq range
	bin.draw_Bin(200,420,520,0,(int)0x0000FFFF); //0 is temp value for freq range
	bin.draw_Bin(200,620,720,0,(int)0x00003000); //temp value for freq range
	bin.draw_Bin(200,820,920,0,(int)0xFFFFFFFF); //temp value for freq range


	// drawing the appropriate name
	sound_effect.draw_sound_effects_name(1000,200);
	sound_effect.display_light_pattern_mode(background_color); // takes input 1-4


	for(int ii= 0;ii<10;ii++){
		generate_shape();
//		sleep(3);
	}

	for(int ii= 0;ii<10;ii++){
		pthread_t ptid;
//		thread th1(generate_shape);
		usleep(3000000);
	}

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
	return 0;
}



void *generate_shape(void * arg){
	// Providing a seed value
//	srand((unsigned) time(NULL));
	int my_rand = rand()%4; // need to change this later
	// Providing a seed value
//	srand((unsigned) time(NULL));
	int my_bin = rand()%5; // need to change this later
	int location = my_bin*200 + 70;
	int size = audio_volume_change;
	int speed = tempo_speed_change;
	int counter =0 ;

while(1){
	if(my_rand == 0){
		Circle circle;
		circle.draw_Circle(100+counter,location,size,0xFF0000FF);
	}
	if(my_rand == 1){
		Square square;
		square.draw_Square(100+counter,location,size,0xFF0000FF);
		}
	if(my_rand == 2){
		Triangle triangle;
		triangle.draw_Triangle(location,100+counter,size,0xFF0000FF);
		}
	if(my_rand == 3){
		Pentagon pentagon;
		pentagon.draw_Pentagon(location,100+counter,size,0xFF0000FF);
		}
	counter = counter + speed;
//	usleep(10000);
	if(counter> 800){
		return (void*)0;
	}
}
}









void generate_shape(){
	// Providing a seed value
//	srand((unsigned) time(NULL));
	int my_rand = rand()%4; // need to change this later
	// Providing a seed value
//	srand((unsigned) time(NULL));
	int my_bin = rand()%5; // need to change this later
	int location = my_bin*200 + 70;
	int size = audio_volume_change;
	int speed = tempo_speed_change;
	int counter =0 ;

while(1){
	if(my_rand == 0){
		Circle circle;
		circle.draw_Circle(100+counter,location,size,0xFF0000FF);
	}
	if(my_rand == 1){
		Square square;
		square.draw_Square(100+counter,location,size,0xFF0000FF);
		}
	if(my_rand == 2){
		Triangle triangle;
		triangle.draw_Triangle(location,100+counter,size,0xFF0000FF);
		}
	if(my_rand == 3){
		Pentagon pentagon;
		pentagon.draw_Pentagon(location,100+counter,size,0xFF0000FF);
		}
	counter = counter + speed;
//	usleep(10000);
	if(counter> 800){
		return;
	}
}


}

