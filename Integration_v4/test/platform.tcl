# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\dkeum\Desktop\Integration_v4\test\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\dkeum\Desktop\Integration_v4\test\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {test}\
-hw {C:\Users\dkeum\audio_tutorial\audio_tutorial\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {C:/Users/dkeum/Desktop/Integration_v4}

platform write
platform generate -domains 
platform active {test}
platform generate
platform config -updatehw {C:/Users/dkeum/audio_tutorial/audio_tutorial/design_1_wrapper.xsa}
platform generate -domains 
platform active {test}
platform config -updatehw {C:/Users/dkeum/audio_tutorial/audio_tutorial/design_1_wrapper.xsa}
platform generate -domains 
