vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/processing_system7_vip_v1_0_10
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_22
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_21
vlib questa_lib/msim/axi_crossbar_v2_1_23
vlib questa_lib/msim/axi_protocol_converter_v2_1_22
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_24
vlib questa_lib/msim/axi_clock_converter_v2_1_21
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/axi_dwidth_converter_v2_1_22
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_fifo_v1_0_14
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_24
vlib questa_lib/msim/axi_sg_v4_1_13
vlib questa_lib/msim/axi_dma_v7_1_23

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 questa_lib/msim/processing_system7_vip_v1_0_10
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 questa_lib/msim/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 questa_lib/msim/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 questa_lib/msim/axi_crossbar_v2_1_23
vmap axi_protocol_converter_v2_1_22 questa_lib/msim/axi_protocol_converter_v2_1_22
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 questa_lib/msim/axi_gpio_v2_0_24
vmap axi_clock_converter_v2_1_21 questa_lib/msim/axi_clock_converter_v2_1_21
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_22 questa_lib/msim/axi_dwidth_converter_v2_1_22
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_14 questa_lib/msim/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_24 questa_lib/msim/axi_datamover_v5_1_24
vmap axi_sg_v4_1_13 questa_lib/msim/axi_sg_v4_1_13
vmap axi_dma_v7_1_23 questa_lib/msim/axi_dma_v7_1_23

vlog -work xilinx_vip  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_22  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_1/sim/design_1_rst_ps7_0_100M_1.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/family_support.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/common_types.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/pselect_f.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/address_decoder.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/slave_attachment.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/iis_ser.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/iis_deser.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/user_logic.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/axi_lite_ipif.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/i2s_ctrl.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_zed_audio_ctrl_0_0/sim/design_1_zed_audio_ctrl_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \

vlog -work axi_clock_converter_v2_1_21  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_22  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/2394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vcom -work xil_defaultlib  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_1_1/sim/design_1_axi_gpio_1_1.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_3/sim/design_1_rst_ps7_0_100M_3.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/3b78/vga_controller.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_vga_controller_0_1/sim/design_1_vga_controller_0_1.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_2/design_1_clk_wiz_0_2_clk_wiz.v" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_2/design_1_clk_wiz_0_2.v" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_14  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_24  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/4ab6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_23  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/89d8/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ipshared/4e12/rand_num_gener.v" \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_rand_num_generator_0_1/sim/design_1_rand_num_generator_0_1.v" \

vcom -work xil_defaultlib  -93 \
"../../../../../../Downloads/ENSC452-latest_working_audio_vga_code_v3/vivado_latest_block_diagram/audio_tutorial.gen/sources_1/bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

