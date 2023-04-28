-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Apr 22 17:02:43 2023
-- Host        : kali running 64-bit Kali GNU/Linux Rolling
-- Command     : write_vhdl -force -mode synth_stub
--               /media/aaa/I/_ELSE/fpga_prj/fpga_design_course/task_3/ip/para_mem_for_sqrt_lut_0/para_mem_for_sqrt_lut_0_stub.vhdl
-- Design      : para_mem_for_sqrt_lut_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xa7a12tcpg238-2I
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity para_mem_for_sqrt_lut_0 is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 )
  );

end para_mem_for_sqrt_lut_0;

architecture stub of para_mem_for_sqrt_lut_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,addra[9:0],douta[35:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_2,Vivado 2018.3";
begin
end;
