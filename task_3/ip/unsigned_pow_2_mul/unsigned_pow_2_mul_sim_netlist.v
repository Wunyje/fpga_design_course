// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Apr 23 13:05:00 2023
// Host        : kali running 64-bit Kali GNU/Linux Rolling
// Command     : write_verilog -force -mode funcsim
//               /media/aaa/I/_ELSE/fpga_prj/fpga_design_course/task_3/ip/unsigned_pow_2_mul/unsigned_pow_2_mul_sim_netlist.v
// Design      : unsigned_pow_2_mul
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "unsigned_pow_2_mul,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module unsigned_pow_2_mul
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  unsigned_pow_2_mul_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "8" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "aartix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module unsigned_pow_2_mul_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [7:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [15:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  unsigned_pow_2_mul_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e3WSUgiYx4zLNjwrsO5kM10EyXj05guWU3VaUvND/3TJiensA5i6HVsERmzEb3URKIg7ZbFDYx9t
Ola1xWlNL+UBaNRUCxJLeE9+eKucGWa7EgHZkkBLEKPPMXfHBWRUIcoLVulZcGWAXSPzQBBmLWkC
XpZcgek6kOdOSWQH4pJmqt0j6ZOyHZOygD/rz44zYO0Dh+LF19fX4mbYsvcX+a5iTdDvPEeEsYOP
+E91woONFUrQ+5NYHi5esPKVhE8zNpue5qm0X035cW8ELXjY4Hd4co/Z656FVKzM4Omu3yrPlHdW
Pa116la8ZWnSc34f5sXRvM2KV2MaL4QuSes5GQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5o1zSduqEAMM1/ndyL84PyPpDAXuv7HpOs5c0B2wgzDUIowom/Rhr5wce/OYYa7VJqMhyunA6M9E
oyWUlNvznldKwELr4kXppX/Nn00w9z9joqzvHclZcu2CgHY3hitpswcMmkf9SnHzfm96IA7U6YFA
SRXhQita6gwoaFfKQM353XkHv1KqoagWsCinc0N/90AEwwgjw91ci9nMeZN1d6E1RFN1qvQjKp13
j/ul1JlWGR3/BuS5P4jqEauOs7kmRezSZ+h8egl/M0wFTor5WYTLc6I8/DAl4txN4rSsUQSLeLZe
lwSsV3FopWatIllcYgkU8Y3EGazxlTNiFTSuyw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7312)
`pragma protect data_block
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
GLdPTB7i+Iv9ArUCaH91mg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
