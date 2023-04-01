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



#define COMM_VAL (*(volatile unsigned long *)(0xFFFF0000))
#define FREQ_OUT_ADDR (int*)(0xFFFF2000)
#define AUDIO_STREAM_MODE_ADDR (int *)0x1008000C

int main()
{
	Xil_SetTlbAttributes(0xFFFF0000,0x14de2);
    while(1){
    	if(*AUDIO_STREAM_MODE_ADDR != 0){
    		audio_stream();
    	}
    }

    return 0;
}
