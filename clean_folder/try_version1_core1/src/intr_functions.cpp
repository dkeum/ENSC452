#include "intr_functions.hpp"

void playback_audio(int * audio_buff, XGpio * audio_state, int audio_buff_size, int * playback_tone){
	int i = 0;
	while(i < audio_buff_size && XGpio_DiscreteRead(audio_state, 0x2) == 16){
		Xil_Out32(I2S_DATA_TX_L_REG, (u32)audio_buff[i]);
		i++;
		Xil_Out32(I2S_DATA_TX_R_REG, (u32)audio_buff[i]);
		usleep(23*((unsigned int)*playback_tone));
		i++;
	}
	return;
}

int record_audio(int * audio_buff, XGpio * audio_state, int audio_buff_max){
	u32 in_right, in_left;
	int i = 0;
	while(i < audio_buff_max && XGpio_DiscreteRead(audio_state, 0x2) == 32){
		// Read audio input from codec
		in_left = Xil_In32(I2S_DATA_RX_L_REG);
		in_right = Xil_In32(I2S_DATA_RX_R_REG);
		audio_buff[i] = (u32)in_left;
		i++;
		audio_buff[i] = (u32)in_right;
		usleep(23);
		i++;
	}
	return i;
}

//Record and flip audio stream every second.
void sound_fx_1(XGpio * audio_state){
	int i = 0;
	int temp_buff[96000];
	while(XGpio_DiscreteRead(audio_state, 0x2) == 1){
		while( i < 96000 && XGpio_DiscreteRead(audio_state, 0x2) == 1){
			temp_buff[i++] = Xil_In32(I2S_DATA_RX_L_REG);
			temp_buff[i++] = Xil_In32(I2S_DATA_RX_R_REG);
			usleep(23);
		}
		while( i > 0 && XGpio_DiscreteRead(audio_state, 0x2) == 1){
			Xil_Out32(I2S_DATA_TX_L_REG, temp_buff[--i]);
			Xil_Out32(I2S_DATA_TX_R_REG, temp_buff[--i]);
			usleep(23);
		}
		i = 0;
	}
	return;
}


void sound_fx_2(XGpio * audio_state){
	u32 temp_arr[196000];
	int i, left, right;
	i = 0;
	while(XGpio_DiscreteRead(audio_state, 0x2) == 2){
		while( i < 196000 && (XGpio_DiscreteRead(audio_state, 0x2) == 2)){
			left = Xil_In32(I2S_DATA_RX_L_REG);
			right = Xil_In32(I2S_DATA_RX_R_REG);
			Xil_Out32(I2S_DATA_TX_L_REG, left);
			Xil_Out32(I2S_DATA_TX_R_REG, right);
			temp_arr[i++] = left;
			temp_arr[i++] = right;
			usleep(23);
		}
		i = 0;
		while( i < 196000 && (XGpio_DiscreteRead(audio_state, 0x2) == 2)){
			Xil_Out32(I2S_DATA_TX_L_REG, temp_arr[i++]);
			Xil_Out32(I2S_DATA_TX_R_REG, temp_arr[i++]);
			usleep(15);
		}
		i = 0;
	}
	return;
}
void sound_fx_3(XGpio * audio_state){
	int j;
	j = 0;
	//gen tone
	double tone_buff[48000];
	for(int i = 0; i < 48000; i++){
		tone_buff[i] = 1000000*sin(2*3.145*1000*i/480);
	}
	//play tone
	while(XGpio_DiscreteRead(audio_state, 0x2) == 3){
		Xil_Out32(I2S_DATA_TX_L_REG, tone_buff[j++%48000]);
		Xil_Out32(I2S_DATA_TX_R_REG, tone_buff[j++%48000]);
		usleep(23);
	}
	return;
}

void detect_sig_1(XGpio * audio_state, int * freq_data_p){
	while(XGpio_DiscreteRead(audio_state, 0x2) == 64){
		if(*freq_data_p >= 600 && *freq_data_p < 700){
			xil_printf("Detect Signal 1 Active - Frequency Range [500, 600) Hz detected\r\n");
		}
		audio_stream();
	}
	return;
}

void detect_sig_2(XGpio * audio_state, int * freq_data_p){
	while(XGpio_DiscreteRead(audio_state, 0x2) == 128){
		if(*freq_data_p >= 700 && *freq_data_p < 800 ){
			xil_printf("Detect Signal 2 Active - Frequency Range [700, 800) Hz detected\r\n");
		}
		audio_stream();
	}
	return;
}

void detect_sig_3(XGpio * audio_state, int * freq_data_p){
	while(XGpio_DiscreteRead(audio_state, 0x2) == 192){
		if(*freq_data_p >= 900 && *freq_data_p < 1100){

			xil_printf("Detect Signal 3 Active - Frequency Range [900, 1100) Hz detected\r\n");
		}
		audio_stream();
	}
	return;
}