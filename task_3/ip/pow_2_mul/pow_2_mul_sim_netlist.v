// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Apr 22 20:11:55 2023
// Host        : kali running 64-bit Kali GNU/Linux Rolling
// Command     : write_verilog -force -mode funcsim
//               /media/aaa/I/_ELSE/fpga_prj/fpga_design_course/task_3/ip/pow_2_mul/pow_2_mul_sim_netlist.v
// Design      : pow_2_mul
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pow_2_mul,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module pow_2_mul
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

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
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
  pow_2_mul_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "8" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "aartix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module pow_2_mul_mult_gen_v12_0_14
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
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
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
  pow_2_mul_mult_gen_v12_0_14_viv i_mult
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
a7l7EZIX9YkQa7WtC6TwtZqZCOAVETJjHOMGhkTJm9m6y08qj/tCokecwu5y8ewFptOb3HUmVAqk
DfAogPdIdc0Uj6jOPVFECLQHV+zNoARNMU6kAJiFI85IP0IsiYv43TPNB9kHfSlCAeOyoThA1bBr
BqfP9KtCdpiXnPZkQIbANd0b/gngCgR6BTIwrCH1lnR3ugLOj9YU93sISnesS00Alf1YM6zoPLIm
lxF0gui3SKl0i22Q7Zf50G4tOUlG6CtfmyPp0y5asWpdGrRb+j/RwQ9TUmDHfRxPirKzjZLNs5Vu
ZM+KU/qdO4GGLZtqZDh7Db1iWccEJBMoA2Jm+A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sUcUXsB1KpvXCVjg9fPgUn9vbCBcKo9huRR0E0MVcDwCuc7GaEHxO8/rRgoDdGLjubPvjv188HWO
hhk5FyE3U1B97WLdyL/qP5wqW7c+pF/JStwYIrmEarIJharpkKiLiCbkMlSGiO8fGAYKjoM6rJF0
SW/QKvRbCrj3RYx398i/RqR8cSPnoktpuoj8zCLVt12IIZpXmbuR3PuZk5zEXFrZ6354z5ISguYv
U9bjad+A5oIqXshxXFHi+FEWd2mo4UDehDbQpuZTBRTEsF4M12g9ZlasIDqYo9+Zhe6I8ImCIHTL
+gR5TpFfoZ/EHYhyWQcRptK1U5vuyzeL65uepQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7280)
`pragma protect data_block
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
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
