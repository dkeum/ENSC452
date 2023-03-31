################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/audio.c \
../src/cplx_data.c \
../src/dma_accel.c \
../src/fft.c \
../src/interrupts.c \
../src/intr_handlers.c \
../src/ip_functions.c \
../src/main.c 

OBJS += \
./src/audio.o \
./src/cplx_data.o \
./src/dma_accel.o \
./src/fft.o \
./src/interrupts.o \
./src/intr_handlers.o \
./src/ip_functions.o \
./src/main.o 

C_DEPS += \
./src/audio.d \
./src/cplx_data.d \
./src/dma_accel.d \
./src/fft.d \
./src/interrupts.d \
./src/intr_handlers.d \
./src/ip_functions.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/dkeum/Desktop/Integration_v4/test/export/test/sw/test/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


