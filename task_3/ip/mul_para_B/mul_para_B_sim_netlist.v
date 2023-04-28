// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Apr 23 13:09:27 2023
// Host        : kali running 64-bit Kali GNU/Linux Rolling
// Command     : write_verilog -force -mode funcsim
//               /media/aaa/I/_ELSE/fpga_prj/fpga_design_course/task_3/ip/mul_para_B/mul_para_B_sim_netlist.v
// Design      : mul_para_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mul_para_B,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mul_para_B
   (CLK,
    A,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [7:0]A;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10001010" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mul_para_B_mult_gen_v12_0_14 U0
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "8" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10001010" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "2" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "2" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "aartix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mul_para_B_mult_gen_v12_0_14
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
  wire CLK;
  wire [15:1]\^P ;
  wire [0:0]NLW_i_mult_P_UNCONNECTED;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign P[15:1] = \^P [15:1];
  assign P[0] = \<const0> ;
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
  (* C_B_VALUE = "10001010" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mul_para_B_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .P({\^P ,NLW_i_mult_P_UNCONNECTED[0]}),
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
ebqeVk/KcieJDdhALzDF3zZPj4ZRdo+uMtyviAn/GRaXKwzJ+DCCFEukkJY8Z1Ty19w4gIp64Brj
KhZ4MKClEsdLkW4A9NSVvPuJEF883W9K73uaFjJN1sNjmNJWAEj4zC7lsHMtkl4YAIgjpD7nkP3n
8/jB3Kh51GojG9E/cYYkYmVMyaOofpxyDAUh4SzyTe0J8Itl/lDRvTXe+53V3vNrWmHLOgpj+baJ
nTtkSWaBf1BYGswS1rHdlFYw82dvkxOH2VIk0806sTvRwiX9cPvrGNBCTPhteRM593wpONgaqtzx
RPdtTI/jpcktNdKYsrBsi6XC6Lqg5FRTgPdUjg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CxmfRRlHI1DJQWFC1M/ApcL5+FB8U2af74Nu5g1GwSNlWOUgHJMXET3kXmgQnlUH37QodS3+BIl0
KdVLCnghisr4J7hlY2TK6trT/PNkPdlU9BTt3Cj38IO8rLq2ti7CFI5DDzLI/xuAI8N0bzb7vQvP
yoZhXJtgXNeT4DW9qSA8FlfQTn5dGTaUvX7F4o7ZMQkZAxVQ9cpv5JZqWdwfAl7+2BKjylvJZpFd
xakqY6WohxXUPiLeIQFb9DoXM/Pcqq96tu6+7mpqFXAEkhZ7nDtJ618M5zg1OSZpGp+7RHS6k/Gf
ZKyLmTADV3/DONzgkZFmelX1RNpnt9Jgjos0WQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9136)
`pragma protect data_block
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
9KJhEaN78HvVkGqlpf5puQ==
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
