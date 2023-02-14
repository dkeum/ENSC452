# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\dkeum\lab_test_audio\ip_adventures_system\_ide\scripts\systemdebugger_ip_adventures_system_2_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\dkeum\lab_test_audio\ip_adventures_system\_ide\scripts\systemdebugger_ip_adventures_system_2_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469551" && level==0 && jtag_device_ctx=="jsn-Zed-210248469551-03727093-0"}
fpga -file C:/Users/dkeum/lab_test_audio/ip_adventures/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/dkeum/lab_test_audio/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/dkeum/lab_test_audio/ip_adventures/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/dkeum/lab_test_audio/ip_adventures/Debug/ip_adventures.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
