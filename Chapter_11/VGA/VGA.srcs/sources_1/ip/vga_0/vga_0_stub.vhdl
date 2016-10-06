-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Tue Sep 20 11:43:01 2016
-- Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/zhehengt/Desktop/Digital_Design_Lab/Chapter_11/VGA/VGA.srcs/sources_1/ip/vga_0/vga_0_stub.vhdl
-- Design      : vga_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vga_0 is
  Port ( 
    vga_pclk : in STD_LOGIC;
    vga_rst : in STD_LOGIC;
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_valid : out STD_LOGIC;
    vga_h_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vga_v_cnt : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );

end vga_0;

architecture stub of vga_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vga_pclk,vga_rst,vga_hsync,vga_vsync,vga_valid,vga_h_cnt[11:0],vga_v_cnt[10:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vga,Vivado 2014.4";
begin
end;
