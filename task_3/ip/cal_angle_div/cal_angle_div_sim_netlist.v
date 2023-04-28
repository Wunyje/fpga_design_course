// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 24 10:34:28 2023
// Host        : kali running 64-bit Kali GNU/Linux Rolling
// Command     : write_verilog -force -mode funcsim
//               /media/aaa/I/_ELSE/fpga_prj/fpga_design_course/task_3/ip/cal_angle_div/cal_angle_div_sim_netlist.v
// Design      : cal_angle_div
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cal_angle_div,div_gen_v5_1_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "div_gen_v5_1_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module cal_angle_div
   (aclk,
    s_axis_divisor_tvalid,
    s_axis_divisor_tdata,
    s_axis_dividend_tvalid,
    s_axis_dividend_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIVIDEND:S_AXIS_DIVISOR:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_DIVISOR, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_divisor_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TDATA" *) input [7:0]s_axis_divisor_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_DIVIDEND, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_dividend_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TDATA" *) input [15:0]s_axis_dividend_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [23:0]m_axis_dout_tdata;

  wire aclk;
  wire [23:0]m_axis_dout_tdata;
  wire m_axis_dout_tvalid;
  wire [15:0]s_axis_dividend_tdata;
  wire s_axis_dividend_tvalid;
  wire [7:0]s_axis_divisor_tdata;
  wire s_axis_divisor_tvalid;
  wire NLW_U0_m_axis_dout_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_dividend_tready_UNCONNECTED;
  wire NLW_U0_s_axis_divisor_tready_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_dout_tuser_UNCONNECTED;

  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_S_AXIS_DIVIDEND_TLAST = "0" *) 
  (* C_HAS_S_AXIS_DIVIDEND_TUSER = "0" *) 
  (* C_HAS_S_AXIS_DIVISOR_TLAST = "0" *) 
  (* C_HAS_S_AXIS_DIVISOR_TUSER = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "24" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_DIVIDEND_TDATA_WIDTH = "16" *) 
  (* C_S_AXIS_DIVIDEND_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_DIVISOR_TDATA_WIDTH = "8" *) 
  (* C_S_AXIS_DIVISOR_TUSER_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* algorithm_type = "4" *) 
  (* c_has_div_by_zero = "0" *) 
  (* divclk_sel = "1" *) 
  (* dividend_width = "15" *) 
  (* divisor_width = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* fractional_b = "0" *) 
  (* fractional_width = "8" *) 
  (* signed_b = "0" *) 
  cal_angle_div_div_gen_v5_1_14 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_dout_tdata(m_axis_dout_tdata),
        .m_axis_dout_tlast(NLW_U0_m_axis_dout_tlast_UNCONNECTED),
        .m_axis_dout_tready(1'b0),
        .m_axis_dout_tuser(NLW_U0_m_axis_dout_tuser_UNCONNECTED[0]),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .s_axis_dividend_tdata(s_axis_dividend_tdata),
        .s_axis_dividend_tlast(1'b0),
        .s_axis_dividend_tready(NLW_U0_s_axis_dividend_tready_UNCONNECTED),
        .s_axis_dividend_tuser(1'b0),
        .s_axis_dividend_tvalid(s_axis_dividend_tvalid),
        .s_axis_divisor_tdata(s_axis_divisor_tdata),
        .s_axis_divisor_tlast(1'b0),
        .s_axis_divisor_tready(NLW_U0_s_axis_divisor_tready_UNCONNECTED),
        .s_axis_divisor_tuser(1'b0),
        .s_axis_divisor_tvalid(s_axis_divisor_tvalid));
endmodule

(* ALGORITHM_TYPE = "4" *) (* C_HAS_ACLKEN = "0" *) (* C_HAS_ARESETN = "0" *) 
(* C_HAS_DIV_BY_ZERO = "0" *) (* C_HAS_S_AXIS_DIVIDEND_TLAST = "0" *) (* C_HAS_S_AXIS_DIVIDEND_TUSER = "0" *) 
(* C_HAS_S_AXIS_DIVISOR_TLAST = "0" *) (* C_HAS_S_AXIS_DIVISOR_TUSER = "0" *) (* C_LATENCY = "1" *) 
(* C_M_AXIS_DOUT_TDATA_WIDTH = "24" *) (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) (* C_S_AXIS_DIVIDEND_TDATA_WIDTH = "16" *) 
(* C_S_AXIS_DIVIDEND_TUSER_WIDTH = "1" *) (* C_S_AXIS_DIVISOR_TDATA_WIDTH = "8" *) (* C_S_AXIS_DIVISOR_TUSER_WIDTH = "1" *) 
(* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) (* C_XDEVICEFAMILY = "aartix7" *) 
(* DIVCLK_SEL = "1" *) (* DIVIDEND_WIDTH = "15" *) (* DIVISOR_WIDTH = "8" *) 
(* FRACTIONAL_B = "0" *) (* FRACTIONAL_WIDTH = "8" *) (* ORIG_REF_NAME = "div_gen_v5_1_14" *) 
(* SIGNED_B = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module cal_angle_div_div_gen_v5_1_14
   (aclk,
    aclken,
    aresetn,
    s_axis_divisor_tvalid,
    s_axis_divisor_tready,
    s_axis_divisor_tuser,
    s_axis_divisor_tlast,
    s_axis_divisor_tdata,
    s_axis_dividend_tvalid,
    s_axis_dividend_tready,
    s_axis_dividend_tuser,
    s_axis_dividend_tlast,
    s_axis_dividend_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tready,
    m_axis_dout_tuser,
    m_axis_dout_tlast,
    m_axis_dout_tdata);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_divisor_tvalid;
  output s_axis_divisor_tready;
  input [0:0]s_axis_divisor_tuser;
  input s_axis_divisor_tlast;
  input [7:0]s_axis_divisor_tdata;
  input s_axis_dividend_tvalid;
  output s_axis_dividend_tready;
  input [0:0]s_axis_dividend_tuser;
  input s_axis_dividend_tlast;
  input [15:0]s_axis_dividend_tdata;
  output m_axis_dout_tvalid;
  input m_axis_dout_tready;
  output [0:0]m_axis_dout_tuser;
  output m_axis_dout_tlast;
  output [23:0]m_axis_dout_tdata;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [22:0]\^m_axis_dout_tdata ;
  wire m_axis_dout_tvalid;
  wire [15:0]s_axis_dividend_tdata;
  wire s_axis_dividend_tvalid;
  wire [7:0]s_axis_divisor_tdata;
  wire s_axis_divisor_tvalid;
  wire NLW_i_synth_m_axis_dout_tlast_UNCONNECTED;
  wire NLW_i_synth_s_axis_dividend_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_divisor_tready_UNCONNECTED;
  wire [22:22]NLW_i_synth_m_axis_dout_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_dout_tuser_UNCONNECTED;

  assign m_axis_dout_tdata[23] = \^m_axis_dout_tdata [22];
  assign m_axis_dout_tdata[22:0] = \^m_axis_dout_tdata [22:0];
  assign m_axis_dout_tlast = \<const0> ;
  assign m_axis_dout_tuser[0] = \<const0> ;
  assign s_axis_dividend_tready = \<const1> ;
  assign s_axis_divisor_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_S_AXIS_DIVIDEND_TLAST = "0" *) 
  (* C_HAS_S_AXIS_DIVIDEND_TUSER = "0" *) 
  (* C_HAS_S_AXIS_DIVISOR_TLAST = "0" *) 
  (* C_HAS_S_AXIS_DIVISOR_TUSER = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "24" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_DIVIDEND_TDATA_WIDTH = "16" *) 
  (* C_S_AXIS_DIVIDEND_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_DIVISOR_TDATA_WIDTH = "8" *) 
  (* C_S_AXIS_DIVISOR_TUSER_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* algorithm_type = "4" *) 
  (* c_has_div_by_zero = "0" *) 
  (* divclk_sel = "1" *) 
  (* dividend_width = "15" *) 
  (* divisor_width = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* fractional_b = "0" *) 
  (* fractional_width = "8" *) 
  (* signed_b = "0" *) 
  cal_angle_div_div_gen_v5_1_14_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .m_axis_dout_tdata({\^m_axis_dout_tdata [22],NLW_i_synth_m_axis_dout_tdata_UNCONNECTED[22],\^m_axis_dout_tdata [21:0]}),
        .m_axis_dout_tlast(NLW_i_synth_m_axis_dout_tlast_UNCONNECTED),
        .m_axis_dout_tready(1'b0),
        .m_axis_dout_tuser(NLW_i_synth_m_axis_dout_tuser_UNCONNECTED[0]),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .s_axis_dividend_tdata({1'b0,s_axis_dividend_tdata[14:0]}),
        .s_axis_dividend_tlast(1'b0),
        .s_axis_dividend_tready(NLW_i_synth_s_axis_dividend_tready_UNCONNECTED),
        .s_axis_dividend_tuser(1'b0),
        .s_axis_dividend_tvalid(s_axis_dividend_tvalid),
        .s_axis_divisor_tdata(s_axis_divisor_tdata),
        .s_axis_divisor_tlast(1'b0),
        .s_axis_divisor_tready(NLW_i_synth_s_axis_divisor_tready_UNCONNECTED),
        .s_axis_divisor_tuser(1'b0),
        .s_axis_divisor_tvalid(s_axis_divisor_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
gZu1SY8CK/JrHDtzcU8pxbpsZaBRTduCD4cOOcs33DtfPh13Z8GDRXffarzKRFrY7wdR05orYRHo
gxz7VEq4Mw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oXCESE18H+hgpfL49akiQIfn9nwcZcnlEC2WeOVnRZujDStuwEFNLW8q440rC849j9QGBfbyDMyf
PucktieB2E6u+IN0LgoXJ1hviWXi2aMTjQwJbzKI6Y8s4VPtyG84zwZUSgw3MiEAn1ND9wZNlsAa
5SpZn1m+6brrdKttyoQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lDDXJQQo9YiwNTEImWd9UF1if3cpWTjubZDL55FHgE0eIkI2wz5HPpNQ/YoDvayQRlzGQowduUVc
KbxReNKJF8xDlOw+rmB3+fosfILAltXM4Je4S1PRa97Ycdpm1ae4gFTSJbVzIvOabZ+T9YUOchsK
YatrXkJaOo7JRI+ZJhMDzSFFPx0NDqnG2wAjtaGWMYcQYOlDYaIphgVdOOas8ymx7ZlMIFw6ihK0
qSqsc40DYmLWa2ScMmR+tvbZt6Gw6zuQvS5FDfYFZdd9AkB93755fbElWNCmplvCGNKSiUof4kyn
uTTn2MaxY7145LPzLnJ5nV3L05FgB6ly1RgivA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kLGuGwC6VC/CenJt4x3XjzbXlZm2Tsr/XfOh96IXIeIUpnZtyz88fWkiuR5lEWmQd9O49pZO+ZSM
Y7Uzfd2FzAPCBgSgpmfTiogzFeLhjL9DCHKWixiWCrV/3LCFC/PykfWFtKkHgVRkgIaCkKp+OV2Y
O2g7vJgLNmUUz0Ud8DRky5S9ZdNddTvjp1gVtFMc4FdVHq4XK2jJSUhHCt/0wEGsjwHkbKR/NYzB
9VYiGjNNDyn9G7h/+9BKp9X6NJ4o6cpBDvtYOHMMN8vxhdpeXpDQbQ2ZCZ2FJ6///W4pqVA8cbUL
jtHfXmYh7TSwmqWAQ/8SfUezLv0dKnMAu4jWPg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ABRUWHDQKJmsPu51jP6AsLxdDI6FEgj8GdIFzkrmZFBX01jO38w52iWwWJvmAiFPGX3/jMgesCaZ
36fkKtn/zf8h6LbOffuV/7ay84ETINplaMD9iuILjsAZAvgnxUd6QYQDiYmj/Nne3qEwfx9Jxz9K
YJsJn+iFfHbwST7oExnh0r/a21x2xnF7st8mcek464JElNN32lshx7h1eGcnqVdjpU/igI4R+yPl
7Ayw7qiaKWKaGccaRrlJszfFVOpAyv6WS9A2Iu+Doayv65qg549fhSoT0HD0b+OjkzyFZ4xC8aFa
OFSvcZzBn4JhJYY8oH08Y49gKbijxuWkRblkVg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kWyfC/S+TFffzZhIxHq6+qXTXdobS7d4GBAW9RnlizcaO7HAxuHulghCua6DtlcbGoP1So9G/DLr
kzw6K/IhnQMpeB8wAhs2dqFfbbGJvNznLIqFfNyKsC7O78jPw2nZa90SvjPoJtiR/LjYfmjnGqyg
xGh3UXuBqTwEB4Lxu30=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
muRoSs+bdtmFFGZd10wl0c9URf+3ol7CQXPpbBl52a1hm+uvHQVoN3MZZdHKGfqX1JBLdHsRLQCi
hVB8QQwGUFg7nSuk/rGByi0cDLUcOLk8tIamKjJemsA09GKAXGHaPH0TuR7nxAnQrKS58vEqPL6+
ibLavPNjrIQ3UEH0jji3MXKRYSTb3BU67W2MSVVFTgpdOGL0IF1ACnSJNEE9FJc5VsyajB5sUuQN
vl+aQ8OcaETzGbQQeBpQuJdrgi7lnuLyRc47x6zrAIKoishoCGjIUvVPMQZ4JdCZCLFBphWIA84E
YwKTl02iUpY6G/Imx2PcSwrulzGAZRyyT4SliQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C78Zu+vPFmZVrPmU14pv7kXw7yOMmJUF/EWRT3qrEYS6b2nQrBinSbdCYapluVc0mqr6q99hSMzE
Vj+SSor69VKW/lzjXgtuYWDHh1jPdSwfYr5OYCpPTnEbsQ+BGJiUUNytH4BNIFAvFU8HXwHNcDky
4wz/4SbOu/4lxUWllgra8llgx72fohxlsCehHkqTfYPkl0cDp9RTlnJ5qd/w2NHMbp3mZw9bIL3a
4GLfLfTjRK8jn/6rkyArpai07fYybP+IuoTCL8+QN8T94BSNukhyqgbgDhCzAqvieABsl3DC4Pz6
e5YWR1apbhkSWbrWM1IdFaYkpEqtBPMDbUWN8g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2U6jOxbeKB2bhkNtcJLgTnUqebuK1OD+DfmN3Tw3uAHY8DJaHnGOtBsDA/SSy5bGB4ldVAOBWMyC
R43E00RuPA0LpypXafA1kVXN0DvXT62//Wbw0IriCheO5FVHkMZStf35C2eG8yJHtDABP07+r4nE
xIw+STdb7Mdth+FP8D1HPwjAWURgpixu9yHFSOUqe/TNhu75CXYvt0Q04GdtBUc9e0oaUR9v7dNR
0cTOvjwVhDgYv6zcLsrYvp8wggB1lpq6vdgLZNpkyUVSgjVdxzAESfcsaiQ10yrysE4zQj0KjHXL
c4uzigrkdea96wU73BpNg9u01VIRmCG1JyLdig==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40928)
`pragma protect data_block
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
Ubo=
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
