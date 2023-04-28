// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Apr 22 15:38:31 2023
// Host        : kali running 64-bit Kali GNU/Linux Rolling
// Command     : write_verilog -force -mode funcsim -rename_top mult_k_gen_0 -prefix
//               mult_k_gen_0_ mult_k_gen_0_sim_netlist.v
// Design      : mult_k_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_k_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_k_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [19:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [29:0]P;

  wire [15:0]A;
  wire [19:0]B;
  wire CLK;
  wire [29:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "20" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "29" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_k_gen_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "20" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "29" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "aartix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mult_k_gen_0_mult_gen_v12_0_14
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
  input [19:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [29:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [19:0]B;
  wire CLK;
  wire [29:0]P;
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
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "20" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "29" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_k_gen_0_mult_gen_v12_0_14_viv i_mult
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
fq6MpVbg1jS21yuVQIqoB/gKsL7/Kj1OdOxYFGOm4r9ynUChpU1yHB8GUA8UTK0T/4LlsR4SKc6V
QGn9FT8GLu5R2TCntR/pbVOfPmyDUAh23HkBrZDFRoaulfsmF6HRVTEKsf5kyJNaYBIyt1JHczwe
2OzaXj1+uJctu9CrYZAyQqnVCoLsimReYRYTLWLk6r4t078uFfntdEPhjgTm6LegqmbFn4c2tJWQ
QUojRIQYj3yhTobD7ZP+Aqgap9TV+UsBWBVli61r9mYGE8fTHkduZR9IH1oViJnJJXu5QN/8NxMm
A9anYYnXy2VwWFZs9At2W3EO0OFFs88ZfvVzLw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fse7UXOiHo0DMfD3VEc8SvWesRj6vdfp/0WXiDY/0zjegMrlJzw1k0sJ3Y5CLAwHd9f+96GI+E1B
kQepnZyRqYyn+GUmrjXPFu8OFOFglgejziSCwn6tUbCdMYLdS2CuT6USd4hI9sKZj0NsdczFJAw9
9mRVi4xg/nLtGSgHwuxY7RJ94ufLEHF3j/0aI+Grwz/lbvNxd0iy/1ikrpo5bKcvWeL1bi8ePBsI
AXyWEwgZEmI6NRpW9tR51XEtAwiDTNcVc5C7BZT0qdMjB7qGcV+OxWGR3LLqo/pTYTy9tai3SCxq
vAEFEvj6luuLgtnmkeAUsWi7wRgtDUNY30nqUg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
`pragma protect data_block
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
5P+wqxLOiAKDIYs=
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
