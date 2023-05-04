// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Apr 22 15:38:31 2023
// Host        : kali running 64-bit Kali GNU/Linux Rolling
// Command     : write_verilog -force -mode synth_stub -rename_top mult_k_gen_0 -prefix
//               mult_k_gen_0_ mult_k_gen_0_stub.v
// Design      : mult_k_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *)
module mult_k_gen_0(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[15:0],B[19:0],P[29:0]" */;
  input CLK;
  input [15:0]A;
  input [19:0]B;
  output [29:0]P;
endmodule