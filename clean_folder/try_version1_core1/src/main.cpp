#include "audio.hpp"
#include <stdio.h>
#include <sleep.h>
#include "xil_io.h"
#include "xil_mmu.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "intr_functions.hpp"


#define COMM_VAL (*(volatile unsigned long *)(0xFFFF0000))
#define FREQ_OUT_ADDR (int*)(0xFFF00010)
//Audio Stream Shared Memory
#define AUDIO_STREAM_MODE_ADDR (int *)0x1008000C
#define AUDIO_STREAM_STATE (int *) 0xFFF00001
#define TONE_SCALE_ADDR (int *)0xFFF00008
//Audio Stream Constant Mode Macros
#define RECORD 32
#define PLAYBACK 16
#define SOUND_EFFECT_1 1
#define SOUND_EFFECT_2 2
#define SOUND_EFFECT_3 3
#define SIG_DETECT_3 204
#define SIG_DETECT_2 140
#define SIG_DETECT_1 76
#define REGULAR_MODE 0
#define AUDIO_BUFF_MAX 960000

int main()
{
	Xil_SetTlbAttributes(0xFFFF0000,0x14de2);
	int * audio_buff = (int *) malloc(AUDIO_BUFF_MAX*sizeof(int));
	int audio_buff_size = 0;
	//Get switch and button gpios
	XGpio btn_swt;

	if(XGpio_Initialize(&btn_swt, XPAR_GPIO_1_DEVICE_ID) != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

    while(1){
    	if(*AUDIO_STREAM_MODE_ADDR != 0){
    		switch(*AUDIO_STREAM_STATE){
    		case SOUND_EFFECT_1:
    			xil_printf("Sound_Effect_1\r\n");
    			sound_fx_1(&btn_swt);
    			*AUDIO_STREAM_STATE = REGULAR_MODE;
    			break;
    		case SOUND_EFFECT_2:
    			xil_printf("Sound_Effect_2\r\n");
    			sound_fx_2(&btn_swt);
    			*AUDIO_STREAM_STATE = REGULAR_MODE;
    			break;
    		case SOUND_EFFECT_3:
    			xil_printf("Sound_Effect_3\r\n");
    			sound_fx_3(&btn_swt);
    			*AUDIO_STREAM_STATE = REGULAR_MODE;
    			break;
    		case RECORD:
    			audio_buff_size = record_audio(audio_buff, &btn_swt, AUDIO_BUFF_MAX);
    			*AUDIO_STREAM_STATE = REGULAR_MODE;
    			break;
    		case PLAYBACK:
    			playback_audio(audio_buff, &btn_swt, audio_buff_size, TONE_SCALE_ADDR);
    			*AUDIO_STREAM_STATE = REGULAR_MODE;
    			break;
    		case SIG_DETECT_1:
    			detect_sig_1(&btn_swt, FREQ_OUT_ADDR);
    			*AUDIO_STREAM_STATE = REGULAR_MODE;
    			break;
    		case SIG_DETECT_2:
    			detect_sig_2(&btn_swt, FREQ_OUT_ADDR);
    			*AUDIO_STREAM_STATE = REGULAR_MODE;
    			break;
    		case SIG_DETECT_3:
    			detect_sig_3(&btn_swt, FREQ_OUT_ADDR);
    			*AUDIO_STREAM_STATE = REGULAR_MODE;
    			break;
    		default:
    			audio_stream();
    			break;
    		}
    		audio_stream();
    	}
    }

    return 0;
}


