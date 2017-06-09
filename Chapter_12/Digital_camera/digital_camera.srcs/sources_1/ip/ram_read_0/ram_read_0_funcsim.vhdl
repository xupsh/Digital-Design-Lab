-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
-- Date        : Wed Jun 07 13:02:16 2017
-- Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Github/xupsh/Digital_Design_lab/Chapter_12/Digital_camera/digital_camera.srcs/sources_1/ip/ram_read_0/ram_read_0_funcsim.vhdl
-- Design      : ram_read_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram_read_0_ram_read is
  port (
    address : out STD_LOGIC_VECTOR ( 16 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    clk : in STD_LOGIC;
    vga_h_cnt : in STD_LOGIC_VECTOR ( 6 downto 0 );
    vga_v_cnt : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ram_read_0_ram_read : entity is "ram_read";
end ram_read_0_ram_read;

architecture STRUCTURE of ram_read_0_ram_read is
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^address\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal address0 : STD_LOGIC;
  signal \n_0_address[11]_i_2\ : STD_LOGIC;
  signal \n_0_address[11]_i_3\ : STD_LOGIC;
  signal \n_0_address[11]_i_4\ : STD_LOGIC;
  signal \n_0_address[11]_i_5\ : STD_LOGIC;
  signal \n_0_address[15]_i_2\ : STD_LOGIC;
  signal \n_0_address[15]_i_3\ : STD_LOGIC;
  signal \n_0_address[15]_i_4\ : STD_LOGIC;
  signal \n_0_address[15]_i_5\ : STD_LOGIC;
  signal \n_0_address[16]_i_1\ : STD_LOGIC;
  signal \n_0_address[16]_i_4\ : STD_LOGIC;
  signal \n_0_address[16]_i_5\ : STD_LOGIC;
  signal \n_0_address[3]_i_2\ : STD_LOGIC;
  signal \n_0_address[3]_i_3\ : STD_LOGIC;
  signal \n_0_address[3]_i_4\ : STD_LOGIC;
  signal \n_0_address[3]_i_5\ : STD_LOGIC;
  signal \n_0_address[7]_i_2\ : STD_LOGIC;
  signal \n_0_address[7]_i_3\ : STD_LOGIC;
  signal \n_0_address[7]_i_4\ : STD_LOGIC;
  signal \n_0_address[7]_i_5\ : STD_LOGIC;
  signal \n_0_address_reg[11]_i_1\ : STD_LOGIC;
  signal \n_0_address_reg[15]_i_1\ : STD_LOGIC;
  signal \n_0_address_reg[3]_i_1\ : STD_LOGIC;
  signal \n_0_address_reg[7]_i_1\ : STD_LOGIC;
  signal \n_1_address_reg[11]_i_1\ : STD_LOGIC;
  signal \n_1_address_reg[15]_i_1\ : STD_LOGIC;
  signal \n_1_address_reg[3]_i_1\ : STD_LOGIC;
  signal \n_1_address_reg[7]_i_1\ : STD_LOGIC;
  signal \n_2_address_reg[11]_i_1\ : STD_LOGIC;
  signal \n_2_address_reg[15]_i_1\ : STD_LOGIC;
  signal \n_2_address_reg[3]_i_1\ : STD_LOGIC;
  signal \n_2_address_reg[7]_i_1\ : STD_LOGIC;
  signal \n_3_address_reg[11]_i_1\ : STD_LOGIC;
  signal \n_3_address_reg[15]_i_1\ : STD_LOGIC;
  signal \n_3_address_reg[3]_i_1\ : STD_LOGIC;
  signal \n_3_address_reg[7]_i_1\ : STD_LOGIC;
  signal \n_4_address_reg[11]_i_1\ : STD_LOGIC;
  signal \n_4_address_reg[15]_i_1\ : STD_LOGIC;
  signal \n_4_address_reg[3]_i_1\ : STD_LOGIC;
  signal \n_4_address_reg[7]_i_1\ : STD_LOGIC;
  signal \n_5_address_reg[11]_i_1\ : STD_LOGIC;
  signal \n_5_address_reg[15]_i_1\ : STD_LOGIC;
  signal \n_5_address_reg[3]_i_1\ : STD_LOGIC;
  signal \n_5_address_reg[7]_i_1\ : STD_LOGIC;
  signal \n_6_address_reg[11]_i_1\ : STD_LOGIC;
  signal \n_6_address_reg[15]_i_1\ : STD_LOGIC;
  signal \n_6_address_reg[3]_i_1\ : STD_LOGIC;
  signal \n_6_address_reg[7]_i_1\ : STD_LOGIC;
  signal \n_7_address_reg[11]_i_1\ : STD_LOGIC;
  signal \n_7_address_reg[15]_i_1\ : STD_LOGIC;
  signal \n_7_address_reg[16]_i_3\ : STD_LOGIC;
  signal \n_7_address_reg[3]_i_1\ : STD_LOGIC;
  signal \n_7_address_reg[7]_i_1\ : STD_LOGIC;
  signal \NLW_address_reg[16]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_address_reg[16]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  address(16 downto 0) <= \^address\(16 downto 0);
\address[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(11),
      O => \n_0_address[11]_i_2\
    );
\address[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(10),
      O => \n_0_address[11]_i_3\
    );
\address[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(9),
      O => \n_0_address[11]_i_4\
    );
\address[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(8),
      O => \n_0_address[11]_i_5\
    );
\address[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(15),
      O => \n_0_address[15]_i_2\
    );
\address[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(14),
      O => \n_0_address[15]_i_3\
    );
\address[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(13),
      O => \n_0_address[15]_i_4\
    );
\address[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(12),
      O => \n_0_address[15]_i_5\
    );
\address[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
    port map (
      I0 => vga_v_cnt(6),
      I1 => vga_v_cnt(7),
      I2 => vga_v_cnt(4),
      I3 => vga_v_cnt(5),
      I4 => \n_0_address[16]_i_4\,
      O => \n_0_address[16]_i_1\
    );
\address[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888808088808080"
    )
    port map (
      I0 => \^o1\,
      I1 => \^o2\,
      I2 => vga_h_cnt(3),
      I3 => vga_h_cnt(1),
      I4 => vga_h_cnt(2),
      I5 => vga_h_cnt(0),
      O => address0
    );
\address[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
    port map (
      I0 => vga_v_cnt(5),
      I1 => vga_v_cnt(2),
      I2 => vga_v_cnt(3),
      I3 => vga_v_cnt(1),
      I4 => vga_v_cnt(0),
      O => \n_0_address[16]_i_4\
    );
\address[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(16),
      O => \n_0_address[16]_i_5\
    );
\address[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(3),
      O => \n_0_address[3]_i_2\
    );
\address[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(2),
      O => \n_0_address[3]_i_3\
    );
\address[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(1),
      O => \n_0_address[3]_i_4\
    );
\address[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^address\(0),
      O => \n_0_address[3]_i_5\
    );
\address[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(7),
      O => \n_0_address[7]_i_2\
    );
\address[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(6),
      O => \n_0_address[7]_i_3\
    );
\address[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(5),
      O => \n_0_address[7]_i_4\
    );
\address[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^address\(4),
      O => \n_0_address[7]_i_5\
    );
\address_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_7_address_reg[3]_i_1\,
      Q => \^address\(0),
      R => \n_0_address[16]_i_1\
    );
\address_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_5_address_reg[11]_i_1\,
      Q => \^address\(10),
      R => \n_0_address[16]_i_1\
    );
\address_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_4_address_reg[11]_i_1\,
      Q => \^address\(11),
      R => \n_0_address[16]_i_1\
    );
\address_reg[11]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_address_reg[7]_i_1\,
      CO(3) => \n_0_address_reg[11]_i_1\,
      CO(2) => \n_1_address_reg[11]_i_1\,
      CO(1) => \n_2_address_reg[11]_i_1\,
      CO(0) => \n_3_address_reg[11]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_address_reg[11]_i_1\,
      O(2) => \n_5_address_reg[11]_i_1\,
      O(1) => \n_6_address_reg[11]_i_1\,
      O(0) => \n_7_address_reg[11]_i_1\,
      S(3) => \n_0_address[11]_i_2\,
      S(2) => \n_0_address[11]_i_3\,
      S(1) => \n_0_address[11]_i_4\,
      S(0) => \n_0_address[11]_i_5\
    );
\address_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_7_address_reg[15]_i_1\,
      Q => \^address\(12),
      R => \n_0_address[16]_i_1\
    );
\address_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_6_address_reg[15]_i_1\,
      Q => \^address\(13),
      R => \n_0_address[16]_i_1\
    );
\address_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_5_address_reg[15]_i_1\,
      Q => \^address\(14),
      R => \n_0_address[16]_i_1\
    );
\address_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_4_address_reg[15]_i_1\,
      Q => \^address\(15),
      R => \n_0_address[16]_i_1\
    );
\address_reg[15]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_address_reg[11]_i_1\,
      CO(3) => \n_0_address_reg[15]_i_1\,
      CO(2) => \n_1_address_reg[15]_i_1\,
      CO(1) => \n_2_address_reg[15]_i_1\,
      CO(0) => \n_3_address_reg[15]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_address_reg[15]_i_1\,
      O(2) => \n_5_address_reg[15]_i_1\,
      O(1) => \n_6_address_reg[15]_i_1\,
      O(0) => \n_7_address_reg[15]_i_1\,
      S(3) => \n_0_address[15]_i_2\,
      S(2) => \n_0_address[15]_i_3\,
      S(1) => \n_0_address[15]_i_4\,
      S(0) => \n_0_address[15]_i_5\
    );
\address_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_7_address_reg[16]_i_3\,
      Q => \^address\(16),
      R => \n_0_address[16]_i_1\
    );
\address_reg[16]_i_3\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_address_reg[15]_i_1\,
      CO(3 downto 0) => \NLW_address_reg[16]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 1) => \NLW_address_reg[16]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \n_7_address_reg[16]_i_3\,
      S(3) => '0',
      S(2) => '0',
      S(1) => '0',
      S(0) => \n_0_address[16]_i_5\
    );
\address_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_6_address_reg[3]_i_1\,
      Q => \^address\(1),
      R => \n_0_address[16]_i_1\
    );
\address_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_5_address_reg[3]_i_1\,
      Q => \^address\(2),
      R => \n_0_address[16]_i_1\
    );
\address_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_4_address_reg[3]_i_1\,
      Q => \^address\(3),
      R => \n_0_address[16]_i_1\
    );
\address_reg[3]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_address_reg[3]_i_1\,
      CO(2) => \n_1_address_reg[3]_i_1\,
      CO(1) => \n_2_address_reg[3]_i_1\,
      CO(0) => \n_3_address_reg[3]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_address_reg[3]_i_1\,
      O(2) => \n_5_address_reg[3]_i_1\,
      O(1) => \n_6_address_reg[3]_i_1\,
      O(0) => \n_7_address_reg[3]_i_1\,
      S(3) => \n_0_address[3]_i_2\,
      S(2) => \n_0_address[3]_i_3\,
      S(1) => \n_0_address[3]_i_4\,
      S(0) => \n_0_address[3]_i_5\
    );
\address_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_7_address_reg[7]_i_1\,
      Q => \^address\(4),
      R => \n_0_address[16]_i_1\
    );
\address_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_6_address_reg[7]_i_1\,
      Q => \^address\(5),
      R => \n_0_address[16]_i_1\
    );
\address_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_5_address_reg[7]_i_1\,
      Q => \^address\(6),
      R => \n_0_address[16]_i_1\
    );
\address_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_4_address_reg[7]_i_1\,
      Q => \^address\(7),
      R => \n_0_address[16]_i_1\
    );
\address_reg[7]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_address_reg[3]_i_1\,
      CO(3) => \n_0_address_reg[7]_i_1\,
      CO(2) => \n_1_address_reg[7]_i_1\,
      CO(1) => \n_2_address_reg[7]_i_1\,
      CO(0) => \n_3_address_reg[7]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_address_reg[7]_i_1\,
      O(2) => \n_5_address_reg[7]_i_1\,
      O(1) => \n_6_address_reg[7]_i_1\,
      O(0) => \n_7_address_reg[7]_i_1\,
      S(3) => \n_0_address[7]_i_2\,
      S(2) => \n_0_address[7]_i_3\,
      S(1) => \n_0_address[7]_i_4\,
      S(0) => \n_0_address[7]_i_5\
    );
\address_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_7_address_reg[11]_i_1\,
      Q => \^address\(8),
      R => \n_0_address[16]_i_1\
    );
\address_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => address0,
      D => \n_6_address_reg[11]_i_1\,
      Q => \^address\(9),
      R => \n_0_address[16]_i_1\
    );
\vga_red[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => vga_h_cnt(6),
      I1 => vga_v_cnt(6),
      I2 => vga_v_cnt(7),
      I3 => vga_h_cnt(5),
      I4 => vga_h_cnt(4),
      O => \^o1\
    );
\vga_red[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057FF8000FFFF00"
    )
    port map (
      I0 => vga_v_cnt(2),
      I1 => vga_v_cnt(0),
      I2 => vga_v_cnt(1),
      I3 => vga_v_cnt(4),
      I4 => vga_v_cnt(5),
      I5 => vga_v_cnt(3),
      O => \^o2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram_read_0 is
  port (
    clk : in STD_LOGIC;
    valid : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    address : out STD_LOGIC_VECTOR ( 16 downto 0 );
    vga_h_cnt : in STD_LOGIC_VECTOR ( 11 downto 0 );
    vga_v_cnt : in STD_LOGIC_VECTOR ( 10 downto 0 );
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ram_read_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ram_read_0 : entity is "ram_read,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ram_read_0 : entity is "ram_read_0,ram_read,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ram_read_0 : entity is "ram_read_0,ram_read,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=ram_read,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SHOW_H_START=160,SHOW_V_START=120,SHOW_WIDTH=320,SHOW_HEIGHT=240}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ram_read_0 : entity is "yes";
end ram_read_0;

architecture STRUCTURE of ram_read_0 is
  signal \n_0_vga_red[3]_INST_0_i_3\ : STD_LOGIC;
  signal n_17_inst : STD_LOGIC;
  signal n_18_inst : STD_LOGIC;
begin
inst: entity work.ram_read_0_ram_read
    port map (
      O1 => n_17_inst,
      O2 => n_18_inst,
      address(16 downto 0) => address(16 downto 0),
      clk => clk,
      vga_h_cnt(6 downto 0) => vga_h_cnt(11 downto 5),
      vga_v_cnt(7 downto 0) => vga_v_cnt(10 downto 3)
    );
\vga_blue[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(1),
      O => vga_blue(0)
    );
\vga_blue[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(2),
      O => vga_blue(1)
    );
\vga_blue[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(3),
      O => vga_blue(2)
    );
\vga_blue[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(4),
      O => vga_blue(3)
    );
\vga_green[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(7),
      O => vga_green(0)
    );
\vga_green[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(8),
      O => vga_green(1)
    );
\vga_green[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(9),
      O => vga_green(2)
    );
\vga_green[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(10),
      O => vga_green(3)
    );
\vga_red[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(12),
      O => vga_red(0)
    );
\vga_red[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(13),
      O => vga_red(1)
    );
\vga_red[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(14),
      O => vga_red(2)
    );
\vga_red[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => valid,
      I1 => n_17_inst,
      I2 => n_18_inst,
      I3 => \n_0_vga_red[3]_INST_0_i_3\,
      I4 => din(15),
      O => vga_red(3)
    );
\vga_red[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7AEA"
    )
    port map (
      I0 => vga_h_cnt(8),
      I1 => vga_h_cnt(6),
      I2 => vga_h_cnt(7),
      I3 => vga_h_cnt(5),
      O => \n_0_vga_red[3]_INST_0_i_3\
    );
end STRUCTURE;
