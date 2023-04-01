# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\dkeum\Desktop\clean_folder\v5_wrapper_1\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\dkeum\Desktop\clean_folder\v5_wrapper_1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {v5_wrapper_1}\
-hw {C:\Users\dkeum\Downloads\ENSC452-main\FFD-Integration\bitstreams\v5_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Users/dkeum/Desktop/clean_folder}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {v5_wrapper_1}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
domain create -name {try_version1_core1} -os {standalone} -proc {ps7_cortexa9_1} -arch {32-bit} -display-name {try_version1_core1} -desc {} -runtime {cpp}
platform generate -domains 
platform write
domain -report -json
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -DUSE-AMP=1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains try_version1_core1 
platform write
platform generate
platform clean
platform generate
