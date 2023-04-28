// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Apr 22 17:02:43 2023
// Host        : kali running 64-bit Kali GNU/Linux Rolling
// Command     : write_verilog -force -mode synth_stub
//               /media/aaa/I/_ELSE/fpga_prj/fpga_design_course/task_3/ip/para_mem_for_sqrt_lut_0/para_mem_for_sqrt_lut_0_stub.v
// Design      : para_mem_for_sqrt_lut_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module para_mem_for_sqrt_lut_0(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[9:0],douta[35:0]" */;
  input clka;
  input ena;
  input [9:0]addra;
  output [35:0]douta;
endmodule
