-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
-- Date        : Wed Jun 07 13:01:27 2017
-- Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Github/xupsh/Digital_Design_lab/Chapter_12/Digital_camera/digital_camera.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_funcsim.vhdl
-- Design      : cam_ov7670_ov7725_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_ov7670_ov7725_0_cam_ov7670_ov7725 is
  port (
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : out STD_LOGIC;
    H_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    vsync : in STD_LOGIC;
    pclk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    href : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_ov7670_ov7725_0_cam_ov7670_ov7725 : entity is "cam_ov7670_ov7725";
end cam_ov7670_ov7725_0_cam_ov7670_ov7725;

architecture STRUCTURE of cam_ov7670_ov7725_0_cam_ov7670_ov7725 is
  signal \^q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal address_next_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal d_latch : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \n_0_address[10]_i_1\ : STD_LOGIC;
  signal \n_0_address[11]_i_1\ : STD_LOGIC;
  signal \n_0_address[13]_i_1\ : STD_LOGIC;
  signal \n_0_address[15]_i_1\ : STD_LOGIC;
  signal \n_0_address[16]_i_1\ : STD_LOGIC;
  signal \n_0_address[16]_i_2\ : STD_LOGIC;
  signal \n_0_address_next[0]_i_2\ : STD_LOGIC;
  signal \n_0_address_next[0]_i_3\ : STD_LOGIC;
  signal \n_0_address_next[0]_i_4\ : STD_LOGIC;
  signal \n_0_address_next[0]_i_5\ : STD_LOGIC;
  signal \n_0_address_next[12]_i_2\ : STD_LOGIC;
  signal \n_0_address_next[12]_i_3\ : STD_LOGIC;
  signal \n_0_address_next[12]_i_4\ : STD_LOGIC;
  signal \n_0_address_next[12]_i_5\ : STD_LOGIC;
  signal \n_0_address_next[16]_i_2\ : STD_LOGIC;
  signal \n_0_address_next[4]_i_2\ : STD_LOGIC;
  signal \n_0_address_next[4]_i_3\ : STD_LOGIC;
  signal \n_0_address_next[4]_i_4\ : STD_LOGIC;
  signal \n_0_address_next[4]_i_5\ : STD_LOGIC;
  signal \n_0_address_next[8]_i_2\ : STD_LOGIC;
  signal \n_0_address_next[8]_i_3\ : STD_LOGIC;
  signal \n_0_address_next[8]_i_4\ : STD_LOGIC;
  signal \n_0_address_next[8]_i_5\ : STD_LOGIC;
  signal \n_0_address_next_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_address_next_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_address_next_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_address_next_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_dout[15]_i_1\ : STD_LOGIC;
  signal \n_0_hcnt[9]_i_2\ : STD_LOGIC;
  signal \n_0_hcnt_reg[0]\ : STD_LOGIC;
  signal \n_0_hcnt_reg[1]\ : STD_LOGIC;
  signal \n_0_hcnt_reg[2]\ : STD_LOGIC;
  signal \n_0_hcnt_reg[3]\ : STD_LOGIC;
  signal \n_0_hcnt_reg[4]\ : STD_LOGIC;
  signal \n_0_hcnt_reg[5]\ : STD_LOGIC;
  signal \n_0_hcnt_reg[6]\ : STD_LOGIC;
  signal \n_0_hcnt_reg[7]\ : STD_LOGIC;
  signal \n_0_hcnt_reg[8]\ : STD_LOGIC;
  signal \n_0_hcnt_reg[9]\ : STD_LOGIC;
  signal n_0_we_i_1 : STD_LOGIC;
  signal \n_0_wr_hold_reg[0]\ : STD_LOGIC;
  signal \n_1_address_next_reg[0]_i_1\ : STD_LOGIC;
  signal \n_1_address_next_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_address_next_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_address_next_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_address_next_reg[0]_i_1\ : STD_LOGIC;
  signal \n_2_address_next_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_address_next_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_address_next_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_address_next_reg[0]_i_1\ : STD_LOGIC;
  signal \n_3_address_next_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_address_next_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_address_next_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_address_next_reg[0]_i_1\ : STD_LOGIC;
  signal \n_4_address_next_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_address_next_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_address_next_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_address_next_reg[0]_i_1\ : STD_LOGIC;
  signal \n_5_address_next_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_address_next_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_address_next_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_address_next_reg[0]_i_1\ : STD_LOGIC;
  signal \n_6_address_next_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_address_next_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_address_next_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_address_next_reg[0]_i_1\ : STD_LOGIC;
  signal \n_7_address_next_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_address_next_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_address_next_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_address_next_reg[8]_i_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_address_next_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_address_next_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \H_cnt[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \H_cnt[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \H_cnt[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \H_cnt[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \H_cnt[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \H_cnt[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \H_cnt[7]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \H_cnt[8]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \address[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \address[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \address[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \address[16]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \hcnt[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hcnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hcnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hcnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hcnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hcnt[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hcnt[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hcnt[9]_i_2\ : label is "soft_lutpair0";
begin
  Q(16 downto 0) <= \^q\(16 downto 0);
\H_cnt[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => \n_0_hcnt_reg[1]\,
      I1 => \n_0_hcnt_reg[7]\,
      I2 => \n_0_hcnt_reg[8]\,
      I3 => \n_0_hcnt_reg[9]\,
      O => H_cnt(0)
    );
\H_cnt[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => \n_0_hcnt_reg[2]\,
      I1 => \n_0_hcnt_reg[7]\,
      I2 => \n_0_hcnt_reg[8]\,
      I3 => \n_0_hcnt_reg[9]\,
      O => H_cnt(1)
    );
\H_cnt[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => \n_0_hcnt_reg[3]\,
      I1 => \n_0_hcnt_reg[7]\,
      I2 => \n_0_hcnt_reg[8]\,
      I3 => \n_0_hcnt_reg[9]\,
      O => H_cnt(2)
    );
\H_cnt[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => \n_0_hcnt_reg[4]\,
      I1 => \n_0_hcnt_reg[7]\,
      I2 => \n_0_hcnt_reg[8]\,
      I3 => \n_0_hcnt_reg[9]\,
      O => H_cnt(3)
    );
\H_cnt[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => \n_0_hcnt_reg[5]\,
      I1 => \n_0_hcnt_reg[7]\,
      I2 => \n_0_hcnt_reg[8]\,
      I3 => \n_0_hcnt_reg[9]\,
      O => H_cnt(4)
    );
\H_cnt[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => \n_0_hcnt_reg[6]\,
      I1 => \n_0_hcnt_reg[7]\,
      I2 => \n_0_hcnt_reg[8]\,
      I3 => \n_0_hcnt_reg[9]\,
      O => H_cnt(5)
    );
\H_cnt[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_hcnt_reg[7]\,
      I1 => \n_0_hcnt_reg[9]\,
      O => H_cnt(6)
    );
\H_cnt[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_hcnt_reg[8]\,
      I1 => \n_0_hcnt_reg[9]\,
      O => H_cnt(7)
    );
\H_cnt[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \n_0_hcnt_reg[9]\,
      I1 => \n_0_hcnt_reg[8]\,
      I2 => \n_0_hcnt_reg[7]\,
      O => H_cnt(8)
    );
\address[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => address_next_reg(10),
      I1 => \n_0_address[16]_i_2\,
      I2 => \^q\(16),
      O => \n_0_address[10]_i_1\
    );
\address[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => address_next_reg(11),
      I1 => \n_0_address[16]_i_2\,
      I2 => \^q\(16),
      O => \n_0_address[11]_i_1\
    );
\address[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => address_next_reg(13),
      I1 => \n_0_address[16]_i_2\,
      I2 => \^q\(16),
      O => \n_0_address[13]_i_1\
    );
\address[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => vsync,
      I1 => \n_0_address[16]_i_2\,
      I2 => \^q\(16),
      O => \n_0_address[15]_i_1\
    );
\address[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => address_next_reg(16),
      I1 => \n_0_address[16]_i_2\,
      I2 => \^q\(16),
      O => \n_0_address[16]_i_1\
    );
\address[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011111111111"
    )
    port map (
      I0 => \^q\(15),
      I1 => \^q\(14),
      I2 => \^q\(10),
      I3 => \^q\(11),
      I4 => \^q\(12),
      I5 => \^q\(13),
      O => \n_0_address[16]_i_2\
    );
\address_next[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(3),
      O => \n_0_address_next[0]_i_2\
    );
\address_next[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(2),
      O => \n_0_address_next[0]_i_3\
    );
\address_next[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(1),
      O => \n_0_address_next[0]_i_4\
    );
\address_next[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => address_next_reg(0),
      O => \n_0_address_next[0]_i_5\
    );
\address_next[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(15),
      O => \n_0_address_next[12]_i_2\
    );
\address_next[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(14),
      O => \n_0_address_next[12]_i_3\
    );
\address_next[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(13),
      O => \n_0_address_next[12]_i_4\
    );
\address_next[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(12),
      O => \n_0_address_next[12]_i_5\
    );
\address_next[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(16),
      O => \n_0_address_next[16]_i_2\
    );
\address_next[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(7),
      O => \n_0_address_next[4]_i_2\
    );
\address_next[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(6),
      O => \n_0_address_next[4]_i_3\
    );
\address_next[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(5),
      O => \n_0_address_next[4]_i_4\
    );
\address_next[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(4),
      O => \n_0_address_next[4]_i_5\
    );
\address_next[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(11),
      O => \n_0_address_next[8]_i_2\
    );
\address_next[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(10),
      O => \n_0_address_next[8]_i_3\
    );
\address_next[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(9),
      O => \n_0_address_next[8]_i_4\
    );
\address_next[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => address_next_reg(8),
      O => \n_0_address_next[8]_i_5\
    );
\address_next_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_7_address_next_reg[0]_i_1\,
      Q => address_next_reg(0),
      R => vsync
    );
\address_next_reg[0]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_address_next_reg[0]_i_1\,
      CO(2) => \n_1_address_next_reg[0]_i_1\,
      CO(1) => \n_2_address_next_reg[0]_i_1\,
      CO(0) => \n_3_address_next_reg[0]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_address_next_reg[0]_i_1\,
      O(2) => \n_5_address_next_reg[0]_i_1\,
      O(1) => \n_6_address_next_reg[0]_i_1\,
      O(0) => \n_7_address_next_reg[0]_i_1\,
      S(3) => \n_0_address_next[0]_i_2\,
      S(2) => \n_0_address_next[0]_i_3\,
      S(1) => \n_0_address_next[0]_i_4\,
      S(0) => \n_0_address_next[0]_i_5\
    );
\address_next_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_5_address_next_reg[8]_i_1\,
      Q => address_next_reg(10),
      R => vsync
    );
\address_next_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_4_address_next_reg[8]_i_1\,
      Q => address_next_reg(11),
      R => vsync
    );
\address_next_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_7_address_next_reg[12]_i_1\,
      Q => address_next_reg(12),
      R => vsync
    );
\address_next_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_address_next_reg[8]_i_1\,
      CO(3) => \n_0_address_next_reg[12]_i_1\,
      CO(2) => \n_1_address_next_reg[12]_i_1\,
      CO(1) => \n_2_address_next_reg[12]_i_1\,
      CO(0) => \n_3_address_next_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_address_next_reg[12]_i_1\,
      O(2) => \n_5_address_next_reg[12]_i_1\,
      O(1) => \n_6_address_next_reg[12]_i_1\,
      O(0) => \n_7_address_next_reg[12]_i_1\,
      S(3) => \n_0_address_next[12]_i_2\,
      S(2) => \n_0_address_next[12]_i_3\,
      S(1) => \n_0_address_next[12]_i_4\,
      S(0) => \n_0_address_next[12]_i_5\
    );
\address_next_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_6_address_next_reg[12]_i_1\,
      Q => address_next_reg(13),
      R => vsync
    );
\address_next_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_5_address_next_reg[12]_i_1\,
      Q => address_next_reg(14),
      R => vsync
    );
\address_next_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_4_address_next_reg[12]_i_1\,
      Q => address_next_reg(15),
      R => vsync
    );
\address_next_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_7_address_next_reg[16]_i_1\,
      Q => address_next_reg(16),
      R => vsync
    );
\address_next_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_address_next_reg[12]_i_1\,
      CO(3 downto 0) => \NLW_address_next_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 1) => \NLW_address_next_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \n_7_address_next_reg[16]_i_1\,
      S(3) => '0',
      S(2) => '0',
      S(1) => '0',
      S(0) => \n_0_address_next[16]_i_2\
    );
\address_next_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_6_address_next_reg[0]_i_1\,
      Q => address_next_reg(1),
      R => vsync
    );
\address_next_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_5_address_next_reg[0]_i_1\,
      Q => address_next_reg(2),
      R => vsync
    );
\address_next_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_4_address_next_reg[0]_i_1\,
      Q => address_next_reg(3),
      R => vsync
    );
\address_next_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_7_address_next_reg[4]_i_1\,
      Q => address_next_reg(4),
      R => vsync
    );
\address_next_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_address_next_reg[0]_i_1\,
      CO(3) => \n_0_address_next_reg[4]_i_1\,
      CO(2) => \n_1_address_next_reg[4]_i_1\,
      CO(1) => \n_2_address_next_reg[4]_i_1\,
      CO(0) => \n_3_address_next_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_address_next_reg[4]_i_1\,
      O(2) => \n_5_address_next_reg[4]_i_1\,
      O(1) => \n_6_address_next_reg[4]_i_1\,
      O(0) => \n_7_address_next_reg[4]_i_1\,
      S(3) => \n_0_address_next[4]_i_2\,
      S(2) => \n_0_address_next[4]_i_3\,
      S(1) => \n_0_address_next[4]_i_4\,
      S(0) => \n_0_address_next[4]_i_5\
    );
\address_next_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_6_address_next_reg[4]_i_1\,
      Q => address_next_reg(5),
      R => vsync
    );
\address_next_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_5_address_next_reg[4]_i_1\,
      Q => address_next_reg(6),
      R => vsync
    );
\address_next_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_4_address_next_reg[4]_i_1\,
      Q => address_next_reg(7),
      R => vsync
    );
\address_next_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_7_address_next_reg[8]_i_1\,
      Q => address_next_reg(8),
      R => vsync
    );
\address_next_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_address_next_reg[4]_i_1\,
      CO(3) => \n_0_address_next_reg[8]_i_1\,
      CO(2) => \n_1_address_next_reg[8]_i_1\,
      CO(1) => \n_2_address_next_reg[8]_i_1\,
      CO(0) => \n_3_address_next_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_address_next_reg[8]_i_1\,
      O(2) => \n_5_address_next_reg[8]_i_1\,
      O(1) => \n_6_address_next_reg[8]_i_1\,
      O(0) => \n_7_address_next_reg[8]_i_1\,
      S(3) => \n_0_address_next[8]_i_2\,
      S(2) => \n_0_address_next[8]_i_3\,
      S(1) => \n_0_address_next[8]_i_4\,
      S(0) => \n_0_address_next[8]_i_5\
    );
\address_next_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => p_0_in_0,
      D => \n_6_address_next_reg[8]_i_1\,
      Q => address_next_reg(9),
      R => vsync
    );
\address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(0),
      Q => \^q\(0),
      R => \n_0_address[15]_i_1\
    );
\address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => \n_0_address[10]_i_1\,
      Q => \^q\(10),
      R => vsync
    );
\address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => \n_0_address[11]_i_1\,
      Q => \^q\(11),
      R => vsync
    );
\address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(12),
      Q => \^q\(12),
      R => \n_0_address[15]_i_1\
    );
\address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => \n_0_address[13]_i_1\,
      Q => \^q\(13),
      R => vsync
    );
\address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(14),
      Q => \^q\(14),
      R => \n_0_address[15]_i_1\
    );
\address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(15),
      Q => \^q\(15),
      R => \n_0_address[15]_i_1\
    );
\address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => \n_0_address[16]_i_1\,
      Q => \^q\(16),
      R => vsync
    );
\address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(1),
      Q => \^q\(1),
      R => \n_0_address[15]_i_1\
    );
\address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(2),
      Q => \^q\(2),
      R => \n_0_address[15]_i_1\
    );
\address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(3),
      Q => \^q\(3),
      R => \n_0_address[15]_i_1\
    );
\address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(4),
      Q => \^q\(4),
      R => \n_0_address[15]_i_1\
    );
\address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(5),
      Q => \^q\(5),
      R => \n_0_address[15]_i_1\
    );
\address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(6),
      Q => \^q\(6),
      R => \n_0_address[15]_i_1\
    );
\address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(7),
      Q => \^q\(7),
      R => \n_0_address[15]_i_1\
    );
\address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(8),
      Q => \^q\(8),
      R => \n_0_address[15]_i_1\
    );
\address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => address_next_reg(9),
      Q => \^q\(9),
      R => \n_0_address[15]_i_1\
    );
\d_latch_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d(0),
      Q => d_latch(0),
      R => '0'
    );
\d_latch_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d_latch(2),
      Q => d_latch(10),
      R => '0'
    );
\d_latch_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d_latch(3),
      Q => d_latch(11),
      R => '0'
    );
\d_latch_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d_latch(4),
      Q => d_latch(12),
      R => '0'
    );
\d_latch_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d_latch(5),
      Q => d_latch(13),
      R => '0'
    );
\d_latch_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d_latch(6),
      Q => d_latch(14),
      R => '0'
    );
\d_latch_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d_latch(7),
      Q => d_latch(15),
      R => '0'
    );
\d_latch_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d(1),
      Q => d_latch(1),
      R => '0'
    );
\d_latch_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d(2),
      Q => d_latch(2),
      R => '0'
    );
\d_latch_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d(3),
      Q => d_latch(3),
      R => '0'
    );
\d_latch_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d(4),
      Q => d_latch(4),
      R => '0'
    );
\d_latch_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d(5),
      Q => d_latch(5),
      R => '0'
    );
\d_latch_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d(6),
      Q => d_latch(6),
      R => '0'
    );
\d_latch_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d(7),
      Q => d_latch(7),
      R => '0'
    );
\d_latch_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d_latch(0),
      Q => d_latch(8),
      R => '0'
    );
\d_latch_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => d_latch(1),
      Q => d_latch(9),
      R => '0'
    );
\dout[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_0_in_0,
      I1 => vsync,
      O => \n_0_dout[15]_i_1\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(0),
      Q => dout(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(10),
      Q => dout(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(11),
      Q => dout(11),
      R => '0'
    );
\dout_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(12),
      Q => dout(12),
      R => '0'
    );
\dout_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(13),
      Q => dout(13),
      R => '0'
    );
\dout_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(14),
      Q => dout(14),
      R => '0'
    );
\dout_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(15),
      Q => dout(15),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(1),
      Q => dout(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(2),
      Q => dout(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(3),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(4),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(5),
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(6),
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(7),
      Q => dout(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(8),
      Q => dout(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => \n_0_dout[15]_i_1\,
      D => d_latch(9),
      Q => dout(9),
      R => '0'
    );
\hcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_hcnt_reg[0]\,
      O => p_0_in(0)
    );
\hcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_hcnt_reg[0]\,
      I1 => \n_0_hcnt_reg[1]\,
      O => p_0_in(1)
    );
\hcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \n_0_hcnt_reg[2]\,
      I1 => \n_0_hcnt_reg[0]\,
      I2 => \n_0_hcnt_reg[1]\,
      O => p_0_in(2)
    );
\hcnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \n_0_hcnt_reg[3]\,
      I1 => \n_0_hcnt_reg[1]\,
      I2 => \n_0_hcnt_reg[0]\,
      I3 => \n_0_hcnt_reg[2]\,
      O => p_0_in(3)
    );
\hcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \n_0_hcnt_reg[2]\,
      I1 => \n_0_hcnt_reg[0]\,
      I2 => \n_0_hcnt_reg[1]\,
      I3 => \n_0_hcnt_reg[3]\,
      I4 => \n_0_hcnt_reg[4]\,
      O => p_0_in(4)
    );
\hcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \n_0_hcnt_reg[5]\,
      I1 => \n_0_hcnt_reg[2]\,
      I2 => \n_0_hcnt_reg[0]\,
      I3 => \n_0_hcnt_reg[1]\,
      I4 => \n_0_hcnt_reg[3]\,
      I5 => \n_0_hcnt_reg[4]\,
      O => p_0_in(5)
    );
\hcnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \n_0_hcnt_reg[6]\,
      I1 => \n_0_hcnt[9]_i_2\,
      I2 => \n_0_hcnt_reg[5]\,
      O => p_0_in(6)
    );
\hcnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \n_0_hcnt_reg[7]\,
      I1 => \n_0_hcnt_reg[5]\,
      I2 => \n_0_hcnt[9]_i_2\,
      I3 => \n_0_hcnt_reg[6]\,
      O => p_0_in(7)
    );
\hcnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \n_0_hcnt_reg[8]\,
      I1 => \n_0_hcnt_reg[6]\,
      I2 => \n_0_hcnt[9]_i_2\,
      I3 => \n_0_hcnt_reg[5]\,
      I4 => \n_0_hcnt_reg[7]\,
      O => p_0_in(8)
    );
\hcnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \n_0_hcnt_reg[9]\,
      I1 => \n_0_hcnt_reg[7]\,
      I2 => \n_0_hcnt_reg[5]\,
      I3 => \n_0_hcnt[9]_i_2\,
      I4 => \n_0_hcnt_reg[6]\,
      I5 => \n_0_hcnt_reg[8]\,
      O => p_0_in(9)
    );
\hcnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \n_0_hcnt_reg[4]\,
      I1 => \n_0_hcnt_reg[3]\,
      I2 => \n_0_hcnt_reg[1]\,
      I3 => \n_0_hcnt_reg[0]\,
      I4 => \n_0_hcnt_reg[2]\,
      O => \n_0_hcnt[9]_i_2\
    );
\hcnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => href,
      D => p_0_in(0),
      Q => \n_0_hcnt_reg[0]\,
      R => vsync
    );
\hcnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => href,
      D => p_0_in(1),
      Q => \n_0_hcnt_reg[1]\,
      R => vsync
    );
\hcnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => href,
      D => p_0_in(2),
      Q => \n_0_hcnt_reg[2]\,
      R => vsync
    );
\hcnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => href,
      D => p_0_in(3),
      Q => \n_0_hcnt_reg[3]\,
      R => vsync
    );
\hcnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => href,
      D => p_0_in(4),
      Q => \n_0_hcnt_reg[4]\,
      R => vsync
    );
\hcnt_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => href,
      D => p_0_in(5),
      Q => \n_0_hcnt_reg[5]\,
      R => vsync
    );
\hcnt_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => href,
      D => p_0_in(6),
      Q => \n_0_hcnt_reg[6]\,
      R => vsync
    );
\hcnt_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => href,
      D => p_0_in(7),
      Q => \n_0_hcnt_reg[7]\,
      R => vsync
    );
\hcnt_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => href,
      D => p_0_in(8),
      Q => \n_0_hcnt_reg[8]\,
      R => vsync
    );
\hcnt_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => href,
      D => p_0_in(9),
      Q => \n_0_hcnt_reg[9]\,
      R => vsync
    );
we_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vsync,
      O => n_0_we_i_1
    );
we_reg: unisim.vcomponents.FDRE
    port map (
      C => pclk,
      CE => n_0_we_i_1,
      D => p_0_in_0,
      Q => we,
      R => '0'
    );
\wr_hold[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => href,
      I1 => \n_0_wr_hold_reg[0]\,
      O => p_0_out(0)
    );
\wr_hold_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => p_0_out(0),
      Q => \n_0_wr_hold_reg[0]\,
      R => vsync
    );
\wr_hold_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => pclk,
      CE => '1',
      D => \n_0_wr_hold_reg[0]\,
      Q => p_0_in_0,
      R => vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_ov7670_ov7725_0 is
  port (
    pclk : in STD_LOGIC;
    vsync : in STD_LOGIC;
    href : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    H_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    V_cnt : out STD_LOGIC_VECTOR ( 10 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : out STD_LOGIC;
    wclk : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cam_ov7670_ov7725_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cam_ov7670_ov7725_0 : entity is "cam_ov7670_ov7725,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cam_ov7670_ov7725_0 : entity is "cam_ov7670_ov7725_0,cam_ov7670_ov7725,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of cam_ov7670_ov7725_0 : entity is "cam_ov7670_ov7725_0,cam_ov7670_ov7725,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=cam_ov7670_ov7725,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cam_ov7670_ov7725_0 : entity is "yes";
end cam_ov7670_ov7725_0;

architecture STRUCTURE of cam_ov7670_ov7725_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^h_cnt\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^pclk\ : STD_LOGIC;
begin
  H_cnt(11) <= \<const0>\;
  H_cnt(10) <= \<const0>\;
  H_cnt(9) <= \<const0>\;
  H_cnt(8 downto 0) <= \^h_cnt\(8 downto 0);
  V_cnt(10) <= \<const0>\;
  V_cnt(9) <= \<const0>\;
  V_cnt(8) <= \<const0>\;
  V_cnt(7) <= \<const0>\;
  V_cnt(6) <= \<const0>\;
  V_cnt(5) <= \<const0>\;
  V_cnt(4) <= \<const0>\;
  V_cnt(3) <= \<const0>\;
  V_cnt(2) <= \<const0>\;
  V_cnt(1) <= \<const0>\;
  V_cnt(0) <= \<const0>\;
  \^pclk\ <= pclk;
  wclk <= \^pclk\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
inst: entity work.cam_ov7670_ov7725_0_cam_ov7670_ov7725
    port map (
      H_cnt(8 downto 0) => \^h_cnt\(8 downto 0),
      Q(16 downto 0) => addr(16 downto 0),
      d(7 downto 0) => d(7 downto 0),
      dout(15 downto 0) => dout(15 downto 0),
      href => href,
      pclk => \^pclk\,
      vsync => vsync,
      we => we
    );
end STRUCTURE;
