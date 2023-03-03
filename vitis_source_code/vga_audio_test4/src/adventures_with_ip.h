/*
 * adventures_with_ip.h
 *
 * Main header file.
 */

#ifndef ADVENTURES_WITH_IP_H_
#define ADVENTURES_WITH_IP_H_

/* ---------------------------------------------------------------------------- *
 * 								Header Files									*
 * ---------------------------------------------------------------------------- */
#include <stdio.h>
#include <xil_io.h>
#include <sleep.h>
#include "xiicps.h"
#include <xil_printf.h>
#include <xparameters.h>
#include "xgpio.h"
#include "xuartps.h"
#include "stdlib.h"
#include <math.h>
#include "xaxidma.h"

/* ---------------------------------------------------------------------------- *
 * 							Custom IP Header Files								*
 * ---------------------------------------------------------------------------- */
#include "audio.h"
//#include "lms_pcore_addr.h"
//#include "xnco.h"

/* ---------------------------------------------------------------------------- *
 * 							Prototype Functions									*
 * ---------------------------------------------------------------------------- */
void menu();
void tonal_noise();
void audio_stream();
void audio_record();
void audio_play();
void audio_speedup();
void audio_slowdown();
void audio_raiseVolume();
void audio_lowerVolume();
void audio_normal_speed();
void sine_wave();
void lms_filter();
unsigned char gpio_init();
void nco_init(void *InstancePtr);
void generate_PRNG(XAxiDma myDma);

/* ---------------------------------------------------------------------------- *
 * 						Redefinitions from xparameters.h 						*
 * ---------------------------------------------------------------------------- */

#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR

#define BUTTON_SWITCH_BASE XPAR_GPIO_1_BASEADDR
//#define LED_BASE XPAR_LED_CONTROLLER_0_S00_AXI_BASEADDR
#define BUTTON_SWITCH_ID XPAR_GPIO_1_DEVICE_ID
#define DDR_MEM_ADDR XPAR_PS7_DDR_0_S_AXI_BASEADDR
#define L2_Cache XPAR_PS7_L2CACHEC_0_S_AXI_BASEADDR

/* ---------------------------------------------------------------------------- *
 * 							Define GPIO Channels								*
 * ---------------------------------------------------------------------------- */
#define BUTTON_CHANNEL 1
#define SWITCH_CHANNEL 2

/* ---------------------------------------------------------------------------- *
 * 							Audio Scaling Factor								*
 * ---------------------------------------------------------------------------- */
#define SCALE 7

/* ---------------------------------------------------------------------------- *
 * 							Global Variables									*
 * ---------------------------------------------------------------------------- */
//XIicPs Iic;
//XGpio Gpio; // Gpio instance for buttons and switches
//XNco Nco;

/* ---------------------------------------------------------------------------- *
 * 							Shared Memory variables controlled via interrupts									*
 * ---------------------------------------------------------------------------- */

#define is_light_pattern_changed (*(volatile unsigned long *)(0xFFFF0000)) //shared memory space
#define light_pattern_mode (*(volatile unsigned long *)(0xFFFF0010)) // light pattern mode
#define audio_volume_change (*(volatile unsigned long *)(0xFFFF0020))
#define tempo_speed_change (*(volatile unsigned long *)(0xFFFF0030))

// streaming cannot speed up music
//0, recording we can increase or decrease tempo
//1 streaming we cannot increase tempo (but can decrease the tempo)
//2 music is stopped and so we stop the shapes from moving
//3 music is playing back we can increase or decrease tempo
#define is_music_streaming (*(volatile unsigned long *)(0xFFFF0040))
#define sound_effect_added (*(volatile unsigned long *)(0xFFFF0050))
#define prng_output        (int*)(0xFFFF0060) // will hold at most 20 int values


// state machine
// when audio record ends with 10 seconds then it will go back to streaming immediately


#endif /* ADVENTURES_WITH_IP_H_ */


