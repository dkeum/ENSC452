// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Feb 24 15:26:18 2023
// Host        : ensc-pit-w15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/dkeum/audio_tutorial/audio_tutorial/audio_tutorial.gen/sources_1/bd/design_1/ip/design_1_rand_num_generator_0_1/design_1_rand_num_generator_0_1_stub.v
// Design      : design_1_rand_num_generator_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "inverter,Vivado 2020.2" *)
module design_1_rand_num_generator_0_1(axi_clk, axi_reset_n, s_axis_valid, 
  s_axis_data, s_axis_ready, m_axis_valid, m_axis_data, m_axis_ready)
/* synthesis syn_black_box black_box_pad_pin="axi_clk,axi_reset_n,s_axis_valid,s_axis_data[31:0],s_axis_ready,m_axis_valid,m_axis_data[31:0],m_axis_ready" */;
  input axi_clk;
  input axi_reset_n;
  input s_axis_valid;
  input [31:0]s_axis_data;
  output s_axis_ready;
  output m_axis_valid;
  output [31:0]m_axis_data;
  input m_axis_ready;
endmodule
