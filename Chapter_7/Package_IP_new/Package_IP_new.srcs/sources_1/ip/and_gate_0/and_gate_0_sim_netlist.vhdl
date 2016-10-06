-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Tue Sep 27 14:37:46 2016
-- Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/zhehengt/Desktop/Digital_Design_Lab/Chapter_7/Package_IP_new/Package_IP_new.srcs/sources_1/ip/and_gate_0/and_gate_0_sim_netlist.vhdl
-- Design      : and_gate_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity and_gate_0_and_gate is
  port (
    c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of and_gate_0_and_gate : entity is "and_gate";
end and_gate_0_and_gate;

architecture STRUCTURE of and_gate_0_and_gate is
begin
\c[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => c(0)
    );
\c[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      O => c(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity and_gate_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of and_gate_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of and_gate_0 : entity is "and_gate_0,and_gate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of and_gate_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of and_gate_0 : entity is "and_gate,Vivado 2016.2";
end and_gate_0;

architecture STRUCTURE of and_gate_0 is
begin
inst: entity work.and_gate_0_and_gate
     port map (
      a(1 downto 0) => a(1 downto 0),
      b(1 downto 0) => b(1 downto 0),
      c(1 downto 0) => c(1 downto 0)
    );
end STRUCTURE;
