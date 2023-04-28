// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Apr 22 17:02:43 2023
// Host        : kali running 64-bit Kali GNU/Linux Rolling
// Command     : write_verilog -force -mode funcsim
//               /media/aaa/I/_ELSE/fpga_prj/fpga_design_course/task_3/ip/para_mem_for_sqrt_lut_0/para_mem_for_sqrt_lut_0_sim_netlist.v
// Design      : para_mem_for_sqrt_lut_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "para_mem_for_sqrt_lut_0,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module para_mem_for_sqrt_lut_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [35:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [35:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [35:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [35:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.6924 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "para_mem_for_sqrt_lut_0.mem" *) 
  (* C_INIT_FILE_NAME = "para_mem_for_sqrt_lut_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "36" *) 
  (* C_READ_WIDTH_B = "36" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "36" *) 
  (* C_WRITE_WIDTH_B = "36" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[35:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[35:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module para_mem_for_sqrt_lut_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra);
  output [35:0]douta;
  input clka;
  input ena;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [35:0]douta;
  wire ena;

  para_mem_for_sqrt_lut_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module para_mem_for_sqrt_lut_0_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra);
  output [35:0]douta;
  input clka;
  input ena;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [35:0]douta;
  wire ena;

  para_mem_for_sqrt_lut_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module para_mem_for_sqrt_lut_0_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra);
  output [35:0]douta;
  input clka;
  input ena;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [35:0]douta;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1333577311375102466026402443371151753526246244675571574460637328),
    .INITP_01(256'h3311556444664622002220266445555113311155577531000246464200006665),
    .INITP_02(256'h3131133331777557755755666646002002022022002646477557777553111331),
    .INITP_03(256'h1111131131313113333333311311374666444664464644666666442022011113),
    .INITP_04(256'h1133311111111133311331331313156446644444444446644646664646644445),
    .INITP_05(256'h7757575757575757757755664446666666666666444664466420020202013113),
    .INITP_06(256'h1131312202020020220220022002220002222222202222233311133311335775),
    .INITP_07(256'h6644466666444444444444444445577777555777557755775577577571131313),
    .INITP_08(256'h3131131311313131313131313131313313577575575575464466446644664446),
    .INITP_09(256'h3333333333111100222200002220002220022200220022002202200200200201),
    .INITP_0A(256'h6644664446644466444666444667755557777755555577777333333311111133),
    .INITP_0B(256'h7575757557575755757557575575775775755744644644664664464466446644),
    .INITP_0C(256'h2002022020220202202022064646646464646466464646475757575757575775),
    .INITP_0D(256'h1113311331133113311331133133113313311311331331331331330220220200),
    .INITP_0E(256'h2220000022220000222200022220002220002220002220022200022002231133),
    .INITP_0F(256'h3333333333333333333333333311111111113333333311111113333331111122),
    .INIT_00(256'h2E87018E327C815A364501223CDD80E34430009B51BB00456A1380D400000000),
    .INIT_01(256'h200881CF213D01AD22AF0189246C01652582013E27060116291601EB2BD881BE),
    .INIT_02(256'h1ACF82BE1AF902A31B3682871C8B026A1CFA024D1D86022F1E3302101F0701F0),
    .INIT_03(256'h169D0286175B026E1722025617F4823E18D1022618BB820D19B202F319B882D9),
    .INIT_04(256'h14BB03341442831F14CE030A155F82F515F702DF159582C9163B02B316E8029D),
    .INIT_05(256'h122503D1128A83BE12F383AB1360839813D003851344837113BD835D143A0349),
    .INIT_06(256'h115D036111AD835011FF833E1154832D11AC831B12068309126303F612C203E4),
    .INIT_07(256'h102083E7106183D710A483C710E903B6103003A61078039510C20384110E8373),
    .INIT_08(256'h0F4684650F7D84560FB504460FEE84370F2884270F6404170FA104080FE003F8),
    .INIT_09(256'h0EB604DC0EE484CD0E1484BF0E4484B00E7684A10EA884920EDC84830F108474),
    .INIT_0A(256'h0D5E044C0D86043F0DAF04310DD984230E0384150E2F84070E5B84F80E8884EA),
    .INIT_0B(256'h0D3284B80D5504AB0D79049E0D9E04900DC384830DE904750D0F84680D36845A),
    .INIT_0C(256'h0C29851F0C4905130C6905060C8984F90CAA04EC0CCB84DF0CED04D20D0F84C5),
    .INIT_0D(256'h0C3E85830C5A85760C76856A0C93055E0CB085510CCE85450CEC05390C0A852C),
    .INIT_0E(256'h0B6B05E20B8485D70B9D85CB0BB785BF0BD205B30BEC05A70C07059B0C22858F),
    .INIT_0F(256'h0BAB853F0BC285330BDA05280BF1851C0B0905110B2105050B3905FA0B5205EE),
    .INIT_10(256'h0AFE05980B12858D0B2805820B3D85770B53056C0B6885610B7E85550B95854A),
    .INIT_11(256'h0A5E85EF0A7205E50A8585DA0A9885CF0AAC05C40AC005B90AD485AE0AE985A3),
    .INIT_12(256'h0ACC86440ADE063A0AEF862F0A0186250A14061A0A26060F0A3906050A4B85FA),
    .INIT_13(256'h0A4506960A55068C0A6606820A7606780A87066E0A9886630AA906590ABA864F),
    .INIT_14(256'h09C786E709D686DD09E686D309F506C90A0586BF0A1506B50A2486AB0A3506A1),
    .INIT_15(256'h095286350961062C096F8622097D8618098C860E099B060409A986FB09B806F1),
    .INIT_16(256'h09E5868209F306780900066F090D8665091B065C09298652093706490944863F),
    .INIT_17(256'h097F86CD098C06C4099886BA09A586B109B206A809BE869E09CB869509D8868B),
    .INIT_18(256'h091F8716092B070D09378704094306FB094F06F2095B06E9096786DF097306D6),
    .INIT_19(256'h08C5075E08D0075508DB074C08E6874308F2073A08FD8731090887280914871F),
    .INIT_1A(256'h087087A5087A079C08850793088F078B089A878208A5077908AF877008BA0767),
    .INIT_1B(256'h081F07EA082907E2083387D9083D87D0084787C8085107BF085B87B6086607AE),
    .INIT_1C(256'h08D3872E08DC072608E6071D08EF871508F8870C08020704080C07FB081587F3),
    .INIT_1D(256'h088A077108930769089C076008A5075808AE075008B7074708C0873F08CA0737),
    .INIT_1E(256'h084507B3084E07AB085607A2085F079A086787920870878A0879078208818779),
    .INIT_1F(256'h080407F3080C07EB081407E3081C87DB082487D3082C07CB083507C3083D87BB),
    .INIT_20(256'h07C5883307CC882B07D4082307DC881B07E4881307EC080B07F4080407FC07FC),
    .INIT_21(256'h078988720790086A07980862079F085A07A6885307AE084B07B6084307BD083B),
    .INIT_22(256'h075008B0075708A8075E08A007650899076C889107730889077A88810782087A),
    .INIT_23(256'h071908ED071F88E5072608DD072D88D6073488CE073B08C7074208BF074908B7),
    .INIT_24(256'h07E4882907EA882107F1881A07F7881207FE880B07050803070B08FC071288F4),
    .INIT_25(256'h07B1886407B8085D07BE885507C4084E07CA884607D1083F07D7083807DD8830),
    .INIT_26(256'h0781089E07870897078D08900793088907998881079F887A07A5087307AB086B),
    .INIT_27(256'h075288D8075808D1075D88CA076388C3076908BB076F88B4077588AD077B88A6),
    .INIT_28(256'h07258911072A890A07308903073608FC073B08F5074188EE074708E7074C08DF),
    .INIT_29(256'h06F9894A06FF89430704093C070A0935070F892D07148926071A891F071F8918),
    .INIT_2A(256'h06D0098106D5097A06DA897306DF096C06E4896506EA095F06EF895806F40951),
    .INIT_2B(256'h06A709B806AC09B106B109AB06B609A406BB099D06C0099606C5898F06CA8988),
    .INIT_2C(256'h068089EF068589E8068A09E1068E89DA069389D4069809CD069D09C606A209BF),
    .INIT_2D(256'h065A0924065F891E0663891706680910066D890A06720903067689FC067B09F5),
    .INIT_2E(256'h0636095A063A0953063F094C064309460648093F064C8938065189320655892B),
    .INIT_2F(256'h0612098E06168988061B8981061F097B062409740628096D062D096706310960),
    .INIT_30(256'h06F009C206F489BC06F809B506FC89AF060109A8060509A20609899B060E0995),
    .INIT_31(256'h06CE89F606D289EF06D709E906DB09E306DF89DC06E309D606E789CF06EB89C9),
    .INIT_32(256'h06AE0A2906B28A2306B60A1C06BA0A1606BE0A0F06C20A0906C60A0306CA89FC),
    .INIT_33(256'h068F0A5B06928A5506968A4F069A8A49069E0A4206A20A3C06A60A3606AA0A2F),
    .INIT_34(256'h06700A8E06748A8706780A81067B8A7B067F0A7506830A6E06878A68068B0A62),
    .INIT_35(256'h06528ABF06560AB9065A8AB3065D8AAD06610AA606658AA006690A9A066C8A94),
    .INIT_36(256'h06360AF006390AEA063D0AE406408ADE06448AD806480AD2064B0ACB064F8AC5),
    .INIT_37(256'h061A0A21061D8A1B06208A1506248A0F06278A09062B8A03062E8AFC06320AF6),
    .INIT_38(256'h05FE0A5106020A4B06058A4506088A3F060C8A39060F0A3306130A2D06160A27),
    .INIT_39(256'h05E40A8105E78A7B05EA0A7505ED8A6F05F18A6905F40A6305F78A5D05FB8A57),
    .INIT_3A(256'h05CA0AB005CD8AAA05D00AA505D38A9F05D70A9905DA8A9305DD0A8D05E08A87),
    .INIT_3B(256'h05B08ADF05B38ADA05B70AD405BA8ACE05BD8AC805C00AC205C38ABC05C68AB6),
    .INIT_3C(256'h05980B0E059B0B08059E8B0205A18AFD05A48AF705A70AF105AA0AEB05AD0AE5),
    .INIT_3D(256'h05800B3C05830B3705860B3105890B2B058C0B25058F0B1F05920B1A05950B14),
    .INIT_3E(256'h05680B6A056B0B64056E8B5F05718B5905748B5305778B4E057A0B48057D0B42),
    .INIT_3F(256'h05510B9805540B9205578B8C055A8B87055D0B81055F8B7B05628B7605658B70),
    .INIT_40(256'h053B8BC5053E0BBF05408BBA05430BB405468BAE05498BA9054C0BA3054E8B9D),
    .INIT_41(256'h05258BF205280BEC052A8BE6052D0BE105308BDB05330BD605358BD005380BCA),
    .INIT_42(256'h05100B1E05120B1805158B1305180B0D051A0B08051D8B0205200BFD05220BF7),
    .INIT_43(256'h05FB0B4A05FD0B4505008B3F05028B3A05050B3405080B2F050A8B29050D8B24),
    .INIT_44(256'h05E60B7605E90B7105EB0B6B05EE8B6605F08B6005F38B5B05F58B5505F80B50),
    .INIT_45(256'h05D20BA105D50B9C05D70B9705DA0B9105DC0B8C05DF0B8605E10B8105E40B7B),
    .INIT_46(256'h05BF0BCD05C18BC705C38BC205C68BBC05C88BB705CB0BB205CD0BAC05D00BA7),
    .INIT_47(256'h05AB8BF705AE0BF205B00BED05B30BE705B58BE205B78BDD05BA0BD705BC0BD2),
    .INIT_48(256'h05990C22059B8C1D059D0C1705A00C1205A28C0D05A48C0705A70C0205A98BFD),
    .INIT_49(256'h05860C4C05888C47058B0C42058D0C3D058F8C3705920C3205948C2D05960C27),
    .INIT_4A(256'h05740C7605768C7105790C6C057B8C67057D0C61057F8C5C05820C5705848C52),
    .INIT_4B(256'h05628CA005650C9B05678C9605690C90056B0C8B056D8C8605700C8105728C7C),
    .INIT_4C(256'h05510CCA05530CC405558CBF05580CBA055A0CB5055C8CB0055E0CAA05600CA5),
    .INIT_4D(256'h05400CF305420CEE05448CE805468CE305490CDE054B0CD9054D8CD4054F8CCF),
    .INIT_4E(256'h052F8C1C05318C1705340C1105360C0C05380C07053A8C02053C8CFD053E8CF8),
    .INIT_4F(256'h051F0C4405210C3F05230C3A05250C3505270C3005290C2B052B8C26052D8C21),
    .INIT_50(256'h050F8C6D05118C6805138C6305158C5E05178C5805198C53051B0C4E051D0C49),
    .INIT_51(256'h04FF0C9505010C9005030C8B05050C8605070C8105090C7C050B0C77050D0C72),
    .INIT_52(256'h04F00CBD04F20CB804F40CB304F60CAE04F78CA904F98CA404FB8C9F04FD8C9A),
    .INIT_53(256'h04E10CE404E28CDF04E48CDA04E60CD604E80CD104EA0CCC04EC8CC704EE8CC2),
    .INIT_54(256'h04D20D0C04D38D0704D58D0204D70CFD04D90CF804DB8CF304DD8CEE04DF0CE9),
    .INIT_55(256'h04C38D3304C58D2E04C70D2904C88D2404CA0D1F04CC0D1B04CE8D1604D08D11),
    .INIT_56(256'h04B50D5A04B68D5504B80D5004BA8D4B04BC0D4704BE0D4204BF8D3D04C10D38),
    .INIT_57(256'h04A68D8104A80D7C04AA8D7704AC0D7204AD8D6D04AF0D6904B18D6404B30D5F),
    .INIT_58(256'h04988DA7049A0DA2049C8D9E049E0D99049F8D9404A10D8F04A38D8A04A50D86),
    .INIT_59(256'h048B0DCE048C8DC9048E0DC404908DBF04920DBA04938DB604958DB104970DAC),
    .INIT_5A(256'h047D8DF4047F8DEF04810DEA04828DE504848DE104860DDC04878DD704890DD2),
    .INIT_5B(256'h04700D1A04720D1504738D1004758D0B04770D0704788D02047A8DFD047C0DF8),
    .INIT_5C(256'h04638D3F04650D3B04660D3604688D3104698D2C046B0D28046D0D23046E8D1E),
    .INIT_5D(256'h04560D6504580D6004598D5B045B8D57045D0D52045E0D4D04600D4904618D44),
    .INIT_5E(256'h044A0D8A044B0D85044D0D81044E0D7C04508D7704518D7304538D6E04550D69),
    .INIT_5F(256'h043D0DAF043F0DAA04400DA604420DA104438D9D04458D9804468D9304488D8F),
    .INIT_60(256'h04318DD404328DCF04348DCB04358DC604378DC204388DBD043A0DB8043C0DB4),
    .INIT_61(256'h04258DF904268DF404288DEF04298DEB042B8DE6042C8DE2042E8DDD042F8DD9),
    .INIT_62(256'h04198E1D041A8E19041C8E14041D8E0F041F8E0B04208E0604228E0204238DFD),
    .INIT_63(256'h040D8E41040F0E3D04100E3804120E3404130E2F04150E2B04160E2604178E22),
    .INIT_64(256'h04028E6604030E6104050E5D04060E5804078E5404098E4F040A8E4B040C8E46),
    .INIT_65(256'h04F68E8A04F88E8504F90E8104FB0E7C04FC0E7804FD8E7304FF8E6F04008E6A),
    .INIT_66(256'h04EB0EAD04ED0EA904EE0EA404EF8EA004F18E9C04F20E9704F40E9304F50E8E),
    .INIT_67(256'h04E00ED104E20ECD04E38EC804E48EC404E60EBF04E70EBB04E88EB604EA8EB2),
    .INIT_68(256'h04D58EF404D70EF004D80EEC04D98EE704DB8EE304DC0EDE04DE0EDA04DF8ED5),
    .INIT_69(256'h04CB0E1804CC0E1304CD8E0F04CF0E0B04D00E0604D18E0204D30EFD04D40EF9),
    .INIT_6A(256'h04C00E3B04C18E3604C38E3204C40E2E04C58E2904C70E2504C80E2104C98E1C),
    .INIT_6B(256'h04B60E5E04B70E5904B88E5504BA0E5104BB8E4C04BC0E4804BE0E4404BF8E3F),
    .INIT_6C(256'h04AB8E8104AD0E7C04AE0E7804AF8E7404B10E6F04B28E6B04B30E6704B48E62),
    .INIT_6D(256'h04A18EA304A30E9F04A48E9B04A50E9604A68E9204A80E8E04A98E8904AA0E85),
    .INIT_6E(256'h04978EC604990EC1049A8EBD049B0EB9049C8EB4049E0EB0049F8EAC04A00EA8),
    .INIT_6F(256'h048E0EE8048F0EE404908EDF04910EDB04928ED704940ED304958ECE04960ECA),
    .INIT_70(256'h04848F0A04850F0604860F0204878EFD04890EF9048A8EF5048B0EF1048C8EEC),
    .INIT_71(256'h047A0F2C047B8F28047D0F24047E8F1F047F8F1B04800F1704818F1304830F0E),
    .INIT_72(256'h04710F4E04728F4A04730F4604748F4104758F3D04770F3904788F3504790F30),
    .INIT_73(256'h04678F7004690F6C046A0F67046B8F63046C0F5F046D0F5B046E8F5604700F52),
    .INIT_74(256'h045E0F91045F8F8D04608F8904620F8504638F8104648F7C04650F7804660F74),
    .INIT_75(256'h04550FB304560FAF04578FAA04588FA6045A0FA2045B8F9E045C8F9A045D0F96),
    .INIT_76(256'h044C0FD4044D0FD0044E8FCC044F8FC804510FC304520FBF04538FBB04548FB7),
    .INIT_77(256'h04430FF504448FF104458FED04470FE904480FE504498FE0044A8FDC044B8FD8),
    .INIT_78(256'h043A8F16043C0F12043D0F0E043E0F0A043F8F0604408F0204410FFD04420FF9),
    .INIT_79(256'h04328F3704338F3304348F2F04350F2B04360F2704370F2304388F1E04398F1A),
    .INIT_7A(256'h04290F58042A8F54042B8F50042C8F4C042E0F47042F0F4304300F3F04310F3B),
    .INIT_7B(256'h04218F7804228F7404238F7004248F6C04250F6804260F6404270F6004280F5C),
    .INIT_7C(256'h04188F9904198F95041B0F91041C0F8D041D0F89041E0F85041F0F8104200F7C),
    .INIT_7D(256'h04100FB904110FB504128FB104138FAD04148FA904158FA504168FA104178F9D),
    .INIT_7E(256'h04080FD904090FD5040A0FD1040B0FCD040C0FC9040D0FC5040E0FC1040F0FBD),
    .INIT_7F(256'h04000FFA04010FF504020FF104030FED04040FE904050FE504060FE104070FDD),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({douta[34:27],douta[25:18],douta[16:9],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({douta[35],douta[26],douta[17],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module para_mem_for_sqrt_lut_0_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra);
  output [35:0]douta;
  input clka;
  input ena;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [35:0]douta;
  wire ena;

  para_mem_for_sqrt_lut_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "10" *) (* C_ADDRB_WIDTH = "10" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.6924 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "para_mem_for_sqrt_lut_0.mem" *) 
(* C_INIT_FILE_NAME = "para_mem_for_sqrt_lut_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1024" *) (* C_READ_DEPTH_B = "1024" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "36" *) (* C_READ_WIDTH_B = "36" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "1024" *) 
(* C_WRITE_DEPTH_B = "1024" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "36" *) (* C_WRITE_WIDTH_B = "36" *) (* C_XDEVICEFAMILY = "aartix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [35:0]dina;
  output [35:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [35:0]dinb;
  output [35:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [9:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [35:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [35:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [9:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [9:0]addra;
  wire clka;
  wire [35:0]douta;
  wire ena;

  assign dbiterr = \<const0> ;
  assign doutb[35] = \<const0> ;
  assign doutb[34] = \<const0> ;
  assign doutb[33] = \<const0> ;
  assign doutb[32] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    ena,
    addra);
  output [35:0]douta;
  input clka;
  input ena;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [35:0]douta;
  wire ena;

  para_mem_for_sqrt_lut_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule
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
