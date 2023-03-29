#ifndef INTR_HANDLERS_H_
#define INTR_HANDLERS_H_

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


enum AUDIO_STREAM_STATUS {ON, OFF};

//Global variable to determine the system state
unsigned int AUDIO_STATE;
unsigned int INTR_CH;
unsigned int AUDIO_BUFF_SIZE;
int RECORDED_DATA_PTR[960000];


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

#endif //INTR_HANDLERS_H_
