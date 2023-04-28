-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Apr 22 17:02:43 2023
-- Host        : kali running 64-bit Kali GNU/Linux Rolling
-- Command     : write_vhdl -force -mode funcsim
--               /media/aaa/I/_ELSE/fpga_prj/fpga_design_course/task_3/ip/para_mem_for_sqrt_lut_0/para_mem_for_sqrt_lut_0_sim_netlist.vhdl
-- Design      : para_mem_for_sqrt_lut_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xa7a12tcpg238-2I
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity para_mem_for_sqrt_lut_0_blk_mem_gen_prim_wrapper_init is
  port (
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of para_mem_for_sqrt_lut_0_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end para_mem_for_sqrt_lut_0_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of para_mem_for_sqrt_lut_0_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"1333577311375102466026402443371151753526246244675571574460637328",
      INITP_01 => X"3311556444664622002220266445555113311155577531000246464200006665",
      INITP_02 => X"3131133331777557755755666646002002022022002646477557777553111331",
      INITP_03 => X"1111131131313113333333311311374666444664464644666666442022011113",
      INITP_04 => X"1133311111111133311331331313156446644444444446644646664646644445",
      INITP_05 => X"7757575757575757757755664446666666666666444664466420020202013113",
      INITP_06 => X"1131312202020020220220022002220002222222202222233311133311335775",
      INITP_07 => X"6644466666444444444444444445577777555777557755775577577571131313",
      INITP_08 => X"3131131311313131313131313131313313577575575575464466446644664446",
      INITP_09 => X"3333333333111100222200002220002220022200220022002202200200200201",
      INITP_0A => X"6644664446644466444666444667755557777755555577777333333311111133",
      INITP_0B => X"7575757557575755757557575575775775755744644644664664464466446644",
      INITP_0C => X"2002022020220202202022064646646464646466464646475757575757575775",
      INITP_0D => X"1113311331133113311331133133113313311311331331331331330220220200",
      INITP_0E => X"2220000022220000222200022220002220002220002220022200022002231133",
      INITP_0F => X"3333333333333333333333333311111111113333333311111113333331111122",
      INIT_00 => X"2E87018E327C815A364501223CDD80E34430009B51BB00456A1380D400000000",
      INIT_01 => X"200881CF213D01AD22AF0189246C01652582013E27060116291601EB2BD881BE",
      INIT_02 => X"1ACF82BE1AF902A31B3682871C8B026A1CFA024D1D86022F1E3302101F0701F0",
      INIT_03 => X"169D0286175B026E1722025617F4823E18D1022618BB820D19B202F319B882D9",
      INIT_04 => X"14BB03341442831F14CE030A155F82F515F702DF159582C9163B02B316E8029D",
      INIT_05 => X"122503D1128A83BE12F383AB1360839813D003851344837113BD835D143A0349",
      INIT_06 => X"115D036111AD835011FF833E1154832D11AC831B12068309126303F612C203E4",
      INIT_07 => X"102083E7106183D710A483C710E903B6103003A61078039510C20384110E8373",
      INIT_08 => X"0F4684650F7D84560FB504460FEE84370F2884270F6404170FA104080FE003F8",
      INIT_09 => X"0EB604DC0EE484CD0E1484BF0E4484B00E7684A10EA884920EDC84830F108474",
      INIT_0A => X"0D5E044C0D86043F0DAF04310DD984230E0384150E2F84070E5B84F80E8884EA",
      INIT_0B => X"0D3284B80D5504AB0D79049E0D9E04900DC384830DE904750D0F84680D36845A",
      INIT_0C => X"0C29851F0C4905130C6905060C8984F90CAA04EC0CCB84DF0CED04D20D0F84C5",
      INIT_0D => X"0C3E85830C5A85760C76856A0C93055E0CB085510CCE85450CEC05390C0A852C",
      INIT_0E => X"0B6B05E20B8485D70B9D85CB0BB785BF0BD205B30BEC05A70C07059B0C22858F",
      INIT_0F => X"0BAB853F0BC285330BDA05280BF1851C0B0905110B2105050B3905FA0B5205EE",
      INIT_10 => X"0AFE05980B12858D0B2805820B3D85770B53056C0B6885610B7E85550B95854A",
      INIT_11 => X"0A5E85EF0A7205E50A8585DA0A9885CF0AAC05C40AC005B90AD485AE0AE985A3",
      INIT_12 => X"0ACC86440ADE063A0AEF862F0A0186250A14061A0A26060F0A3906050A4B85FA",
      INIT_13 => X"0A4506960A55068C0A6606820A7606780A87066E0A9886630AA906590ABA864F",
      INIT_14 => X"09C786E709D686DD09E686D309F506C90A0586BF0A1506B50A2486AB0A3506A1",
      INIT_15 => X"095286350961062C096F8622097D8618098C860E099B060409A986FB09B806F1",
      INIT_16 => X"09E5868209F306780900066F090D8665091B065C09298652093706490944863F",
      INIT_17 => X"097F86CD098C06C4099886BA09A586B109B206A809BE869E09CB869509D8868B",
      INIT_18 => X"091F8716092B070D09378704094306FB094F06F2095B06E9096786DF097306D6",
      INIT_19 => X"08C5075E08D0075508DB074C08E6874308F2073A08FD8731090887280914871F",
      INIT_1A => X"087087A5087A079C08850793088F078B089A878208A5077908AF877008BA0767",
      INIT_1B => X"081F07EA082907E2083387D9083D87D0084787C8085107BF085B87B6086607AE",
      INIT_1C => X"08D3872E08DC072608E6071D08EF871508F8870C08020704080C07FB081587F3",
      INIT_1D => X"088A077108930769089C076008A5075808AE075008B7074708C0873F08CA0737",
      INIT_1E => X"084507B3084E07AB085607A2085F079A086787920870878A0879078208818779",
      INIT_1F => X"080407F3080C07EB081407E3081C87DB082487D3082C07CB083507C3083D87BB",
      INIT_20 => X"07C5883307CC882B07D4082307DC881B07E4881307EC080B07F4080407FC07FC",
      INIT_21 => X"078988720790086A07980862079F085A07A6885307AE084B07B6084307BD083B",
      INIT_22 => X"075008B0075708A8075E08A007650899076C889107730889077A88810782087A",
      INIT_23 => X"071908ED071F88E5072608DD072D88D6073488CE073B08C7074208BF074908B7",
      INIT_24 => X"07E4882907EA882107F1881A07F7881207FE880B07050803070B08FC071288F4",
      INIT_25 => X"07B1886407B8085D07BE885507C4084E07CA884607D1083F07D7083807DD8830",
      INIT_26 => X"0781089E07870897078D08900793088907998881079F887A07A5087307AB086B",
      INIT_27 => X"075288D8075808D1075D88CA076388C3076908BB076F88B4077588AD077B88A6",
      INIT_28 => X"07258911072A890A07308903073608FC073B08F5074188EE074708E7074C08DF",
      INIT_29 => X"06F9894A06FF89430704093C070A0935070F892D07148926071A891F071F8918",
      INIT_2A => X"06D0098106D5097A06DA897306DF096C06E4896506EA095F06EF895806F40951",
      INIT_2B => X"06A709B806AC09B106B109AB06B609A406BB099D06C0099606C5898F06CA8988",
      INIT_2C => X"068089EF068589E8068A09E1068E89DA069389D4069809CD069D09C606A209BF",
      INIT_2D => X"065A0924065F891E0663891706680910066D890A06720903067689FC067B09F5",
      INIT_2E => X"0636095A063A0953063F094C064309460648093F064C8938065189320655892B",
      INIT_2F => X"0612098E06168988061B8981061F097B062409740628096D062D096706310960",
      INIT_30 => X"06F009C206F489BC06F809B506FC89AF060109A8060509A20609899B060E0995",
      INIT_31 => X"06CE89F606D289EF06D709E906DB09E306DF89DC06E309D606E789CF06EB89C9",
      INIT_32 => X"06AE0A2906B28A2306B60A1C06BA0A1606BE0A0F06C20A0906C60A0306CA89FC",
      INIT_33 => X"068F0A5B06928A5506968A4F069A8A49069E0A4206A20A3C06A60A3606AA0A2F",
      INIT_34 => X"06700A8E06748A8706780A81067B8A7B067F0A7506830A6E06878A68068B0A62",
      INIT_35 => X"06528ABF06560AB9065A8AB3065D8AAD06610AA606658AA006690A9A066C8A94",
      INIT_36 => X"06360AF006390AEA063D0AE406408ADE06448AD806480AD2064B0ACB064F8AC5",
      INIT_37 => X"061A0A21061D8A1B06208A1506248A0F06278A09062B8A03062E8AFC06320AF6",
      INIT_38 => X"05FE0A5106020A4B06058A4506088A3F060C8A39060F0A3306130A2D06160A27",
      INIT_39 => X"05E40A8105E78A7B05EA0A7505ED8A6F05F18A6905F40A6305F78A5D05FB8A57",
      INIT_3A => X"05CA0AB005CD8AAA05D00AA505D38A9F05D70A9905DA8A9305DD0A8D05E08A87",
      INIT_3B => X"05B08ADF05B38ADA05B70AD405BA8ACE05BD8AC805C00AC205C38ABC05C68AB6",
      INIT_3C => X"05980B0E059B0B08059E8B0205A18AFD05A48AF705A70AF105AA0AEB05AD0AE5",
      INIT_3D => X"05800B3C05830B3705860B3105890B2B058C0B25058F0B1F05920B1A05950B14",
      INIT_3E => X"05680B6A056B0B64056E8B5F05718B5905748B5305778B4E057A0B48057D0B42",
      INIT_3F => X"05510B9805540B9205578B8C055A8B87055D0B81055F8B7B05628B7605658B70",
      INIT_40 => X"053B8BC5053E0BBF05408BBA05430BB405468BAE05498BA9054C0BA3054E8B9D",
      INIT_41 => X"05258BF205280BEC052A8BE6052D0BE105308BDB05330BD605358BD005380BCA",
      INIT_42 => X"05100B1E05120B1805158B1305180B0D051A0B08051D8B0205200BFD05220BF7",
      INIT_43 => X"05FB0B4A05FD0B4505008B3F05028B3A05050B3405080B2F050A8B29050D8B24",
      INIT_44 => X"05E60B7605E90B7105EB0B6B05EE8B6605F08B6005F38B5B05F58B5505F80B50",
      INIT_45 => X"05D20BA105D50B9C05D70B9705DA0B9105DC0B8C05DF0B8605E10B8105E40B7B",
      INIT_46 => X"05BF0BCD05C18BC705C38BC205C68BBC05C88BB705CB0BB205CD0BAC05D00BA7",
      INIT_47 => X"05AB8BF705AE0BF205B00BED05B30BE705B58BE205B78BDD05BA0BD705BC0BD2",
      INIT_48 => X"05990C22059B8C1D059D0C1705A00C1205A28C0D05A48C0705A70C0205A98BFD",
      INIT_49 => X"05860C4C05888C47058B0C42058D0C3D058F8C3705920C3205948C2D05960C27",
      INIT_4A => X"05740C7605768C7105790C6C057B8C67057D0C61057F8C5C05820C5705848C52",
      INIT_4B => X"05628CA005650C9B05678C9605690C90056B0C8B056D8C8605700C8105728C7C",
      INIT_4C => X"05510CCA05530CC405558CBF05580CBA055A0CB5055C8CB0055E0CAA05600CA5",
      INIT_4D => X"05400CF305420CEE05448CE805468CE305490CDE054B0CD9054D8CD4054F8CCF",
      INIT_4E => X"052F8C1C05318C1705340C1105360C0C05380C07053A8C02053C8CFD053E8CF8",
      INIT_4F => X"051F0C4405210C3F05230C3A05250C3505270C3005290C2B052B8C26052D8C21",
      INIT_50 => X"050F8C6D05118C6805138C6305158C5E05178C5805198C53051B0C4E051D0C49",
      INIT_51 => X"04FF0C9505010C9005030C8B05050C8605070C8105090C7C050B0C77050D0C72",
      INIT_52 => X"04F00CBD04F20CB804F40CB304F60CAE04F78CA904F98CA404FB8C9F04FD8C9A",
      INIT_53 => X"04E10CE404E28CDF04E48CDA04E60CD604E80CD104EA0CCC04EC8CC704EE8CC2",
      INIT_54 => X"04D20D0C04D38D0704D58D0204D70CFD04D90CF804DB8CF304DD8CEE04DF0CE9",
      INIT_55 => X"04C38D3304C58D2E04C70D2904C88D2404CA0D1F04CC0D1B04CE8D1604D08D11",
      INIT_56 => X"04B50D5A04B68D5504B80D5004BA8D4B04BC0D4704BE0D4204BF8D3D04C10D38",
      INIT_57 => X"04A68D8104A80D7C04AA8D7704AC0D7204AD8D6D04AF0D6904B18D6404B30D5F",
      INIT_58 => X"04988DA7049A0DA2049C8D9E049E0D99049F8D9404A10D8F04A38D8A04A50D86",
      INIT_59 => X"048B0DCE048C8DC9048E0DC404908DBF04920DBA04938DB604958DB104970DAC",
      INIT_5A => X"047D8DF4047F8DEF04810DEA04828DE504848DE104860DDC04878DD704890DD2",
      INIT_5B => X"04700D1A04720D1504738D1004758D0B04770D0704788D02047A8DFD047C0DF8",
      INIT_5C => X"04638D3F04650D3B04660D3604688D3104698D2C046B0D28046D0D23046E8D1E",
      INIT_5D => X"04560D6504580D6004598D5B045B8D57045D0D52045E0D4D04600D4904618D44",
      INIT_5E => X"044A0D8A044B0D85044D0D81044E0D7C04508D7704518D7304538D6E04550D69",
      INIT_5F => X"043D0DAF043F0DAA04400DA604420DA104438D9D04458D9804468D9304488D8F",
      INIT_60 => X"04318DD404328DCF04348DCB04358DC604378DC204388DBD043A0DB8043C0DB4",
      INIT_61 => X"04258DF904268DF404288DEF04298DEB042B8DE6042C8DE2042E8DDD042F8DD9",
      INIT_62 => X"04198E1D041A8E19041C8E14041D8E0F041F8E0B04208E0604228E0204238DFD",
      INIT_63 => X"040D8E41040F0E3D04100E3804120E3404130E2F04150E2B04160E2604178E22",
      INIT_64 => X"04028E6604030E6104050E5D04060E5804078E5404098E4F040A8E4B040C8E46",
      INIT_65 => X"04F68E8A04F88E8504F90E8104FB0E7C04FC0E7804FD8E7304FF8E6F04008E6A",
      INIT_66 => X"04EB0EAD04ED0EA904EE0EA404EF8EA004F18E9C04F20E9704F40E9304F50E8E",
      INIT_67 => X"04E00ED104E20ECD04E38EC804E48EC404E60EBF04E70EBB04E88EB604EA8EB2",
      INIT_68 => X"04D58EF404D70EF004D80EEC04D98EE704DB8EE304DC0EDE04DE0EDA04DF8ED5",
      INIT_69 => X"04CB0E1804CC0E1304CD8E0F04CF0E0B04D00E0604D18E0204D30EFD04D40EF9",
      INIT_6A => X"04C00E3B04C18E3604C38E3204C40E2E04C58E2904C70E2504C80E2104C98E1C",
      INIT_6B => X"04B60E5E04B70E5904B88E5504BA0E5104BB8E4C04BC0E4804BE0E4404BF8E3F",
      INIT_6C => X"04AB8E8104AD0E7C04AE0E7804AF8E7404B10E6F04B28E6B04B30E6704B48E62",
      INIT_6D => X"04A18EA304A30E9F04A48E9B04A50E9604A68E9204A80E8E04A98E8904AA0E85",
      INIT_6E => X"04978EC604990EC1049A8EBD049B0EB9049C8EB4049E0EB0049F8EAC04A00EA8",
      INIT_6F => X"048E0EE8048F0EE404908EDF04910EDB04928ED704940ED304958ECE04960ECA",
      INIT_70 => X"04848F0A04850F0604860F0204878EFD04890EF9048A8EF5048B0EF1048C8EEC",
      INIT_71 => X"047A0F2C047B8F28047D0F24047E8F1F047F8F1B04800F1704818F1304830F0E",
      INIT_72 => X"04710F4E04728F4A04730F4604748F4104758F3D04770F3904788F3504790F30",
      INIT_73 => X"04678F7004690F6C046A0F67046B8F63046C0F5F046D0F5B046E8F5604700F52",
      INIT_74 => X"045E0F91045F8F8D04608F8904620F8504638F8104648F7C04650F7804660F74",
      INIT_75 => X"04550FB304560FAF04578FAA04588FA6045A0FA2045B8F9E045C8F9A045D0F96",
      INIT_76 => X"044C0FD4044D0FD0044E8FCC044F8FC804510FC304520FBF04538FBB04548FB7",
      INIT_77 => X"04430FF504448FF104458FED04470FE904480FE504498FE0044A8FDC044B8FD8",
      INIT_78 => X"043A8F16043C0F12043D0F0E043E0F0A043F8F0604408F0204410FFD04420FF9",
      INIT_79 => X"04328F3704338F3304348F2F04350F2B04360F2704370F2304388F1E04398F1A",
      INIT_7A => X"04290F58042A8F54042B8F50042C8F4C042E0F47042F0F4304300F3F04310F3B",
      INIT_7B => X"04218F7804228F7404238F7004248F6C04250F6804260F6404270F6004280F5C",
      INIT_7C => X"04188F9904198F95041B0F91041C0F8D041D0F89041E0F85041F0F8104200F7C",
      INIT_7D => X"04100FB904110FB504128FB104138FAD04148FA904158FA504168FA104178F9D",
      INIT_7E => X"04080FD904090FD5040A0FD1040B0FCD040C0FC9040D0FC5040E0FC1040F0FBD",
      INIT_7F => X"04000FFA04010FF504020FF104030FED04040FE904050FE504060FE104070FDD",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 24) => douta(34 downto 27),
      DOADO(23 downto 16) => douta(25 downto 18),
      DOADO(15 downto 8) => douta(16 downto 9),
      DOADO(7 downto 0) => douta(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3) => douta(35),
      DOPADOP(2) => douta(26),
      DOPADOP(1) => douta(17),
      DOPADOP(0) => douta(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity para_mem_for_sqrt_lut_0_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of para_mem_for_sqrt_lut_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end para_mem_for_sqrt_lut_0_blk_mem_gen_prim_width;

architecture STRUCTURE of para_mem_for_sqrt_lut_0_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.para_mem_for_sqrt_lut_0_blk_mem_gen_prim_wrapper_init
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      douta(35 downto 0) => douta(35 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity para_mem_for_sqrt_lut_0_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of para_mem_for_sqrt_lut_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end para_mem_for_sqrt_lut_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of para_mem_for_sqrt_lut_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.para_mem_for_sqrt_lut_0_blk_mem_gen_prim_width
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      douta(35 downto 0) => douta(35 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity para_mem_for_sqrt_lut_0_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of para_mem_for_sqrt_lut_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end para_mem_for_sqrt_lut_0_blk_mem_gen_top;

architecture STRUCTURE of para_mem_for_sqrt_lut_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.para_mem_for_sqrt_lut_0_blk_mem_gen_generic_cstr
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      douta(35 downto 0) => douta(35 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2_synth : entity is "blk_mem_gen_v8_4_2_synth";
end para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2_synth;

architecture STRUCTURE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.para_mem_for_sqrt_lut_0_blk_mem_gen_top
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      douta(35 downto 0) => douta(35 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 35 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 35 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "Estimated Power for IP     :     2.6924 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "para_mem_for_sqrt_lut_0.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "para_mem_for_sqrt_lut_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1024;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 36;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 36;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 36;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is 36;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "aartix7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "blk_mem_gen_v8_4_2";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 : entity is "yes";
end para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2;

architecture STRUCTURE of para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(35) <= \<const0>\;
  doutb(34) <= \<const0>\;
  doutb(33) <= \<const0>\;
  doutb(32) <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2_synth
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      douta(35 downto 0) => douta(35 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity para_mem_for_sqrt_lut_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of para_mem_for_sqrt_lut_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of para_mem_for_sqrt_lut_0 : entity is "para_mem_for_sqrt_lut_0,blk_mem_gen_v8_4_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of para_mem_for_sqrt_lut_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of para_mem_for_sqrt_lut_0 : entity is "blk_mem_gen_v8_4_2,Vivado 2018.3";
end para_mem_for_sqrt_lut_0;

architecture STRUCTURE of para_mem_for_sqrt_lut_0 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.6924 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "para_mem_for_sqrt_lut_0.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "para_mem_for_sqrt_lut_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 1024;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 36;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 36;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 36;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 36;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "aartix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.para_mem_for_sqrt_lut_0_blk_mem_gen_v8_4_2
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => B"0000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(35 downto 0) => B"000000000000000000000000000000000000",
      dinb(35 downto 0) => B"000000000000000000000000000000000000",
      douta(35 downto 0) => douta(35 downto 0),
      doutb(35 downto 0) => NLW_U0_doutb_UNCONNECTED(35 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(9 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(9 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(9 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(9 downto 0),
      s_axi_rdata(35 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(35 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(35 downto 0) => B"000000000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
