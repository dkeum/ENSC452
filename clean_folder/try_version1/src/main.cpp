#include "main.hpp"

#include "xil_mmu.h"
#include "xpseudo_asm.h"
#include "xtime_l.h"
#include "xil_types.h"
#include "shape_params.hpp"
#include "dma_accel.hpp"
#include <xgpio.h>
#include <xscugic.h>

#include <xparameters.h>




int NUM_BYTES_BUFFER = 5242880;

volatile bool isvertical = true;
volatile bool BTN_FLAG= true;
volatile int background_color=1;
volatile int display_shape=1;

int shape_mode_is_one = 0;

//Prototype function----------------------------------------------------
void generate_shape(); // v1
void generate_shape_from_rng(int bin_num, int counter,int background_color, double rotation,int elongate_on); // v2
void generate_with_shape_parms(int shape_type, int location, int color, int counter,int background_color, double rotation, int elongate_on); //v2
void generate_shape_from_Prng(int bin_num, int counter,int background_color, double rotation,int elongate_mode);
void generate_with_shape_parms_PRNG(int shape_type, int location, int color, int size,int counter,int background_color, double rotation, int elongate_on); //v2
void generate_param_for_row(int*bins_covered, int bin_number);

void Global_Interrupt_Handler(void *InstancePtr);
int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);


#include <xparameters.h>
#include <xil_types.h>

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


enum AUDIO_STREAM_STATUS {OFF, ON};

//Global variable to determine the system state
//unsigned int AUDIO_STATE;
//unsigned int INTR_CH;
//unsigned int AUDIO_BUFF_SIZE;


//Interrupt Handlers (Prototype Functions)
void change_amplitude(unsigned int OP_CODE);
void change_tone(unsigned int OP_CODE);
void record_audio(unsigned int OP_CODE);
void playback_audio(unsigned int OP_CODE);
void add_soundfx(unsigned int OP_CODE);
void start_stop_audio(unsigned int OP_CODE);
void light_fx(u8 OP_CODE);
void sig_detect_fx(u8 OP_CODE);

//Canvas Drawing Operations
void draw_static_canvas();
// Audio Interface --> Will becomes main interrupt handler
void audio_interface(unsigned int operation, unsigned int interrupt_ch);
//State System
void change_sys_state(unsigned int curr_state, unsigned int new_state);



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


static int btn_value;
static int switch_value;

XScuGic INTCInst;
XIicPs Iic; //I2C Interface
XGpio btn_swt_gpio; // GPIO instance for buttons and switches



#include "xil_mmu.h"
#include "xpseudo_asm.h"
#define sev() __asm__("sev")
#define ARM1_STARTADR 0xFFFFFFF0
#define ARM1_BASEADDR  0x10080000



fft_t*       p_fft_inst;
cplx_data_t * rx_buff = (cplx_data_t *)malloc(sizeof(cplx_data_t)*FFT_INIT_POINTS);
cplx_data_t * tx_buff = (cplx_data_t *)malloc(sizeof(cplx_data_t)*FFT_INIT_POINTS);
XAxiDma myDma;
XAxiDma_Config * myDmaConfig;


int bin_num1[6] = {0};
int bin_num2[6] = {0};
int bin_num3[6] = {0};
int bin_num4[6] = {0};
int bin_num5[6] = {0};


//Main Program Entry Point
int main(void)
{


	  Xil_SetTlbAttributes(0xFFFF0000,0x14de2);

	   xil_printf("ARM0: writing startaddress for ARM1\n\r");
	   Xil_Out32(ARM1_STARTADR, ARM1_BASEADDR);
	   dmb(); //waits until write has finished

	   xil_printf("ARM0: sending the SEV to wake up ARM1\n\r");
	   sev();


//	Xil_SetTlbAttributes(0xFFFF0000,0x14de2);
	// Local variables
	int status = 0;

	//Setting initial shared variables settings
	*AMP_VAL_ADDR = 0xE6; //0 Gain
	*BIN_DETECTED_ADDR = 0x00; // 0th Bin
	*TONE_SCALE_ADDR = 0x01; //48kHz
	*AUDIO_STREAM_MODE_ADDR = 0x1; //On
	*SIG_DETECT = 0x00; //0Hz for inital freq detected


    //Configure Audio Codec
	AudioPllConfig();
	LineinLineoutConfig();


	//Configure DMA for RNG
    myDmaConfig = XAxiDma_LookupConfigBaseAddr(XPAR_RAND_SYS_AXI_DMA_0_BASEADDR);
    status = XAxiDma_CfgInitialize(&myDma, myDmaConfig);


    // Create FFT object
    p_fft_inst = fft_create(
    	XPAR_SYS_CNTRL_AXI_GPIO_0_DEVICE_ID,
		XPAR_SYS_CNTRL_AXI_DMA_0_DEVICE_ID,
    	XPAR_PS7_SCUGIC_0_DEVICE_ID,
		XPAR_FABRIC_SYS_CNTRL_AXI_DMA_0_S2MM_INTROUT_INTR,
		XPAR_FABRIC_SYS_CNTRL_AXI_DMA_0_MM2S_INTROUT_INTR
    );

    if (p_fft_inst == NULL){
    	xil_printf("ERROR! Failed to create FFT instance.\n\r");
    	return -1;
    }

//    //Configure Switch and Button GPIO
	if(XGpio_Initialize(&btn_swt_gpio, XPAR_GPIO_1_DEVICE_ID) != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	XGpio_SetDataDirection(&btn_swt_gpio, SWITCH_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&btn_swt_gpio, BUTTON_CHANNEL, 0xFF);

	XGpio_InterruptEnable(&btn_swt_gpio, 0x01);
	XGpio_InterruptEnable(&btn_swt_gpio, 0x02);
	XGpio_InterruptGlobalEnable(&btn_swt_gpio);


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
    XTime tStart,tEnd;
    XTime_GetTime(&tStart);
    unsigned long long int tempTime;
    int bin = 0;
//    int * temp_arr = (int*)malloc(sizeof(int)*5242880);




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


	// GET the bin colors from DMA
	// update the bin to different colors based on Random mode is activated or not
	int *pointer_bin_colors=prng_output;

	random_mode_color[0] = color_array[pointer_bin_colors[5*21]];
	random_mode_color[1] = color_array[pointer_bin_colors[5*21+1]];
	random_mode_color[2] = color_array[pointer_bin_colors[5*21+2]];
	random_mode_color[3] = color_array[pointer_bin_colors[5*21+3]];
	random_mode_color[4] = color_array[pointer_bin_colors[5*21+4]];



	// drawing bins but need freq range on them
	Xil_DCacheFlush();
	bin1.draw_Bin(200,20,120,0,default_color[0]); //temp value for freq range
	Xil_DCacheFlush();
	bin2.draw_Bin(200,220,320,0,default_color[1]); //temp value for freq range
	Xil_DCacheFlush();
	bin3.draw_Bin(200,420,520,0,default_color[2]); //0 is temp value for freq range
	Xil_DCacheFlush();
	bin4.draw_Bin(200,620,720,0,default_color[3]); //temp value for freq range
	Xil_DCacheFlush();
	bin5.draw_Bin(200,820,920,0,default_color[4]); //temp value for freq range
	Xil_DCacheFlush();
	background.label_bins();
	Xil_DCacheFlush();


	// drawing the appropriate name
	Xil_DCacheFlush();
	sound_effect.draw_sound_effects_name(1000,200);
	Xil_DCacheFlush();
	sound_effect.display_light_pattern_mode(background_color); // takes input 1-4
	Xil_DCacheFlush();


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











    // Main event loop


    xil_printf("ENTER WHILE LOOP\n\r");
    while (1){

//    	 xil_printf("IN HERE \n\r");
    	XTime_GetTime(&tEnd);
    	tempTime = (2*(tEnd-tStart))%300;
    	for(int i = 0; i < 5; i++){
    		bin += detect_freq(tx_buff, rx_buff, FFT_INIT_POINTS, p_fft_inst);
    	}
        xil_printf("VGA Bin = %d \r\n", bin/5);
        generate_PRNG(&myDma, tempTime, bin/5);
        bin = 0;


    	    if(counter <=1){
    			generate_param_for_row(bin_num1,0);
    		}
    		if(counter1<=-10){
    			generate_param_for_row(bin_num2,1);
    		}
    		if(counter2<=-10){
    			generate_param_for_row(bin_num3,2);
    		}
    		if(counter3<=-10){
    			generate_param_for_row(bin_num4,3);
    		}
    		if(counter4 <=-10){
    			generate_param_for_row(bin_num5,4);
    	}

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
        			background.label_bins();
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
        			counter1= counter-100;
        			isbin2_changed=0;
        //			xil_printf("bin2 counter is here: %d \r\n",bin2.counter);
        			bin1_print =0;
        			bin2_print =0;
        			bin3_print =0;
        			bin4_print =0;
        			bin5_print =0;
        		}
        		if(counter2 > 1080){
        			counter2= counter1-100;
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
        			counter3= counter2-100;
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
        			counter4= counter3-100;

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







    }


    free(tx_buff);
    free(tx_buff);
    fft_destroy(p_fft_inst);

    return 0;

}



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
		*AUDIO_STREAM_MODE_ADDR = OFF;
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
		*AUDIO_STREAM_MODE_ADDR = ON;
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







































// Defines
#define RESET_TIMEOUT_COUNTER 10000

// Private global variables
static int g_s2mm_done = 0;
static int g_mm2s_done = 0;
static int g_dma_err   = 0;

// Private data
typedef struct dma_accel_periphs
{
	XAxiDma dma_inst;
	XScuGic intc_inst;
} dma_accel_periphs_t;

// Object definition
typedef struct dma_accel
{
	dma_accel_periphs_t periphs;
	void*               p_stim_buf;
	void*               p_result_buf;
	int                 buf_length;
	double                 sample_size_bytes;
} dma_accel_t;

// Private functions
static void s2mm_isr(void* CallbackRef)
{

	// Local variables
	int      irq_status;
	int      time_out;
	XAxiDma* p_dma_inst = (XAxiDma*)CallbackRef;

	// Disable interrupts
	XAxiDma_IntrDisable(p_dma_inst, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrDisable(p_dma_inst, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

	// Read pending interrupts
	irq_status = XAxiDma_IntrGetIrq(p_dma_inst, XAXIDMA_DEVICE_TO_DMA);

	// Acknowledge pending interrupts
	XAxiDma_IntrAckIrq(p_dma_inst, irq_status, XAXIDMA_DEVICE_TO_DMA);

	// If no interrupt is asserted, we do not do anything
	if (!(irq_status & XAXIDMA_IRQ_ALL_MASK))
		return;

	// If error interrupt is asserted, raise error flag, reset the
	// hardware to recover from the error, and return with no further
	// processing.
	if ((irq_status & XAXIDMA_IRQ_ERROR_MASK))
	{

		g_dma_err = 1;

		// Reset should never fail for transmit channel
		XAxiDma_Reset(p_dma_inst);

		time_out = RESET_TIMEOUT_COUNTER;
		while (time_out)
		{
			if (XAxiDma_ResetIsDone(p_dma_inst))
				break;

			time_out -= 1;
		}

		return;
	}

	// Completion interrupt asserted
	if (irq_status & XAXIDMA_IRQ_IOC_MASK)
		g_s2mm_done = 1;

	// Re-enable interrupts
	XAxiDma_IntrEnable(p_dma_inst, (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK), XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrEnable(p_dma_inst, (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK), XAXIDMA_DEVICE_TO_DMA);

}

static void mm2s_isr(void* CallbackRef)
{

	// Local variables
	int      irq_status;
	int      time_out;
	XAxiDma* p_dma_inst = (XAxiDma*)CallbackRef;

	// Disable interrupts
	XAxiDma_IntrDisable(p_dma_inst, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrDisable(p_dma_inst, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

	// Read pending interrupts
	irq_status = XAxiDma_IntrGetIrq(p_dma_inst, XAXIDMA_DMA_TO_DEVICE);

	// Acknowledge pending interrupts
	XAxiDma_IntrAckIrq(p_dma_inst, irq_status, XAXIDMA_DMA_TO_DEVICE);

	// If no interrupt is asserted, we do not do anything
	if (!(irq_status & XAXIDMA_IRQ_ALL_MASK))
		return;

	// If error interrupt is asserted, raise error flag, reset the
	// hardware to recover from the error, and return with no further
	// processing.
	if (irq_status & XAXIDMA_IRQ_ERROR_MASK)
	{

		g_dma_err = 1;

		// Reset could fail and hang
		XAxiDma_Reset(p_dma_inst);

		time_out = RESET_TIMEOUT_COUNTER;

		while (time_out)
		{
			if (XAxiDma_ResetIsDone(p_dma_inst))
				break;

			time_out -= 1;
		}

		return;
	}

	// If completion interrupt is asserted, then set RxDone flag
	if (irq_status & XAXIDMA_IRQ_IOC_MASK)
		g_mm2s_done = 1;

	// Re-enable interrupts
	XAxiDma_IntrEnable(p_dma_inst, (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK), XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrEnable(p_dma_inst, (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK), XAXIDMA_DEVICE_TO_DMA);

}

static int init_intc(XScuGic* p_intc_inst, int intc_device_id, XAxiDma* p_dma_inst, int s2mm_intr_id, int mm2s_intr_id)
{

	// Local variables
	int             status = 0;
	XScuGic_Config* cfg_ptr;

	// Look up hardware configuration for device
	cfg_ptr = XScuGic_LookupConfig(intc_device_id);
	if (!cfg_ptr)
	{
		xil_printf("ERROR! No hardware configuration found for Interrupt Controller with device id %d.\r\n", intc_device_id);
		return DMA_ACCEL_INTC_INIT_FAIL;
	}

	// Initialize driver
	status = XScuGic_CfgInitialize(p_intc_inst, cfg_ptr, cfg_ptr->CpuBaseAddress);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Initialization of Interrupt Controller failed with %d.\r\n", status);
		return DMA_ACCEL_INTC_INIT_FAIL;
	}

	// Set interrupt priorities and trigger type
	XScuGic_SetPriorityTriggerType(p_intc_inst, s2mm_intr_id, 0xA0, 0x3);
	XScuGic_SetPriorityTriggerType(p_intc_inst, mm2s_intr_id, 0xA8, 0x3);
	XScuGic_SetPriorityTriggerType(p_intc_inst, XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR, 0xF8, 0x3);

	// Connect handlers
	status = XScuGic_Connect(p_intc_inst, s2mm_intr_id, (Xil_InterruptHandler)s2mm_isr, p_dma_inst);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to connect s2mm_isr to the interrupt controller.\r\n", status);
		return DMA_ACCEL_INTC_INIT_FAIL;
	}
	status = XScuGic_Connect(p_intc_inst, mm2s_intr_id, (Xil_InterruptHandler)mm2s_isr, p_dma_inst);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to connect mm2s_isr to the interrupt controller.\r\n", status);
		return DMA_ACCEL_INTC_INIT_FAIL;
	}

	status = XScuGic_Connect(p_intc_inst, XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR, (Xil_InterruptHandler)Global_Interrupt_Handler, &btn_swt_gpio);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to connect mm2s_isr to the interrupt controller.\r\n", status);
		return DMA_ACCEL_INTC_INIT_FAIL;
	}

	// Enable all interrupts
	XScuGic_Enable(p_intc_inst, s2mm_intr_id);
	XScuGic_Enable(p_intc_inst, mm2s_intr_id);
	XScuGic_Enable(p_intc_inst, XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR);

	// Initialize exception table and register the interrupt controller handler with exception table
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, p_intc_inst);

	// Enable non-critical exceptions
	Xil_ExceptionEnable();

	return DMA_ACCEL_SUCCESS;

}

static int init_dma(XAxiDma* p_dma_inst, int dma_device_id)
{

	// Local variables
	int             status = 0;
	XAxiDma_Config* cfg_ptr;

	// Look up hardware configuration for device
	cfg_ptr = XAxiDma_LookupConfig(dma_device_id);
	if (!cfg_ptr)
	{
		xil_printf("ERROR! No hardware configuration found for AXI DMA with device id %d.\r\n", dma_device_id);
		return DMA_ACCEL_DMA_INIT_FAIL;
	}

	// Initialize driver
	status = XAxiDma_CfgInitialize(p_dma_inst, cfg_ptr);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Initialization of AXI DMA failed with %d\r\n", status);
		return DMA_ACCEL_DMA_INIT_FAIL;
	}

	// Test for Scatter Gather
	if (XAxiDma_HasSg(p_dma_inst))
	{
		xil_printf("ERROR! Device configured as SG mode.\r\n");
		return DMA_ACCEL_DMA_INIT_FAIL;
	}

	// Reset DMA
	XAxiDma_Reset(p_dma_inst);
	while (!XAxiDma_ResetIsDone(p_dma_inst)) {}

	// Enable DMA interrupts
	XAxiDma_IntrEnable(p_dma_inst, (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK), XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrEnable(p_dma_inst, (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK), XAXIDMA_DEVICE_TO_DMA);

	return DMA_ACCEL_SUCCESS;

}

// Public functions
dma_accel_t* dma_accel_create(int dma_device_id, int intc_device_id, int s2mm_intr_id,
		                      int mm2s_intr_id, int sample_size_bytes)
{

	// Local variables
	dma_accel_t* p_obj;
	int          status;

	// Allocate memory for DMA Accelerator object
	p_obj = (dma_accel_t*) malloc(sizeof(dma_accel_t));
	if (p_obj == NULL)
	{
		xil_printf("ERROR! Failed to allocate memory for DMA Accelerator object.\n\r");
		return NULL;
	}

	// Register and initialize peripherals
	status = init_dma(&p_obj->periphs.dma_inst, dma_device_id);
	if (status != DMA_ACCEL_SUCCESS)
	{
		xil_printf("ERROR! Failed to initialize AXI DMA.\n\r");
		dma_accel_destroy(p_obj);
		return NULL;
	}

	status = init_intc
	(
		&p_obj->periphs.intc_inst,
		intc_device_id,
		&p_obj->periphs.dma_inst,
		s2mm_intr_id,
		mm2s_intr_id
	);
	if (status != DMA_ACCEL_SUCCESS)
	{
		xil_printf("ERROR! Failed to initialize Interrupt controller.\n\r");
		dma_accel_destroy(p_obj);
		return NULL;
	}

	// Initialize buffer pointers
	dma_accel_set_stim_buf(p_obj, NULL);
	dma_accel_set_result_buf(p_obj, NULL);

	// Initialize buffer length
	dma_accel_set_buf_length(p_obj, 1024);

	// Initialize sample size
	dma_accel_set_sample_size_bytes(p_obj, sample_size_bytes);

	return p_obj;

}

void dma_accel_destroy(dma_accel_t* p_dma_accel_inst)
{
	free(p_dma_accel_inst);
}

void dma_accel_set_stim_buf(dma_accel_t* p_dma_accel_inst, void* p_stim_buf)
{
	p_dma_accel_inst->p_stim_buf = p_stim_buf;
}

void* dma_accel_get_stim_buf(dma_accel_t* p_dma_accel_inst)
{
	return (p_dma_accel_inst->p_stim_buf);
}

void dma_accel_set_result_buf(dma_accel_t* p_dma_accel_inst, void* p_result_buf)
{
	p_dma_accel_inst->p_result_buf = p_result_buf;
}

void* dma_accel_get_result_buf(dma_accel_t* p_dma_accel_inst)
{
	return (p_dma_accel_inst->p_result_buf);
}

void dma_accel_set_buf_length(dma_accel_t* p_dma_accel_inst, int buf_length)
{
	p_dma_accel_inst->buf_length = buf_length;
}

int dma_accel_get_buf_length(dma_accel_t* p_dma_accel_inst)
{
	return (p_dma_accel_inst->buf_length);
}

void dma_accel_set_sample_size_bytes(dma_accel_t* p_dma_accel_inst, int sample_size_bytes)
{
	p_dma_accel_inst->sample_size_bytes = sample_size_bytes;
}

int dma_accel_get_sample_size_bytes(dma_accel_t* p_dma_accel_inst)
{
	return (p_dma_accel_inst->sample_size_bytes);
}

int dma_accel_xfer(dma_accel_t* p_dma_accel_inst)
{

	// Local variables
	int       status    = 0;
	const int num_bytes = p_dma_accel_inst->buf_length*p_dma_accel_inst->sample_size_bytes;

	// Flush cache
	#if (!DMA_ACCEL_IS_CACHE_COHERENT)
		Xil_DCacheFlushRange((int)p_dma_accel_inst->p_stim_buf, num_bytes);
		Xil_DCacheFlushRange((int)p_dma_accel_inst->p_result_buf, num_bytes);
	#endif

	// Initialize control flags which get set by ISR
	g_s2mm_done = 0;
	g_mm2s_done = 0;
	g_dma_err   = 0;

	// Kick off MM2S transfer
	status = XAxiDma_SimpleTransfer
	(
		&p_dma_accel_inst->periphs.dma_inst,
		(int)p_dma_accel_inst->p_stim_buf,
		num_bytes,
		XAXIDMA_DMA_TO_DEVICE
	);
	if (status != DMA_ACCEL_SUCCESS)
	{
		xil_printf("ERROR! Failed to kick off MM2S transfer!\n\r");
		return DMA_ACCEL_XFER_FAIL;
	}

	// Kick off S2MM transfer
	status = XAxiDma_SimpleTransfer
	(
		&p_dma_accel_inst->periphs.dma_inst,
		(int)p_dma_accel_inst->p_result_buf,
		num_bytes,
		XAXIDMA_DEVICE_TO_DMA
	);
	if (status != DMA_ACCEL_SUCCESS)
	{
		xil_printf("ERROR! Failed to kick off MM2S transfer!\n\r");
		return DMA_ACCEL_XFER_FAIL;
	}

	// Wait for transfer to complete
	while (!(g_s2mm_done && g_mm2s_done) && !g_dma_err){ /* The processor could be doing something else here while waiting for an IRQ. */ }
	// Check DMA for errors
	if (g_dma_err)
	{
		xil_printf("ERROR! AXI DMA returned an error during the MM2S transfer.\n\r");
		return DMA_ACCEL_XFER_FAIL;
	}

	return DMA_ACCEL_SUCCESS;

}







static int RECORDED_DATA_PTR[960000];
unsigned int AUDIO_STATE;
unsigned int INTR_CH;
unsigned int AUDIO_BUFF_SIZE;


void change_sys_state(unsigned int curr_state, unsigned int new_state){
	//xil_printf("Switching State from %d to %d\r\n", curr_state, new_state);
	AUDIO_STATE = new_state;
	return;
}

void change_amplitude(unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);
	//Increase or decrease the amplitude of the audio stream
	*AUDIO_STREAM_MODE_ADDR = OFF;
	if(AUDIO_STATE == AMP_UP){

		if(audio_volume_change <8){
			audio_volume_change++;
			is_audio_changed =1;
		}
		if(*AMP_VAL_ADDR < 0xFE){
			*AMP_VAL_ADDR = *AMP_VAL_ADDR + 0x04;
			*AMP_VAL_ADDR = *AMP_VAL_ADDR & 0xFE; //Don't mute :)
			AudioWriteToReg(R31_PLAYBACK_LINE_OUTPUT_LEFT_VOLUME_CONTROL, *AMP_VAL_ADDR);
			AudioWriteToReg(R32_PLAYBACK_LINE_OUTPUT_RIGHT_VOLUME_CONTROL, *AMP_VAL_ADDR);
		}
	}else if(AUDIO_STATE == AMP_DWN){


		if(audio_volume_change >= 2){
			audio_volume_change--;
			is_audio_changed =2;
			is_light_pattern_changed =1;
		}
		if(*AMP_VAL_ADDR > 0x06){
			*AMP_VAL_ADDR = *AMP_VAL_ADDR - 0x04;
			*AMP_VAL_ADDR = *AMP_VAL_ADDR & 0xFE; //Don't mute :)
			AudioWriteToReg(R31_PLAYBACK_LINE_OUTPUT_LEFT_VOLUME_CONTROL, *AMP_VAL_ADDR);
			AudioWriteToReg(R32_PLAYBACK_LINE_OUTPUT_RIGHT_VOLUME_CONTROL, *AMP_VAL_ADDR);
		}
	}
	*AUDIO_STREAM_MODE_ADDR = ON;
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}
void change_tone(unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);

	//Increase or decrease the tone of the audio stream
	if(AUDIO_STATE == TONE_UP){


		if(tempo_speed_change <8){
			tempo_speed_change++;
		}
		if(*TONE_SCALE_ADDR != 1){
			*TONE_SCALE_ADDR = *TONE_SCALE_ADDR - 1;
		}
	}else if(AUDIO_STATE == TONE_DWN){

		if(tempo_speed_change >= 2 ){
			tempo_speed_change--;
		}
		if(*TONE_SCALE_ADDR != 5){
			*TONE_SCALE_ADDR = *TONE_SCALE_ADDR + 1;
		}
	}
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}
void record_audio(unsigned int OP_CODE){
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

void playback_audio(unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);
	int i = 0;
	while(i < AUDIO_BUFF_SIZE && (XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT) != 0)){
		Xil_Out32(I2S_DATA_TX_L_REG, (u32)RECORDED_DATA_PTR[i]);
		i++;
		Xil_Out32(I2S_DATA_TX_R_REG, (u32)RECORDED_DATA_PTR[i]);
		usleep(23*(*TONE_SCALE_ADDR));
		i++;
	}
	//Revert system state to stream after playback
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}
void add_soundfx(unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);
	u32 left, right, i;

	//Invert Audio Stream
	if(AUDIO_STATE == SOUND_EFFECT_1){
		while(XGpio_DiscreteRead(&btn_swt_gpio, SWT_INT) == SOUND_EFFECT_1){
			left = Xil_In32(I2S_DATA_RX_L_REG);
			right = Xil_In32(I2S_DATA_RX_R_REG);
			left = left ^ 0x008FFFFF;
			right = right ^ 0x008FFFFF;
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
			Xil_Out32(I2S_DATA_TX_L_REG, (int) 400*sin(2*3.14*1000));
			Xil_Out32(I2S_DATA_TX_R_REG, (int) 400*sin(2*3.14*1000));
		}
	}
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}
void start_stop_audio(unsigned int OP_CODE){
	if(OP_CODE == STOP_START && *AUDIO_STREAM_MODE_ADDR == OFF){

		is_music_streaming=1;
		change_sys_state(AUDIO_STATE, OP_CODE);
		*AUDIO_STREAM_MODE_ADDR = ON;
	}else if(OP_CODE == STOP_START && *AUDIO_STREAM_MODE_ADDR == ON) {
		is_music_streaming=2;
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
	int * temp_ptr = SIG_DETECT;
	if(OP_CODE == SIG_DETECT_1){
		if(*temp_ptr > 800 && *temp_ptr < 850){
			xil_printf("Signal Pattern 1 Detected.\r\n");
		}
	}else if(OP_CODE == SIG_DETECT_2){
		if(*temp_ptr > 900 && *temp_ptr < 950){
			xil_printf("Signal Pattern 2 Detected.\r\n");
		}
	}else if(OP_CODE == SIG_DETECT_3){
		if(*temp_ptr > 1000){
			xil_printf("Signal Pattern 3 Detected.\r\n");
		}
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
				is_music_streaming=1;
				audio_stream();
			} else {
				xil_printf("AUDIO STREAM OFF\r\n");
				is_music_streaming=2;
				reset_bin_counters=1;
			}
			break;
	}
	}else {
		audio_stream();
	}
} // audio_interface()



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


void generate_param_for_row(int *bins_covered, int bin_number){

	int vga_bin=0;
	for(int ii = 0; ii <=10;ii++){
			vga_bin += detect_freq(tx_buff, rx_buff, FFT_INIT_POINTS, p_fft_inst);
//			vga_bin  =vga_bin/5;
			if(vga_bin >= 5){
				vga_bin = 5;
			}
			bins_covered[vga_bin] = 1;
		}

		//for each covered bins create rand num for the shape.
		for(int ii = 0; ii <=5;ii++){
			if(bins_covered[ii] == 1){
				int * temp_buffer= prng_output;
				int buffer_index = bin_number; // buffer number goes from 0-4

				//bin ii
			    int jj= ii;

			// the program accepts 4 shapes per bin at a time.
				//
				temp_buffer[5*4*jj  + 5*buffer_index]= (rand()%4) +1; // accept values 1-4
				temp_buffer[5*4*jj+1+ 5*buffer_index]= (rand()%5) +1; // accept valeus of 1-5
				temp_buffer[5*4*jj+2+ 5*buffer_index]= (rand()%7) +1; // accept valeus of 1-7
				temp_buffer[5*4*jj+3+ 5*buffer_index]= (rand()%7) +1; // accept valeus of 1-7
			}
		}


}
