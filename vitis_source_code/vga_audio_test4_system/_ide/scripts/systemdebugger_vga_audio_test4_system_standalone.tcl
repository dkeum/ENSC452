# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\dkeum\official_lab_test_vga\vga_audio_test4_system\_ide\scripts\systemdebugger_vga_audio_test4_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\dkeum\official_lab_test_vga\vga_audio_test4_system\_ide\scripts\systemdebugger_vga_audio_test4_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469551" && level==0 && jtag_device_ctx=="jsn-Zed-210248469551-03727093-0"}
fpga -file C:/Users/dkeum/official_lab_test_vga/vga_audio_test4/_ide/bitstream/design_6_wrapper_PRNG.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/dkeum/official_lab_test_vga/design_6_wrapper_PRNG/export/design_6_wrapper_PRNG/hw/design_6_wrapper_PRNG.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/dkeum/official_lab_test_vga/vga_audio_test4/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/dkeum/official_lab_test_vga/vga_audio_test4/Debug/vga_audio_test4.elf
targets -set -nocase -filter {name =~ "*A9*#1"}
dow C:/Users/dkeum/official_lab_test_vga/vga_audio4/Debug/vga_audio4.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
targets -set -nocase -filter {name =~ "*A9*#1"}
con
