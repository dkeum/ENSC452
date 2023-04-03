#ifndef INTR_FUNCS_HPP
#define INTR_FUNCS_HPP
#include <stdlib.h>
#include <stdio.h>
#include "audio.hpp"
#include "xgpio.h"
#include "math.h"

//Prototype functions
void playback_audio(int * audio_buff, XGpio * audio_state, int audio_buff_size, int * playback_tone);
int record_audio(int * audio_buff, XGpio * audio_state, int audio_buff_max);
void sound_fx_1(XGpio * audio_state);
void sound_fx_2(XGpio * audio_state);
void sound_fx_3(XGpio * audio_state);
void detect_sig_1(XGpio * audio_state, int * freq_data_p);
void detect_sig_2(XGpio * audio_state, int * freq_data_p);
void detect_sig_3(XGpio * audio_state, int * freq_data_p);

#endif
