#ifndef INTERRUPTS_H_
#define INTERRUPTS_H_
#include <xgpio.h>
#include <xscugic.h>
//Prototype functions
void Global_Interrupt_Handler(void *InstancePtr);
int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);

#endif //INTERRUPTS_H_
