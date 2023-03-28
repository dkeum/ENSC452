/*
 * adventures_with_ip.h
 *
 * Main header file.
 */

#ifndef MAIN_H_
#define MAIN_H_

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
#include "xscugic.h"
#include "xpseudo_asm.h"
#include "xuartps_hw.h"

#include "audio.h"


// Parameter definitions
#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_2_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
#define AUDIO_BUFF_MAX 960000 //10s at 48,000 Hz for Left and Right Channels


XScuGic INTCInst; //Interrupt Controller

XGpio btn_swt_gpio; // GPIO instance for buttons and switches

#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR

#define BUTTON_SWITCH_BASE XPAR_GPIO_2_BASEADDR
#define BUTTON_SWITCH_ID XPAR_GPIO_2_DEVICE_ID

/* ---------------------------------------------------------------------------- *
 * 							Define GPIO Channels								*
 * ---------------------------------------------------------------------------- */
#define BUTTON_CHANNEL 1
#define SWITCH_CHANNEL 2

#endif //MAIN_H_
