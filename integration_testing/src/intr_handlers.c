/*
 * ip_functions.c
 *
 * Contains all functions which pertain to setup and use of IP periperals.
 */

#include "intr_handlers.h"
#include <stdio.h>
#include <xil_io.h>
#include <sleep.h>
#include "xiicps.h"
#include <xil_printf.h>
#include "xgpio.h"
#include "xuartps.h"
#include <stdlib.h>
#include <time.h>
#include "main.h"
#include "mem_table.h"

int *AMP_VAL_ADDR = 0x000000080; //Need to update
int *BIN_DETECTED = 0x00000081; //DDR Space for Freq Bin Detected
int *TONE_SCALE_ADDR = 0x00000082;
int *AUDIO_STREAM_MODE_ADDR = 0x00000083;
#define SIG_DETECT 0x00000091

void change_sys_state(unsigned int curr_state, unsigned int new_state){
	//xil_printf("Switching State from %d to %d\r\n", curr_state, new_state);
	AUDIO_STATE = new_state;
	return;
}

void change_amplitude(unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);
	//Increase or decrease the amplitude of the audio stream
	if(AUDIO_STATE == AMP_UP){
		if(*AMP_VAL_ADDR != 0xFE){
			*AMP_VAL_ADDR = *AMP_VAL_ADDR + 1;
			*AMP_VAL_ADDR = *AMP_VAL_ADDR | 0x02; //Don't mute :)
			AudioWriteToReg(R31_PLAYBACK_LINE_OUTPUT_LEFT_VOLUME_CONTROL, *AMP_VAL_ADDR);
			AudioWriteToReg(R32_PLAYBACK_LINE_OUTPUT_RIGHT_VOLUME_CONTROL, *AMP_VAL_ADDR);
		}
	}else if(AUDIO_STATE == AMP_DWN){
		if(*AMP_VAL_ADDR != 0x02){
			*AMP_VAL_ADDR = *AMP_VAL_ADDR - 1;
			*AMP_VAL_ADDR = *AMP_VAL_ADDR | 0x02; //Don't mute :)
			AudioWriteToReg(R31_PLAYBACK_LINE_OUTPUT_LEFT_VOLUME_CONTROL, *AMP_VAL_ADDR);
			AudioWriteToReg(R32_PLAYBACK_LINE_OUTPUT_RIGHT_VOLUME_CONTROL, *AMP_VAL_ADDR);
		}
	}
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}
void change_tone(unsigned int OP_CODE){
	//Change the system state
	change_sys_state(AUDIO_STATE, OP_CODE);

	//Increase or decrease the tone of the audio stream
	if(AUDIO_STATE == TONE_UP){
		if(*TONE_SCALE_ADDR != 1){
			*TONE_SCALE_ADDR = *TONE_SCALE_ADDR - 1;
		}
	}else if(AUDIO_STATE == TONE_DWN){
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
		usleep(23**TONE_SCALE_ADDR);
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
			left = left ^ 0xFFFF;
			right = right ^ 0xFFFF;
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
			Xil_Out32(I2S_DATA_TX_L_REG, left);
			Xil_Out32(I2S_DATA_TX_R_REG, right);
		}
	}
	change_sys_state(AUDIO_STATE, STREAM);
	return;
}
void start_stop_audio(unsigned int OP_CODE){
	if(OP_CODE == STOP_START && *AUDIO_STREAM_MODE_ADDR == OFF){
		change_sys_state(AUDIO_STATE, OP_CODE);
		*AUDIO_STREAM_MODE_ADDR = ON;
	}else if(OP_CODE == STOP_START && *AUDIO_STREAM_MODE_ADDR == ON) {
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
				audio_stream();
			} else {
				xil_printf("AUDIO STREAM OFF\r\n");
			}
			break;
	}
	}else {
		audio_stream();
	}
} // audio_interface()

