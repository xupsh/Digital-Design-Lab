-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
-- Date        : Wed Jun 07 13:02:42 2017
-- Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Github/xupsh/Digital_Design_lab/Chapter_12/Digital_camera/digital_camera.srcs/sources_1/ip/vga_0/vga_0_funcsim.vhdl
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
    valid : out STD_LOGIC;
    h_cnt : out STD_LOGIC_VECTOR ( 9 downto 0 );
    v_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    pclk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vga_0_vga : entity is "vga";
end vga_0_vga;

architecture STRUCTURE of vga_0_vga is
  signal \line_cnt_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal n_0_hsync_i_i_1 : STD_LOGIC;
  signal n_0_hsync_i_i_2 : STD_LOGIC;
  signal n_0_hsync_i_i_3 : STD_LOGIC;
  signal \n_0_line_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[10]_i_1\ : STD_LOGIC;
  signal \n_0_line_cnt[10]_i_2\ : STD_LOGIC;
  signal \n_0_line_cnt[10]_i_4\ : STD_LOGIC;
  signal \n_0_line_cnt[10]_i_5\ : STD_LOGIC;
  signal \n_0_line_cnt[10]_i_6\ : STD_LOGIC;
  signal \n_0_line_cnt[10]_i_7\ : STD_LOGIC;
  signal \n_0_line_cnt[10]_i_8\ : STD_LOGIC;
  signal \n_0_pixel_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_pixel_cnt[10]_i_1\ : STD_LOGIC;
  signal \n_0_pixel_cnt[10]_i_3\ : STD_LOGIC;
  signal \n_0_pixel_cnt[10]_i_4\ : STD_LOGIC;
  signal \n_0_pixel_cnt[10]_i_5\ : STD_LOGIC;
  signal \n_0_pixel_cnt[8]_i_1\ : STD_LOGIC;
  signal n_0_valid_INST_0_i_1 : STD_LOGIC;
  signal n_0_vsync_i_i_1 : STD_LOGIC;
  signal n_0_vsync_i_i_2 : STD_LOGIC;
  signal n_0_vsync_i_i_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \pixel_cnt_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \h_cnt[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \h_cnt[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \h_cnt[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \h_cnt[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \h_cnt[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \h_cnt[8]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \h_cnt[9]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of hsync_i_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \line_cnt[10]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \line_cnt[10]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \line_cnt[10]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \line_cnt[10]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \line_cnt[10]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \line_cnt[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \line_cnt[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \line_cnt[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \line_cnt[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \line_cnt[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixel_cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pixel_cnt[10]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pixel_cnt[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pixel_cnt[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pixel_cnt[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pixel_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pixel_cnt[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pixel_cnt[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_cnt[0]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \v_cnt[1]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \v_cnt[2]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \v_cnt[3]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \v_cnt[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of valid_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of vsync_i_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of vsync_i_i_3 : label is "soft_lutpair10";
begin
\h_cnt[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A002A"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(0),
      I1 => \pixel_cnt_reg__0\(8),
      I2 => \pixel_cnt_reg__0\(9),
      I3 => \pixel_cnt_reg__0\(10),
      I4 => \pixel_cnt_reg__0\(7),
      O => h_cnt(0)
    );
\h_cnt[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A002A"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(1),
      I1 => \pixel_cnt_reg__0\(8),
      I2 => \pixel_cnt_reg__0\(9),
      I3 => \pixel_cnt_reg__0\(10),
      I4 => \pixel_cnt_reg__0\(7),
      O => h_cnt(1)
    );
\h_cnt[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A002A"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(2),
      I1 => \pixel_cnt_reg__0\(8),
      I2 => \pixel_cnt_reg__0\(9),
      I3 => \pixel_cnt_reg__0\(10),
      I4 => \pixel_cnt_reg__0\(7),
      O => h_cnt(2)
    );
\h_cnt[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A002A"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(3),
      I1 => \pixel_cnt_reg__0\(8),
      I2 => \pixel_cnt_reg__0\(9),
      I3 => \pixel_cnt_reg__0\(10),
      I4 => \pixel_cnt_reg__0\(7),
      O => h_cnt(3)
    );
\h_cnt[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A002A"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(4),
      I1 => \pixel_cnt_reg__0\(8),
      I2 => \pixel_cnt_reg__0\(9),
      I3 => \pixel_cnt_reg__0\(10),
      I4 => \pixel_cnt_reg__0\(7),
      O => h_cnt(4)
    );
\h_cnt[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A002A"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(5),
      I1 => \pixel_cnt_reg__0\(8),
      I2 => \pixel_cnt_reg__0\(9),
      I3 => \pixel_cnt_reg__0\(10),
      I4 => \pixel_cnt_reg__0\(7),
      O => h_cnt(5)
    );
\h_cnt[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A002A"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(6),
      I1 => \pixel_cnt_reg__0\(8),
      I2 => \pixel_cnt_reg__0\(9),
      I3 => \pixel_cnt_reg__0\(10),
      I4 => \pixel_cnt_reg__0\(7),
      O => h_cnt(6)
    );
\h_cnt[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(9),
      I1 => \pixel_cnt_reg__0\(10),
      I2 => \pixel_cnt_reg__0\(7),
      O => h_cnt(7)
    );
\h_cnt[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(8),
      I1 => \pixel_cnt_reg__0\(9),
      I2 => \pixel_cnt_reg__0\(10),
      O => h_cnt(8)
    );
\h_cnt[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(8),
      I1 => \pixel_cnt_reg__0\(9),
      I2 => \pixel_cnt_reg__0\(10),
      I3 => \pixel_cnt_reg__0\(7),
      O => h_cnt(9)
    );
hsync_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF807F"
    )
    port map (
      I0 => n_0_hsync_i_i_2,
      I1 => \pixel_cnt_reg__0\(2),
      I2 => \pixel_cnt_reg__0\(3),
      I3 => \pixel_cnt_reg__0\(4),
      I4 => n_0_hsync_i_i_3,
      I5 => reset,
      O => n_0_hsync_i_i_1
    );
hsync_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(1),
      I1 => \pixel_cnt_reg__0\(0),
      O => n_0_hsync_i_i_2
    );
hsync_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(9),
      I1 => \pixel_cnt_reg__0\(7),
      I2 => \pixel_cnt_reg__0\(8),
      I3 => \pixel_cnt_reg__0\(5),
      I4 => \pixel_cnt_reg__0\(6),
      I5 => \pixel_cnt_reg__0\(10),
      O => n_0_hsync_i_i_3
    );
hsync_i_reg: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => n_0_hsync_i_i_1,
      Q => hsync,
      R => '0'
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \line_cnt_reg__0\(0),
      O => \n_0_line_cnt[0]_i_1\
    );
\line_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABBBA"
    )
    port map (
      I0 => reset,
      I1 => \n_0_line_cnt[10]_i_4\,
      I2 => n_0_vsync_i_i_3,
      I3 => n_0_vsync_i_i_2,
      I4 => \n_0_pixel_cnt[10]_i_3\,
      I5 => \n_0_line_cnt[10]_i_5\,
      O => \n_0_line_cnt[10]_i_1\
    );
\line_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_pixel_cnt[10]_i_3\,
      I1 => \pixel_cnt_reg__0\(10),
      I2 => \n_0_line_cnt[10]_i_6\,
      I3 => \pixel_cnt_reg__0\(7),
      I4 => \pixel_cnt_reg__0\(6),
      I5 => \pixel_cnt_reg__0\(5),
      O => \n_0_line_cnt[10]_i_2\
    );
\line_cnt[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => \line_cnt_reg__0\(10),
      I1 => \line_cnt_reg__0\(9),
      I2 => \n_0_line_cnt[10]_i_7\,
      I3 => \n_0_line_cnt[10]_i_8\,
      O => \p_0_in__0\(10)
    );
\line_cnt[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(10),
      O => \n_0_line_cnt[10]_i_4\
    );
\line_cnt[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(5),
      I1 => \pixel_cnt_reg__0\(6),
      I2 => \pixel_cnt_reg__0\(7),
      I3 => \pixel_cnt_reg__0\(8),
      I4 => \pixel_cnt_reg__0\(9),
      I5 => \pixel_cnt_reg__0\(10),
      O => \n_0_line_cnt[10]_i_5\
    );
\line_cnt[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(8),
      I1 => \pixel_cnt_reg__0\(9),
      O => \n_0_line_cnt[10]_i_6\
    );
\line_cnt[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \line_cnt_reg__0\(6),
      I1 => \line_cnt_reg__0\(5),
      I2 => \line_cnt_reg__0\(8),
      I3 => \line_cnt_reg__0\(7),
      O => \n_0_line_cnt[10]_i_7\
    );
\line_cnt[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => \line_cnt_reg__0\(2),
      I1 => \line_cnt_reg__0\(3),
      I2 => \line_cnt_reg__0\(1),
      I3 => \line_cnt_reg__0\(0),
      I4 => \line_cnt_reg__0\(4),
      O => \n_0_line_cnt[10]_i_8\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \line_cnt_reg__0\(1),
      I1 => \line_cnt_reg__0\(0),
      O => \p_0_in__0\(1)
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \line_cnt_reg__0\(2),
      I1 => \line_cnt_reg__0\(1),
      I2 => \line_cnt_reg__0\(0),
      O => \p_0_in__0\(2)
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \line_cnt_reg__0\(3),
      I1 => \line_cnt_reg__0\(0),
      I2 => \line_cnt_reg__0\(1),
      I3 => \line_cnt_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \line_cnt_reg__0\(4),
      I1 => \line_cnt_reg__0\(0),
      I2 => \line_cnt_reg__0\(1),
      I3 => \line_cnt_reg__0\(3),
      I4 => \line_cnt_reg__0\(2),
      O => \p_0_in__0\(4)
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \line_cnt_reg__0\(5),
      I1 => \line_cnt_reg__0\(2),
      I2 => \line_cnt_reg__0\(3),
      I3 => \line_cnt_reg__0\(1),
      I4 => \line_cnt_reg__0\(0),
      I5 => \line_cnt_reg__0\(4),
      O => \p_0_in__0\(5)
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => \line_cnt_reg__0\(6),
      I1 => \n_0_line_cnt[10]_i_8\,
      I2 => \line_cnt_reg__0\(5),
      O => \p_0_in__0\(6)
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
    port map (
      I0 => \line_cnt_reg__0\(7),
      I1 => \line_cnt_reg__0\(5),
      I2 => \n_0_line_cnt[10]_i_8\,
      I3 => \line_cnt_reg__0\(6),
      O => \p_0_in__0\(7)
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
    port map (
      I0 => \line_cnt_reg__0\(8),
      I1 => \line_cnt_reg__0\(6),
      I2 => \n_0_line_cnt[10]_i_8\,
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(7),
      O => \p_0_in__0\(8)
    );
\line_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \n_0_line_cnt[10]_i_8\,
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(7),
      O => \p_0_in__0\(9)
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \n_0_line_cnt[0]_i_1\,
      Q => \line_cnt_reg__0\(0),
      R => \n_0_line_cnt[10]_i_1\
    );
\line_cnt_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \p_0_in__0\(10),
      Q => \line_cnt_reg__0\(10),
      R => \n_0_line_cnt[10]_i_1\
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \p_0_in__0\(1),
      Q => \line_cnt_reg__0\(1),
      R => \n_0_line_cnt[10]_i_1\
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \p_0_in__0\(2),
      Q => \line_cnt_reg__0\(2),
      R => \n_0_line_cnt[10]_i_1\
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \p_0_in__0\(3),
      Q => \line_cnt_reg__0\(3),
      R => \n_0_line_cnt[10]_i_1\
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \p_0_in__0\(4),
      Q => \line_cnt_reg__0\(4),
      R => \n_0_line_cnt[10]_i_1\
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \p_0_in__0\(5),
      Q => \line_cnt_reg__0\(5),
      R => \n_0_line_cnt[10]_i_1\
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \p_0_in__0\(6),
      Q => \line_cnt_reg__0\(6),
      R => \n_0_line_cnt[10]_i_1\
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \p_0_in__0\(7),
      Q => \line_cnt_reg__0\(7),
      R => \n_0_line_cnt[10]_i_1\
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \p_0_in__0\(8),
      Q => \line_cnt_reg__0\(8),
      R => \n_0_line_cnt[10]_i_1\
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_line_cnt[10]_i_2\,
      D => \p_0_in__0\(9),
      Q => \line_cnt_reg__0\(9),
      R => \n_0_line_cnt[10]_i_1\
    );
\pixel_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(0),
      O => \n_0_pixel_cnt[0]_i_1\
    );
\pixel_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFD000"
    )
    port map (
      I0 => \n_0_pixel_cnt[10]_i_3\,
      I1 => \n_0_pixel_cnt[10]_i_4\,
      I2 => \pixel_cnt_reg__0\(8),
      I3 => \pixel_cnt_reg__0\(9),
      I4 => \pixel_cnt_reg__0\(10),
      I5 => reset,
      O => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(10),
      I1 => \pixel_cnt_reg__0\(7),
      I2 => \n_0_pixel_cnt[10]_i_5\,
      I3 => \pixel_cnt_reg__0\(6),
      I4 => \pixel_cnt_reg__0\(8),
      I5 => \pixel_cnt_reg__0\(9),
      O => p_0_in(10)
    );
\pixel_cnt[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(4),
      I1 => \pixel_cnt_reg__0\(3),
      I2 => \pixel_cnt_reg__0\(1),
      I3 => \pixel_cnt_reg__0\(0),
      I4 => \pixel_cnt_reg__0\(2),
      O => \n_0_pixel_cnt[10]_i_3\
    );
\pixel_cnt[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(7),
      I1 => \pixel_cnt_reg__0\(6),
      I2 => \pixel_cnt_reg__0\(5),
      O => \n_0_pixel_cnt[10]_i_4\
    );
\pixel_cnt[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(5),
      I1 => \pixel_cnt_reg__0\(2),
      I2 => \pixel_cnt_reg__0\(0),
      I3 => \pixel_cnt_reg__0\(1),
      I4 => \pixel_cnt_reg__0\(3),
      I5 => \pixel_cnt_reg__0\(4),
      O => \n_0_pixel_cnt[10]_i_5\
    );
\pixel_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(1),
      I1 => \pixel_cnt_reg__0\(0),
      O => p_0_in(1)
    );
\pixel_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(2),
      I1 => \pixel_cnt_reg__0\(0),
      I2 => \pixel_cnt_reg__0\(1),
      O => p_0_in(2)
    );
\pixel_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(3),
      I1 => \pixel_cnt_reg__0\(1),
      I2 => \pixel_cnt_reg__0\(0),
      I3 => \pixel_cnt_reg__0\(2),
      O => p_0_in(3)
    );
\pixel_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(4),
      I1 => \pixel_cnt_reg__0\(1),
      I2 => \pixel_cnt_reg__0\(0),
      I3 => \pixel_cnt_reg__0\(2),
      I4 => \pixel_cnt_reg__0\(3),
      O => p_0_in(4)
    );
\pixel_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(5),
      I1 => \pixel_cnt_reg__0\(4),
      I2 => \pixel_cnt_reg__0\(3),
      I3 => \pixel_cnt_reg__0\(1),
      I4 => \pixel_cnt_reg__0\(0),
      I5 => \pixel_cnt_reg__0\(2),
      O => p_0_in(5)
    );
\pixel_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(6),
      I1 => \pixel_cnt_reg__0\(4),
      I2 => \pixel_cnt_reg__0\(3),
      I3 => n_0_hsync_i_i_2,
      I4 => \pixel_cnt_reg__0\(2),
      I5 => \pixel_cnt_reg__0\(5),
      O => p_0_in(6)
    );
\pixel_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(7),
      I1 => \pixel_cnt_reg__0\(5),
      I2 => \n_0_pixel_cnt[10]_i_3\,
      I3 => \pixel_cnt_reg__0\(6),
      O => p_0_in(7)
    );
\pixel_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(8),
      I1 => \pixel_cnt_reg__0\(6),
      I2 => \n_0_pixel_cnt[10]_i_3\,
      I3 => \pixel_cnt_reg__0\(5),
      I4 => \pixel_cnt_reg__0\(7),
      O => \n_0_pixel_cnt[8]_i_1\
    );
\pixel_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
    port map (
      I0 => \pixel_cnt_reg__0\(9),
      I1 => \pixel_cnt_reg__0\(7),
      I2 => \pixel_cnt_reg__0\(5),
      I3 => \n_0_pixel_cnt[10]_i_3\,
      I4 => \pixel_cnt_reg__0\(6),
      I5 => \pixel_cnt_reg__0\(8),
      O => p_0_in(9)
    );
\pixel_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => \n_0_pixel_cnt[0]_i_1\,
      Q => \pixel_cnt_reg__0\(0),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => p_0_in(10),
      Q => \pixel_cnt_reg__0\(10),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => p_0_in(1),
      Q => \pixel_cnt_reg__0\(1),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => p_0_in(2),
      Q => \pixel_cnt_reg__0\(2),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => p_0_in(3),
      Q => \pixel_cnt_reg__0\(3),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => p_0_in(4),
      Q => \pixel_cnt_reg__0\(4),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => p_0_in(5),
      Q => \pixel_cnt_reg__0\(5),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => p_0_in(6),
      Q => \pixel_cnt_reg__0\(6),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => p_0_in(7),
      Q => \pixel_cnt_reg__0\(7),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => \n_0_pixel_cnt[8]_i_1\,
      Q => \pixel_cnt_reg__0\(8),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\pixel_cnt_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => p_0_in(9),
      Q => \pixel_cnt_reg__0\(9),
      R => \n_0_pixel_cnt[10]_i_1\
    );
\v_cnt[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \line_cnt_reg__0\(0),
      I1 => n_0_valid_INST_0_i_1,
      O => v_cnt(0)
    );
\v_cnt[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \line_cnt_reg__0\(1),
      I1 => n_0_valid_INST_0_i_1,
      O => v_cnt(1)
    );
\v_cnt[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \line_cnt_reg__0\(2),
      I1 => n_0_valid_INST_0_i_1,
      O => v_cnt(2)
    );
\v_cnt[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \line_cnt_reg__0\(3),
      I1 => n_0_valid_INST_0_i_1,
      O => v_cnt(3)
    );
\v_cnt[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \line_cnt_reg__0\(4),
      I1 => n_0_valid_INST_0_i_1,
      O => v_cnt(4)
    );
\v_cnt[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100110011001100"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(10),
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(7),
      O => v_cnt(5)
    );
\v_cnt[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101010101010"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(10),
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(7),
      O => v_cnt(6)
    );
\v_cnt[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111100000000"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(10),
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(7),
      O => v_cnt(7)
    );
\v_cnt[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111000011110000"
    )
    port map (
      I0 => \line_cnt_reg__0\(9),
      I1 => \line_cnt_reg__0\(10),
      I2 => \line_cnt_reg__0\(6),
      I3 => \line_cnt_reg__0\(5),
      I4 => \line_cnt_reg__0\(8),
      I5 => \line_cnt_reg__0\(7),
      O => v_cnt(8)
    );
valid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00050015"
    )
    port map (
      I0 => n_0_valid_INST_0_i_1,
      I1 => \pixel_cnt_reg__0\(8),
      I2 => \pixel_cnt_reg__0\(9),
      I3 => \pixel_cnt_reg__0\(10),
      I4 => \pixel_cnt_reg__0\(7),
      O => valid
    );
valid_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8000"
    )
    port map (
      I0 => \line_cnt_reg__0\(7),
      I1 => \line_cnt_reg__0\(8),
      I2 => \line_cnt_reg__0\(5),
      I3 => \line_cnt_reg__0\(6),
      I4 => \line_cnt_reg__0\(10),
      I5 => \line_cnt_reg__0\(9),
      O => n_0_valid_INST_0_i_1
    );
vsync_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF8F"
    )
    port map (
      I0 => \line_cnt_reg__0\(3),
      I1 => \line_cnt_reg__0\(1),
      I2 => \line_cnt_reg__0\(9),
      I3 => n_0_vsync_i_i_2,
      I4 => n_0_vsync_i_i_3,
      I5 => reset,
      O => n_0_vsync_i_i_1
    );
vsync_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \line_cnt_reg__0\(10),
      I1 => \line_cnt_reg__0\(4),
      I2 => \line_cnt_reg__0\(7),
      I3 => \line_cnt_reg__0\(5),
      O => n_0_vsync_i_i_2
    );
vsync_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => \line_cnt_reg__0\(3),
      I1 => \line_cnt_reg__0\(2),
      I2 => \line_cnt_reg__0\(8),
      I3 => \line_cnt_reg__0\(6),
      O => n_0_vsync_i_i_3
    );
vsync_i_reg: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => '1',
      D => n_0_vsync_i_i_1,
      Q => vsync,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vga_0 is
  port (
    pclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    valid : out STD_LOGIC;
    h_cnt : out STD_LOGIC_VECTOR ( 10 downto 0 );
    v_cnt : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of vga_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of vga_0 : entity is "vga,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of vga_0 : entity is "vga_0,vga,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of vga_0 : entity is "vga_0,vga,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=vga,x_ipVersion=1.0,x_ipCoreRevision=16,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,TYPE=0}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of vga_0 : entity is "yes";
end vga_0;

architecture STRUCTURE of vga_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^h_cnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^v_cnt\ : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
  h_cnt(10) <= \<const0>\;
  h_cnt(9 downto 0) <= \^h_cnt\(9 downto 0);
  v_cnt(9) <= \<const0>\;
  v_cnt(8 downto 0) <= \^v_cnt\(8 downto 0);
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
inst: entity work.vga_0_vga
    port map (
      h_cnt(9 downto 0) => \^h_cnt\(9 downto 0),
      hsync => hsync,
      pclk => pclk,
      reset => reset,
      v_cnt(8 downto 0) => \^v_cnt\(8 downto 0),
      valid => valid,
      vsync => vsync
    );
end STRUCTURE;
