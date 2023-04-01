# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
<<<<<<< HEAD
# Path of this script: C:\Users\dkeum\Downloads\ENSC452-main\clean_folder\try_version1_system\_ide\scripts\systemdebugger_try_version1_system_standalone.tcl
=======
# Path of this script: C:\Users\mbwhiteh\ENSC452-Daniel\clean_folder\try_version1_system\_ide\scripts\systemdebugger_try_version1_system_standalone.tcl
>>>>>>> d9fc8b9c1330f07c1e70d7d28135fe00ed38d9ef
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
<<<<<<< HEAD
# source C:\Users\dkeum\Downloads\ENSC452-main\clean_folder\try_version1_system\_ide\scripts\systemdebugger_try_version1_system_standalone.tcl
=======
# source C:\Users\mbwhiteh\ENSC452-Daniel\clean_folder\try_version1_system\_ide\scripts\systemdebugger_try_version1_system_standalone.tcl
>>>>>>> d9fc8b9c1330f07c1e70d7d28135fe00ed38d9ef
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
<<<<<<< HEAD
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469551" && level==0 && jtag_device_ctx=="jsn-Zed-210248469551-03727093-0"}
fpga -file C:/Users/dkeum/Downloads/ENSC452-main/clean_folder/try_version1/_ide/bitstream/v5_wrapper.bit
=======
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469583" && level==0 && jtag_device_ctx=="jsn-Zed-210248469583-03727093-0"}
fpga -file C:/Users/mbwhiteh/ENSC452-Daniel/clean_folder/try_version1/_ide/bitstream/v5_wrapper.bit
>>>>>>> d9fc8b9c1330f07c1e70d7d28135fe00ed38d9ef
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/mbwhiteh/ENSC452-Daniel/clean_folder/v5_wrapper_1/export/v5_wrapper_1/hw/v5_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
<<<<<<< HEAD
source C:/Users/dkeum/Downloads/ENSC452-main/clean_folder/try_version1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/dkeum/Downloads/ENSC452-main/clean_folder/try_version1/Debug/try_version1.elf
targets -set -nocase -filter {name =~ "*A9*#1"}
dow C:/Users/dkeum/Downloads/ENSC452-main/clean_folder/try_version1_core1/Debug/try_version1_core1.elf
=======
source C:/Users/mbwhiteh/ENSC452-Daniel/clean_folder/try_version1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/mbwhiteh/ENSC452-Daniel/clean_folder/try_version1/Debug/try_version1.elf
targets -set -nocase -filter {name =~ "*A9*#1"}
dow C:/Users/mbwhiteh/ENSC452-Daniel/clean_folder/try_version1_core1/Debug/try_version1_core1.elf
>>>>>>> d9fc8b9c1330f07c1e70d7d28135fe00ed38d9ef
configparams force-mem-access 0
bpadd -addr &main
