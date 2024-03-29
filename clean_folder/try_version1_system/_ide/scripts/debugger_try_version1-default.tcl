# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\dkeum\Downloads\ENSC452-main\clean_folder\try_version1_system\_ide\scripts\debugger_try_version1-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\dkeum\Downloads\ENSC452-main\clean_folder\try_version1_system\_ide\scripts\debugger_try_version1-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469551" && level==0 && jtag_device_ctx=="jsn-Zed-210248469551-03727093-0"}
fpga -file C:/Users/dkeum/Downloads/ENSC452-main/clean_folder/try_version1/_ide/bitstream/v5_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/dkeum/Desktop/clean_folder/v5_wrapper_1/export/v5_wrapper_1/hw/v5_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/dkeum/Downloads/ENSC452-main/clean_folder/try_version1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/dkeum/Downloads/ENSC452-main/clean_folder/try_version1/Debug/try_version1.elf
configparams force-mem-access 0
bpadd -addr &main
