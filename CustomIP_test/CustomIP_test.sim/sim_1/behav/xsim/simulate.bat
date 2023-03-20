@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Thu Feb 23 14:56:57 -0800 2023
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim random_num_generator_behav -key {Behavioral:sim_1:Functional:random_num_generator} -tclbatch random_num_generator.tcl -view C:/Users/dkeum/audio_tutorial/CustomIP_test/random_num_generator_behav.wcfg -log simulate.log"
call xsim  random_num_generator_behav -key {Behavioral:sim_1:Functional:random_num_generator} -tclbatch random_num_generator.tcl -view C:/Users/dkeum/audio_tutorial/CustomIP_test/random_num_generator_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
