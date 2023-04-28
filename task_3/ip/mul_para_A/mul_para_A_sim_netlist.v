// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Apr 22 22:02:34 2023
// Host        : kali running 64-bit Kali GNU/Linux Rolling
// Command     : write_verilog -force -mode funcsim
//               /media/aaa/I/_ELSE/fpga_prj/fpga_design_course/task_3/ip/mul_para_A/mul_para_A_sim_netlist.v
// Design      : mul_para_A
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mul_para_A,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mul_para_A
   (CLK,
    A,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [22:0]P;

  wire [15:0]A;
  wire CLK;
  wire [22:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "1011011" *) 
  (* C_B_WIDTH = "7" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "22" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mul_para_A_mult_gen_v12_0_14 U0
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "1011011" *) (* C_B_WIDTH = "7" *) (* C_CCM_IMP = "2" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "2" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "22" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "aartix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mul_para_A_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [6:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [22:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire CLK;
  wire [22:0]P;
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
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "1011011" *) 
  (* C_B_WIDTH = "7" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "22" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mul_para_A_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
luCnkuIq7/3+aEh0uke4bqYtOpjCZRIV2/krcl8n2Ir2Fpk8ltz99wf2L8cc2+nl3vgQYuPZxADb
EXviFsd+4gJzE1fboTyftKA8GaAlvONii/jlDKiln1SJqzlcEBK7vS4RBDBrDzoDWNjweD3I3Zrs
Fv7yl+S/AdDO4UOW6pPVsFGfMnT+vp/i6sttZSxqVf9y86ZL1+9O3N1nWBAdy91ywp0oiDEsTY2J
lOnlua3zoI44cZ57ndzqKF/6i5cKIe9B5BXy63y586sej111UXhWZvZ92rwzRrcm2heX3HX8ugj0
Sc2YZd9zpzUncUnAeORuGO/YPX8d3EeNwr4/Rw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B34WjysP+09SCTKNkSOHyeupAT1dRghpGqNXCeRRe75QPkxe+UbdM7obZs18WpsVmjasoLD1wFEO
K4pCqxXD8k2Qqb/1+ngeoYmWbJXjI+AZPub4Qo9KFBwjhkHHVm0TVFE/wzYQrtKfVGvqNZsnQLhX
td+kuVjUFs3djBygBmrNaeIEWtNFtsRUW/4oK8xFWgN32dzaz+TKo1bor/47sYgYox26QBuApyTN
qevkO/RUms59XEIEudorZ+efPPR3b9RW3BRbZNNa4rva5qcGnk2sd5vR+NPf6MfY4374H02Szfez
vCugkSlMJ4PhrkYmSNAkTakfzjamQw1TQ14wLQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8272)
`pragma protect data_block
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
PjXS5m1eEA==
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
