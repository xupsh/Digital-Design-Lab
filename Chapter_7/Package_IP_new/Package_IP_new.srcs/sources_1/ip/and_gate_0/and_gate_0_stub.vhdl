-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Tue Sep 27 14:37:46 2016
-- Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/zhehengt/Desktop/Digital_Design_Lab/Chapter_7/Package_IP_new/Package_IP_new.srcs/sources_1/ip/and_gate_0/and_gate_0_stub.vhdl
-- Design      : and_gate_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate_0 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end and_gate_0;

architecture stub of and_gate_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[1:0],b[1:0],c[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "and_gate,Vivado 2016.2";
begin
end;
