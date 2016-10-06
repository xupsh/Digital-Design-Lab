-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Tue Sep 20 11:43:01 2016
-- Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/zhehengt/Desktop/Digital_Design_Lab/Chapter_11/VGA/VGA.srcs/sources_1/ip/vga_0/vga_0_funcsim.vhdl
-- Design      : vga_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vga_0_vga is
  port (
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_h_cnt : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vga_valid : out STD_LOGIC;
    vga_v_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    vga_pclk : in STD_LOGIC;
    vga_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vga_0_vga : entity is "vga";
end vga_0_vga;

architecture STRUCTURE of vga_0_vga is
  signal \line_cnt_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal n_0_hsync_i_2 : STD_LOGIC;
  signal n_0_hsync_i_3 : STD_LOGIC;
  signal n_0_hsync_i_4 : STD_LOGIC;
  signal \n_0_line_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[1]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[2]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[2]_i_2\ : STD_LOGIC;
  signal \n_0_line_cnt[3]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[3]_i_2\ : STD_LOGIC;
  signal \n_0_line_cnt[4]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[4]_i_2\ : STD_LOGIC;
  signal \n_0_line_cnt[5]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[5]_i_2\ : STD_LOGIC;
  signal \n_0_line_cnt[6]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[7]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[8]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[8]_i_2\ : STD_LOGIC;
  signal \n_0_line_cnt[8]_i_3\ : STD_LOGIC;
  signal \n_0_line_cnt[9]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[9]_i_2\ : STD_LOGIC;
  signal \n_0_line_cnt[9]_i_3\ : STD_LOGIC;
  signal \n_0_line_cnt[9]_i_4\ : STD_LOGIC;
  signal \n_0_line_cnt[9]_i_5\ : STD_LOGIC;
  signal \n_0_line_cnt[9]_i_6\ : STD_LOGIC;
  signal \n_0_pixel_cnt[0]_i_2\ : STD_LOGIC;
  signal \n_0_pixel_cnt[0]_i_3\ : STD_LOGIC;
  signal \n_0_pixel_cnt[0]_i_4\ : STD_LOGIC;
  signal \n_0_pixel_cnt[0]_i_5\ : STD_LOGIC;
  signal \n_0_pixel_cnt[0]_i_6\ : STD_LOGIC;
  signal \n_0_pixel_cnt[0]_i_7\ : STD_LOGIC;
  signal \n_0_pixel_cnt[4]_i_2\ : STD_LOGIC;
  signal \n_0_pixel_cnt[4]_i_3\ : STD_LOGIC;
  signal \n_0_pixel_cnt[4]_i_4\ : STD_LOGIC;
  signal \n_0_pixel_cnt[4]_i_5\ : STD_LOGIC;
  signal \n_0_pixel_cnt[8]_i_2\ : STD_LOGIC;
  signal \n_0_pixel_cnt[8]_i_3\ : STD_LOGIC;
  signal \n_0_pixel_cnt_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_pixel_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal n_0_vga_valid_INST_0_i_1 : STD_LOGIC;
  signal n_0_vsync_i_1 : STD_LOGIC;
  signal n_0_vsync_i_2 : STD_LOGIC;
  signal n_0_vsync_i_3 : STD_LOGIC;
  signal \n_1_pixel_cnt_reg[0]_i_1\ : STD_LOGIC;
  signal \n_1_pixel_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_pixel_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_pixel_cnt_reg[0]_i_1\ : STD_LOGIC;
  signal \n_2_pixel_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_pixel_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_pixel_cnt_reg[0]_i_1\ : STD_LOGIC;
  signal \n_3_pixel_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_pixel_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_pixel_cnt_reg[0]_i_1\ : STD_LOGIC;
  signal \n_4_pixel_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_pixel_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_pixel_cnt_reg[0]_i_1\ : STD_LOGIC;
  signal \n_5_pixel_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_pixel_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_pixel_cnt_reg[0]_i_1\ : STD_LOGIC;
  signal \n_6_pixel_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_pixel_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_pixel_cnt_reg[0]_i_1\ : STD_LOGIC;
  signal \n_7_pixel_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_pixel_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal pixel_cnt_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_pixel_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of hsync_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of hsync_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of hsync_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \line_cnt[2]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \line_cnt[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \line_cnt[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \line_cnt[8]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \line_cnt[9]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \line_cnt[9]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \line_cnt[9]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \line_cnt[9]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pixel_cnt[0]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vga_h_cnt[8]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vga_h_cnt[9]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \vga_v_cnt[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vga_v_cnt[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vga_v_cnt[7]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \vga_v_cnt[8]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of vga_valid_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of vsync_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of vsync_i_2 : label is "soft_lutpair9";
begin
hsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
    port map (
      I0 => n_0_hsync_i_2,
      I1 => pixel_cnt_reg(7),
      I2 => pixel_cnt_reg(6),
      I3 => pixel_cnt_reg(5),
      I4 => n_0_hsync_i_3,
      I5 => n_0_hsync_i_4,
      O => p_0_in
    );
hsync_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15555555"
    )
    port map (
      I0 => pixel_cnt_reg(4),
      I1 => pixel_cnt_reg(1),
      I2 => pixel_cnt_reg(0),
      I3 => pixel_cnt_reg(3),
      I4 => pixel_cnt_reg(2),
      O => n_0_hsync_i_2
    );
hsync_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => pixel_cnt_reg(11),
      I1 => pixel_cnt_reg(10),
      I2 => pixel_cnt_reg(8),
      I3 => pixel_cnt_reg(9),
      O => n_0_hsync_i_3
    );
hsync_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => pixel_cnt_reg(2),
      I1 => pixel_cnt_reg(3),
      I2 => pixel_cnt_reg(4),
      I3 => pixel_cnt_reg(1),
      I4 => pixel_cnt_reg(0),
      O => n_0_hsync_i_4
    );
hsync_reg: unisim.vcomponents.FDPE
    port map (
      C => vga_pclk,
      CE => '1',
      D => p_0_in,
      PRE => vga_rst,
      Q => vga_hsync
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => n_0_vsync_i_2,
      I2 => \line_cnt_reg__0\(4),
      I3 => \line_cnt_reg__0\(6),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(0),
      O => \n_0_line_cnt[0]_i_1\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06660606"
    )
    port map (
      I0 => \line_cnt_reg__0\(0),
      I1 => \line_cnt_reg__0\(1),
      I2 => \line_cnt_reg__0\(9),
      I3 => n_0_vsync_i_2,
      I4 => \n_0_line_cnt[9]_i_4\,
      O => \n_0_line_cnt[1]_i_1\
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => n_0_vsync_i_2,
      I2 => \line_cnt_reg__0\(4),
      I3 => \line_cnt_reg__0\(6),
      I4 => \line_cnt_reg__0\(8),
      I5 => \n_0_line_cnt[2]_i_2\,
      O => \n_0_line_cnt[2]_i_1\
    );
\line_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => \line_cnt_reg__0\(2),
      I1 => \line_cnt_reg__0\(0),
      I2 => \line_cnt_reg__0\(1),
      O => \n_0_line_cnt[2]_i_2\
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => n_0_vsync_i_2,
      I2 => \line_cnt_reg__0\(4),
      I3 => \line_cnt_reg__0\(6),
      I4 => \line_cnt_reg__0\(8),
      I5 => \n_0_line_cnt[3]_i_2\,
      O => \n_0_line_cnt[3]_i_1\
    );
\line_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => \line_cnt_reg__0\(3),
      I1 => \line_cnt_reg__0\(2),
      I2 => \line_cnt_reg__0\(1),
      I3 => \line_cnt_reg__0\(0),
      O => \n_0_line_cnt[3]_i_2\
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555000000005557"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => n_0_vsync_i_2,
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(8),
      I4 => \n_0_line_cnt[4]_i_2\,
      I5 => \line_cnt_reg__0\(4),
      O => \n_0_line_cnt[4]_i_1\
    );
\line_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => \line_cnt_reg__0\(3),
      I1 => \line_cnt_reg__0\(2),
      I2 => \line_cnt_reg__0\(0),
      I3 => \line_cnt_reg__0\(1),
      O => \n_0_line_cnt[4]_i_2\
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555000000007555"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(7),
      I2 => \n_0_line_cnt[5]_i_2\,
      I3 => \n_0_line_cnt[9]_i_4\,
      I4 => \n_0_line_cnt[9]_i_6\,
      I5 => \line_cnt_reg__0\(5),
      O => \n_0_line_cnt[5]_i_1\
    );
\line_cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => \line_cnt_reg__0\(2),
      I1 => \line_cnt_reg__0\(3),
      O => \n_0_line_cnt[5]_i_2\
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555555570000"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => n_0_vsync_i_2,
      I2 => \line_cnt_reg__0\(4),
      I3 => \line_cnt_reg__0\(8),
      I4 => \n_0_line_cnt[8]_i_2\,
      I5 => \line_cnt_reg__0\(6),
      O => \n_0_line_cnt[6]_i_1\
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0078787800780078"
    )
    port map (
      I0 => \n_0_line_cnt[8]_i_2\,
      I1 => \line_cnt_reg__0\(6),
      I2 => \line_cnt_reg__0\(7),
      I3 => \line_cnt_reg__0\(9),
      I4 => n_0_vsync_i_2,
      I5 => \n_0_line_cnt[9]_i_4\,
      O => \n_0_line_cnt[7]_i_1\
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7575007500007500"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => n_0_vsync_i_2,
      I2 => \n_0_line_cnt[9]_i_4\,
      I3 => \n_0_line_cnt[8]_i_2\,
      I4 => \n_0_line_cnt[8]_i_3\,
      I5 => \line_cnt_reg__0\(8),
      O => \n_0_line_cnt[8]_i_1\
    );
\line_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \line_cnt_reg__0\(5),
      I1 => \line_cnt_reg__0\(4),
      I2 => \line_cnt_reg__0\(3),
      I3 => \line_cnt_reg__0\(2),
      I4 => \line_cnt_reg__0\(0),
      I5 => \line_cnt_reg__0\(1),
      O => \n_0_line_cnt[8]_i_2\
    );
\line_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => \line_cnt_reg__0\(6),
      I1 => \line_cnt_reg__0\(7),
      O => \n_0_line_cnt[8]_i_3\
    );
\line_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \n_0_line_cnt[9]_i_3\,
      I1 => n_0_hsync_i_4,
      I2 => pixel_cnt_reg(9),
      I3 => pixel_cnt_reg(8),
      O => \n_0_line_cnt[9]_i_1\
    );
\line_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"444400F0"
    )
    port map (
      I0 => n_0_vsync_i_2,
      I1 => \n_0_line_cnt[9]_i_4\,
      I2 => \n_0_line_cnt[9]_i_5\,
      I3 => \n_0_line_cnt[9]_i_6\,
      I4 => \line_cnt_reg__0\(9),
      O => \n_0_line_cnt[9]_i_2\
    );
\line_cnt[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => pixel_cnt_reg(11),
      I1 => pixel_cnt_reg(10),
      I2 => pixel_cnt_reg(7),
      I3 => pixel_cnt_reg(5),
      I4 => pixel_cnt_reg(6),
      O => \n_0_line_cnt[9]_i_3\
    );
\line_cnt[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \line_cnt_reg__0\(8),
      I1 => \line_cnt_reg__0\(6),
      I2 => \line_cnt_reg__0\(4),
      O => \n_0_line_cnt[9]_i_4\
    );
\line_cnt[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \line_cnt_reg__0\(6),
      I1 => \line_cnt_reg__0\(5),
      I2 => \line_cnt_reg__0\(8),
      I3 => \line_cnt_reg__0\(7),
      O => \n_0_line_cnt[9]_i_5\
    );
\line_cnt[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => \line_cnt_reg__0\(1),
      I1 => \line_cnt_reg__0\(0),
      I2 => \line_cnt_reg__0\(2),
      I3 => \line_cnt_reg__0\(3),
      I4 => \line_cnt_reg__0\(4),
      O => \n_0_line_cnt[9]_i_6\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => \n_0_line_cnt[9]_i_1\,
      CLR => vga_rst,
      D => \n_0_line_cnt[0]_i_1\,
      Q => \line_cnt_reg__0\(0)
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => \n_0_line_cnt[9]_i_1\,
      CLR => vga_rst,
      D => \n_0_line_cnt[1]_i_1\,
      Q => \line_cnt_reg__0\(1)
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => \n_0_line_cnt[9]_i_1\,
      CLR => vga_rst,
      D => \n_0_line_cnt[2]_i_1\,
      Q => \line_cnt_reg__0\(2)
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => \n_0_line_cnt[9]_i_1\,
      CLR => vga_rst,
      D => \n_0_line_cnt[3]_i_1\,
      Q => \line_cnt_reg__0\(3)
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => \n_0_line_cnt[9]_i_1\,
      CLR => vga_rst,
      D => \n_0_line_cnt[4]_i_1\,
      Q => \line_cnt_reg__0\(4)
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => \n_0_line_cnt[9]_i_1\,
      CLR => vga_rst,
      D => \n_0_line_cnt[5]_i_1\,
      Q => \line_cnt_reg__0\(5)
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => \n_0_line_cnt[9]_i_1\,
      CLR => vga_rst,
      D => \n_0_line_cnt[6]_i_1\,
      Q => \line_cnt_reg__0\(6)
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => \n_0_line_cnt[9]_i_1\,
      CLR => vga_rst,
      D => \n_0_line_cnt[7]_i_1\,
      Q => \line_cnt_reg__0\(7)
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => \n_0_line_cnt[9]_i_1\,
      CLR => vga_rst,
      D => \n_0_line_cnt[8]_i_1\,
      Q => \line_cnt_reg__0\(8)
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => \n_0_line_cnt[9]_i_1\,
      CLR => vga_rst,
      D => \n_0_line_cnt[9]_i_2\,
      Q => \line_cnt_reg__0\(9)
    );
\pixel_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08080808"
    )
    port map (
      I0 => pixel_cnt_reg(0),
      I1 => \n_0_line_cnt[9]_i_3\,
      I2 => n_0_hsync_i_4,
      I3 => pixel_cnt_reg(8),
      I4 => pixel_cnt_reg(9),
      I5 => \n_0_pixel_cnt[0]_i_7\,
      O => \n_0_pixel_cnt[0]_i_2\
    );
\pixel_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08080808"
    )
    port map (
      I0 => pixel_cnt_reg(3),
      I1 => \n_0_line_cnt[9]_i_3\,
      I2 => n_0_hsync_i_4,
      I3 => pixel_cnt_reg(8),
      I4 => pixel_cnt_reg(9),
      I5 => \n_0_pixel_cnt[0]_i_7\,
      O => \n_0_pixel_cnt[0]_i_3\
    );
\pixel_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08080808"
    )
    port map (
      I0 => pixel_cnt_reg(2),
      I1 => \n_0_line_cnt[9]_i_3\,
      I2 => n_0_hsync_i_4,
      I3 => pixel_cnt_reg(8),
      I4 => pixel_cnt_reg(9),
      I5 => \n_0_pixel_cnt[0]_i_7\,
      O => \n_0_pixel_cnt[0]_i_4\
    );
\pixel_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08080808"
    )
    port map (
      I0 => pixel_cnt_reg(1),
      I1 => \n_0_line_cnt[9]_i_3\,
      I2 => n_0_hsync_i_4,
      I3 => pixel_cnt_reg(8),
      I4 => pixel_cnt_reg(9),
      I5 => \n_0_pixel_cnt[0]_i_7\,
      O => \n_0_pixel_cnt[0]_i_5\
    );
\pixel_cnt[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0455555504040404"
    )
    port map (
      I0 => pixel_cnt_reg(0),
      I1 => \n_0_line_cnt[9]_i_3\,
      I2 => n_0_hsync_i_4,
      I3 => pixel_cnt_reg(8),
      I4 => pixel_cnt_reg(9),
      I5 => \n_0_pixel_cnt[0]_i_7\,
      O => \n_0_pixel_cnt[0]_i_6\
    );
\pixel_cnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => pixel_cnt_reg(10),
      I1 => pixel_cnt_reg(11),
      O => \n_0_pixel_cnt[0]_i_7\
    );
\pixel_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08080808"
    )
    port map (
      I0 => pixel_cnt_reg(7),
      I1 => \n_0_line_cnt[9]_i_3\,
      I2 => n_0_hsync_i_4,
      I3 => pixel_cnt_reg(8),
      I4 => pixel_cnt_reg(9),
      I5 => \n_0_pixel_cnt[0]_i_7\,
      O => \n_0_pixel_cnt[4]_i_2\
    );
\pixel_cnt[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08080808"
    )
    port map (
      I0 => pixel_cnt_reg(6),
      I1 => \n_0_line_cnt[9]_i_3\,
      I2 => n_0_hsync_i_4,
      I3 => pixel_cnt_reg(8),
      I4 => pixel_cnt_reg(9),
      I5 => \n_0_pixel_cnt[0]_i_7\,
      O => \n_0_pixel_cnt[4]_i_3\
    );
\pixel_cnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08080808"
    )
    port map (
      I0 => pixel_cnt_reg(5),
      I1 => \n_0_line_cnt[9]_i_3\,
      I2 => n_0_hsync_i_4,
      I3 => pixel_cnt_reg(8),
      I4 => pixel_cnt_reg(9),
      I5 => \n_0_pixel_cnt[0]_i_7\,
      O => \n_0_pixel_cnt[4]_i_4\
    );
\pixel_cnt[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08080808"
    )
    port map (
      I0 => pixel_cnt_reg(4),
      I1 => \n_0_line_cnt[9]_i_3\,
      I2 => n_0_hsync_i_4,
      I3 => pixel_cnt_reg(8),
      I4 => pixel_cnt_reg(9),
      I5 => \n_0_pixel_cnt[0]_i_7\,
      O => \n_0_pixel_cnt[4]_i_5\
    );
\pixel_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200220022002F00"
    )
    port map (
      I0 => \n_0_line_cnt[9]_i_3\,
      I1 => n_0_hsync_i_4,
      I2 => pixel_cnt_reg(8),
      I3 => pixel_cnt_reg(9),
      I4 => pixel_cnt_reg(11),
      I5 => pixel_cnt_reg(10),
      O => \n_0_pixel_cnt[8]_i_2\
    );
\pixel_cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202020202020F0"
    )
    port map (
      I0 => \n_0_line_cnt[9]_i_3\,
      I1 => n_0_hsync_i_4,
      I2 => pixel_cnt_reg(8),
      I3 => pixel_cnt_reg(9),
      I4 => pixel_cnt_reg(11),
      I5 => pixel_cnt_reg(10),
      O => \n_0_pixel_cnt[8]_i_3\
    );
\pixel_cnt_reg[0]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_7_pixel_cnt_reg[0]_i_1\,
      Q => pixel_cnt_reg(0)
    );
\pixel_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_pixel_cnt_reg[0]_i_1\,
      CO(2) => \n_1_pixel_cnt_reg[0]_i_1\,
      CO(1) => \n_2_pixel_cnt_reg[0]_i_1\,
      CO(0) => \n_3_pixel_cnt_reg[0]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => \n_0_pixel_cnt[0]_i_2\,
      O(3) => \n_4_pixel_cnt_reg[0]_i_1\,
      O(2) => \n_5_pixel_cnt_reg[0]_i_1\,
      O(1) => \n_6_pixel_cnt_reg[0]_i_1\,
      O(0) => \n_7_pixel_cnt_reg[0]_i_1\,
      S(3) => \n_0_pixel_cnt[0]_i_3\,
      S(2) => \n_0_pixel_cnt[0]_i_4\,
      S(1) => \n_0_pixel_cnt[0]_i_5\,
      S(0) => \n_0_pixel_cnt[0]_i_6\
    );
\pixel_cnt_reg[10]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_5_pixel_cnt_reg[8]_i_1\,
      Q => pixel_cnt_reg(10)
    );
\pixel_cnt_reg[11]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_4_pixel_cnt_reg[8]_i_1\,
      Q => pixel_cnt_reg(11)
    );
\pixel_cnt_reg[1]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_6_pixel_cnt_reg[0]_i_1\,
      Q => pixel_cnt_reg(1)
    );
\pixel_cnt_reg[2]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_5_pixel_cnt_reg[0]_i_1\,
      Q => pixel_cnt_reg(2)
    );
\pixel_cnt_reg[3]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_4_pixel_cnt_reg[0]_i_1\,
      Q => pixel_cnt_reg(3)
    );
\pixel_cnt_reg[4]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_7_pixel_cnt_reg[4]_i_1\,
      Q => pixel_cnt_reg(4)
    );
\pixel_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_pixel_cnt_reg[0]_i_1\,
      CO(3) => \n_0_pixel_cnt_reg[4]_i_1\,
      CO(2) => \n_1_pixel_cnt_reg[4]_i_1\,
      CO(1) => \n_2_pixel_cnt_reg[4]_i_1\,
      CO(0) => \n_3_pixel_cnt_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_pixel_cnt_reg[4]_i_1\,
      O(2) => \n_5_pixel_cnt_reg[4]_i_1\,
      O(1) => \n_6_pixel_cnt_reg[4]_i_1\,
      O(0) => \n_7_pixel_cnt_reg[4]_i_1\,
      S(3) => \n_0_pixel_cnt[4]_i_2\,
      S(2) => \n_0_pixel_cnt[4]_i_3\,
      S(1) => \n_0_pixel_cnt[4]_i_4\,
      S(0) => \n_0_pixel_cnt[4]_i_5\
    );
\pixel_cnt_reg[5]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_6_pixel_cnt_reg[4]_i_1\,
      Q => pixel_cnt_reg(5)
    );
\pixel_cnt_reg[6]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_5_pixel_cnt_reg[4]_i_1\,
      Q => pixel_cnt_reg(6)
    );
\pixel_cnt_reg[7]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_4_pixel_cnt_reg[4]_i_1\,
      Q => pixel_cnt_reg(7)
    );
\pixel_cnt_reg[8]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_7_pixel_cnt_reg[8]_i_1\,
      Q => pixel_cnt_reg(8)
    );
\pixel_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_pixel_cnt_reg[4]_i_1\,
      CO(3) => \NLW_pixel_cnt_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_pixel_cnt_reg[8]_i_1\,
      CO(1) => \n_2_pixel_cnt_reg[8]_i_1\,
      CO(0) => \n_3_pixel_cnt_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_pixel_cnt_reg[8]_i_1\,
      O(2) => \n_5_pixel_cnt_reg[8]_i_1\,
      O(1) => \n_6_pixel_cnt_reg[8]_i_1\,
      O(0) => \n_7_pixel_cnt_reg[8]_i_1\,
      S(3) => '0',
      S(2) => '0',
      S(1) => \n_0_pixel_cnt[8]_i_2\,
      S(0) => \n_0_pixel_cnt[8]_i_3\
    );
\pixel_cnt_reg[9]\: unisim.vcomponents.FDCE
    port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => \n_6_pixel_cnt_reg[8]_i_1\,
      Q => pixel_cnt_reg(9)
    );
\vga_h_cnt[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000002A"
    )
    port map (
      I0 => pixel_cnt_reg(0),
      I1 => pixel_cnt_reg(8),
      I2 => pixel_cnt_reg(9),
      I3 => pixel_cnt_reg(11),
      I4 => pixel_cnt_reg(10),
      I5 => pixel_cnt_reg(7),
      O => vga_h_cnt(0)
    );
\vga_h_cnt[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000002A"
    )
    port map (
      I0 => pixel_cnt_reg(1),
      I1 => pixel_cnt_reg(8),
      I2 => pixel_cnt_reg(9),
      I3 => pixel_cnt_reg(11),
      I4 => pixel_cnt_reg(10),
      I5 => pixel_cnt_reg(7),
      O => vga_h_cnt(1)
    );
\vga_h_cnt[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000002A"
    )
    port map (
      I0 => pixel_cnt_reg(2),
      I1 => pixel_cnt_reg(8),
      I2 => pixel_cnt_reg(9),
      I3 => pixel_cnt_reg(11),
      I4 => pixel_cnt_reg(10),
      I5 => pixel_cnt_reg(7),
      O => vga_h_cnt(2)
    );
\vga_h_cnt[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000002A"
    )
    port map (
      I0 => pixel_cnt_reg(3),
      I1 => pixel_cnt_reg(8),
      I2 => pixel_cnt_reg(9),
      I3 => pixel_cnt_reg(11),
      I4 => pixel_cnt_reg(10),
      I5 => pixel_cnt_reg(7),
      O => vga_h_cnt(3)
    );
\vga_h_cnt[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000002A"
    )
    port map (
      I0 => pixel_cnt_reg(4),
      I1 => pixel_cnt_reg(8),
      I2 => pixel_cnt_reg(9),
      I3 => pixel_cnt_reg(11),
      I4 => pixel_cnt_reg(10),
      I5 => pixel_cnt_reg(7),
      O => vga_h_cnt(4)
    );
\vga_h_cnt[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000002A"
    )
    port map (
      I0 => pixel_cnt_reg(5),
      I1 => pixel_cnt_reg(8),
      I2 => pixel_cnt_reg(9),
      I3 => pixel_cnt_reg(11),
      I4 => pixel_cnt_reg(10),
      I5 => pixel_cnt_reg(7),
      O => vga_h_cnt(5)
    );
\vga_h_cnt[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000002A"
    )
    port map (
      I0 => pixel_cnt_reg(6),
      I1 => pixel_cnt_reg(8),
      I2 => pixel_cnt_reg(9),
      I3 => pixel_cnt_reg(11),
      I4 => pixel_cnt_reg(10),
      I5 => pixel_cnt_reg(7),
      O => vga_h_cnt(6)
    );
\vga_h_cnt[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => pixel_cnt_reg(9),
      I1 => pixel_cnt_reg(11),
      I2 => pixel_cnt_reg(10),
      I3 => pixel_cnt_reg(7),
      O => vga_h_cnt(7)
    );
\vga_h_cnt[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => pixel_cnt_reg(8),
      I1 => pixel_cnt_reg(9),
      I2 => pixel_cnt_reg(11),
      I3 => pixel_cnt_reg(10),
      O => vga_h_cnt(8)
    );
\vga_h_cnt[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => pixel_cnt_reg(8),
      I1 => pixel_cnt_reg(9),
      I2 => pixel_cnt_reg(11),
      I3 => pixel_cnt_reg(10),
      I4 => pixel_cnt_reg(7),
      O => vga_h_cnt(9)
    );
\vga_v_cnt[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222222222222"
    )
    port map (
      I0 => \line_cnt_reg__0\(0),
      I1 => \line_cnt_reg__0\(9),
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(7),
      O => vga_v_cnt(0)
    );
\vga_v_cnt[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222222222222"
    )
    port map (
      I0 => \line_cnt_reg__0\(1),
      I1 => \line_cnt_reg__0\(9),
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(7),
      O => vga_v_cnt(1)
    );
\vga_v_cnt[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222222222222"
    )
    port map (
      I0 => \line_cnt_reg__0\(2),
      I1 => \line_cnt_reg__0\(9),
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(7),
      O => vga_v_cnt(2)
    );
\vga_v_cnt[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222222222222"
    )
    port map (
      I0 => \line_cnt_reg__0\(3),
      I1 => \line_cnt_reg__0\(9),
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(7),
      O => vga_v_cnt(3)
    );
\vga_v_cnt[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222222222222"
    )
    port map (
      I0 => \line_cnt_reg__0\(4),
      I1 => \line_cnt_reg__0\(9),
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(7),
      O => vga_v_cnt(4)
    );
\vga_v_cnt[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10505050"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(6),
      I2 => \line_cnt_reg__0\(5),
      I3 => \line_cnt_reg__0\(8),
      I4 => \line_cnt_reg__0\(7),
      O => vga_v_cnt(5)
    );
\vga_v_cnt[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(6),
      I2 => \line_cnt_reg__0\(5),
      I3 => \line_cnt_reg__0\(8),
      I4 => \line_cnt_reg__0\(7),
      O => vga_v_cnt(6)
    );
\vga_v_cnt[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15550000"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(6),
      I2 => \line_cnt_reg__0\(5),
      I3 => \line_cnt_reg__0\(8),
      I4 => \line_cnt_reg__0\(7),
      O => vga_v_cnt(7)
    );
\vga_v_cnt[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15005500"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(6),
      I2 => \line_cnt_reg__0\(5),
      I3 => \line_cnt_reg__0\(8),
      I4 => \line_cnt_reg__0\(7),
      O => vga_v_cnt(8)
    );
vga_valid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015555555"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(6),
      I2 => \line_cnt_reg__0\(5),
      I3 => \line_cnt_reg__0\(8),
      I4 => \line_cnt_reg__0\(7),
      I5 => n_0_vga_valid_INST_0_i_1,
      O => vga_valid
    );
vga_valid_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFCFEFC"
    )
    port map (
      I0 => pixel_cnt_reg(7),
      I1 => pixel_cnt_reg(10),
      I2 => pixel_cnt_reg(11),
      I3 => pixel_cnt_reg(9),
      I4 => pixel_cnt_reg(8),
      O => n_0_vga_valid_INST_0_i_1
    );
vsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \line_cnt_reg__0\(8),
      I1 => \line_cnt_reg__0\(6),
      I2 => \line_cnt_reg__0\(4),
      I3 => n_0_vsync_i_2,
      I4 => n_0_vsync_i_3,
      O => n_0_vsync_i_1
    );
vsync_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => \line_cnt_reg__0\(3),
      I1 => \line_cnt_reg__0\(2),
      I2 => \line_cnt_reg__0\(7),
      I3 => \line_cnt_reg__0\(5),
      O => n_0_vsync_i_2
    );
vsync_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => \line_cnt_reg__0\(3),
      I1 => \line_cnt_reg__0\(1),
      I2 => \line_cnt_reg__0\(9),
      O => n_0_vsync_i_3
    );
vsync_reg: unisim.vcomponents.FDPE
    port map (
      C => vga_pclk,
      CE => '1',
      D => n_0_vsync_i_1,
      PRE => vga_rst,
      Q => vga_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vga_0 is
  port (
    vga_pclk : in STD_LOGIC;
    vga_rst : in STD_LOGIC;
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_valid : out STD_LOGIC;
    vga_h_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vga_v_cnt : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of vga_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of vga_0 : entity is "vga,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of vga_0 : entity is "vga_0,vga,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of vga_0 : entity is "vga_0,vga,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=vga,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,HD=640,HF=48,HA=16,HB=96,HT=800,VD=480,VF=33,VA=10,VB=2,VT=525}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of vga_0 : entity is "yes";
end vga_0;

architecture STRUCTURE of vga_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^vga_h_cnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^vga_v_cnt\ : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
  vga_h_cnt(11) <= \<const0>\;
  vga_h_cnt(10) <= \<const0>\;
  vga_h_cnt(9 downto 0) <= \^vga_h_cnt\(9 downto 0);
  vga_v_cnt(10) <= \<const0>\;
  vga_v_cnt(9) <= \<const0>\;
  vga_v_cnt(8 downto 0) <= \^vga_v_cnt\(8 downto 0);
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
inst: entity work.vga_0_vga
    port map (
      vga_h_cnt(9 downto 0) => \^vga_h_cnt\(9 downto 0),
      vga_hsync => vga_hsync,
      vga_pclk => vga_pclk,
      vga_rst => vga_rst,
      vga_v_cnt(8 downto 0) => \^vga_v_cnt\(8 downto 0),
      vga_valid => vga_valid,
      vga_vsync => vga_vsync
    );
end STRUCTURE;
