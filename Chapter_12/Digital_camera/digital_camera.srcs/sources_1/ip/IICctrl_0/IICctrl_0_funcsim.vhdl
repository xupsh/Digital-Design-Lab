-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
-- Date        : Wed Jun 07 12:57:56 2017
-- Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Github/xupsh/Digital_Design_lab/Chapter_12/Digital_camera/digital_camera.srcs/sources_1/ip/IICctrl_0/IICctrl_0_funcsim.vhdl
-- Design      : IICctrl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IICctrl_0_I2C_Controller is
  port (
    I2C_SCLK : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I2C_SDAT : inout STD_LOGIC;
    iCLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    mI2C_CTRL_CLK : in STD_LOGIC;
    i2c_en_r0 : in STD_LOGIC;
    i2c_en_r1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    LUT_DATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Slave_Addr : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IICctrl_0_I2C_Controller : entity is "I2C_Controller";
end IICctrl_0_I2C_Controller;

architecture STRUCTURE of IICctrl_0_I2C_Controller is
  signal ACKR13_out : STD_LOGIC;
  signal ACKW10_out : STD_LOGIC;
  signal I2C_BIT6_out : STD_LOGIC;
  signal SDO : STD_LOGIC;
  signal \SD_COUNTER_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal mI2C_END : STD_LOGIC;
  signal n_0_ACKR1_i_1 : STD_LOGIC;
  signal n_0_ACKR1_i_3 : STD_LOGIC;
  signal n_0_ACKR1_reg : STD_LOGIC;
  signal n_0_ACKR2_i_1 : STD_LOGIC;
  signal n_0_ACKR2_i_2 : STD_LOGIC;
  signal n_0_ACKR2_i_3 : STD_LOGIC;
  signal n_0_ACKR2_i_4 : STD_LOGIC;
  signal n_0_ACKR2_reg : STD_LOGIC;
  signal n_0_ACKR3_i_1 : STD_LOGIC;
  signal n_0_ACKR3_i_2 : STD_LOGIC;
  signal n_0_ACKR3_i_3 : STD_LOGIC;
  signal n_0_ACKR3_reg : STD_LOGIC;
  signal n_0_ACKW1_i_1 : STD_LOGIC;
  signal n_0_ACKW1_reg : STD_LOGIC;
  signal n_0_ACKW2_i_1 : STD_LOGIC;
  signal n_0_ACKW2_i_2 : STD_LOGIC;
  signal n_0_ACKW2_reg : STD_LOGIC;
  signal n_0_ACKW3_i_1 : STD_LOGIC;
  signal n_0_ACKW3_i_2 : STD_LOGIC;
  signal n_0_ACKW3_i_3 : STD_LOGIC;
  signal n_0_ACKW3_reg : STD_LOGIC;
  signal n_0_END_i_1 : STD_LOGIC;
  signal n_0_END_i_2 : STD_LOGIC;
  signal n_0_END_i_3 : STD_LOGIC;
  signal n_0_END_i_4 : STD_LOGIC;
  signal n_0_I2C_BIT_i_1 : STD_LOGIC;
  signal n_0_I2C_BIT_i_10 : STD_LOGIC;
  signal n_0_I2C_BIT_i_11 : STD_LOGIC;
  signal n_0_I2C_BIT_i_12 : STD_LOGIC;
  signal n_0_I2C_BIT_i_13 : STD_LOGIC;
  signal n_0_I2C_BIT_i_14 : STD_LOGIC;
  signal n_0_I2C_BIT_i_15 : STD_LOGIC;
  signal n_0_I2C_BIT_i_16 : STD_LOGIC;
  signal n_0_I2C_BIT_i_17 : STD_LOGIC;
  signal n_0_I2C_BIT_i_18 : STD_LOGIC;
  signal n_0_I2C_BIT_i_19 : STD_LOGIC;
  signal n_0_I2C_BIT_i_2 : STD_LOGIC;
  signal n_0_I2C_BIT_i_20 : STD_LOGIC;
  signal n_0_I2C_BIT_i_21 : STD_LOGIC;
  signal n_0_I2C_BIT_i_3 : STD_LOGIC;
  signal n_0_I2C_BIT_i_4 : STD_LOGIC;
  signal n_0_I2C_BIT_i_6 : STD_LOGIC;
  signal n_0_I2C_BIT_i_7 : STD_LOGIC;
  signal n_0_I2C_BIT_i_8 : STD_LOGIC;
  signal n_0_I2C_BIT_i_9 : STD_LOGIC;
  signal n_0_I2C_BIT_reg : STD_LOGIC;
  signal n_0_I2C_SCLK_INST_0_i_1 : STD_LOGIC;
  signal n_0_I2C_SCLK_INST_0_i_2 : STD_LOGIC;
  signal n_0_I2C_SDAT_INST_0_i_2 : STD_LOGIC;
  signal n_0_I2C_SDAT_INST_0_i_3 : STD_LOGIC;
  signal n_0_I2C_SDAT_INST_0_i_4 : STD_LOGIC;
  signal n_0_SCLK_i_1 : STD_LOGIC;
  signal n_0_SCLK_i_10 : STD_LOGIC;
  signal n_0_SCLK_i_2 : STD_LOGIC;
  signal n_0_SCLK_i_3 : STD_LOGIC;
  signal n_0_SCLK_i_4 : STD_LOGIC;
  signal n_0_SCLK_i_5 : STD_LOGIC;
  signal n_0_SCLK_i_6 : STD_LOGIC;
  signal n_0_SCLK_i_7 : STD_LOGIC;
  signal n_0_SCLK_i_8 : STD_LOGIC;
  signal n_0_SCLK_i_9 : STD_LOGIC;
  signal n_0_SCLK_reg : STD_LOGIC;
  signal \n_0_SD_COUNTER[5]_i_1\ : STD_LOGIC;
  signal \n_0_SD_COUNTER[5]_i_3\ : STD_LOGIC;
  signal \n_0_SD_COUNTER[5]_i_4\ : STD_LOGIC;
  signal \n_0_SD_COUNTER[5]_i_5\ : STD_LOGIC;
  signal \n_0_SD_COUNTER[5]_i_6\ : STD_LOGIC;
  signal n_0_g0_b0 : STD_LOGIC;
  signal \n_0_mSetup_ST[1]_i_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ACKR1_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ACKR2_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ACKR3_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of I2C_BIT_i_15 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of I2C_BIT_i_19 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of I2C_BIT_i_21 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of I2C_BIT_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of I2C_BIT_i_6 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of I2C_BIT_i_7 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of I2C_SDAT_INST_0_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of SCLK_i_10 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of SCLK_i_6 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of SCLK_i_7 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of SCLK_i_8 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of SCLK_i_9 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SD_COUNTER[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SD_COUNTER[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \SD_COUNTER[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \SD_COUNTER[5]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SD_COUNTER[5]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SD_COUNTER[5]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mSetup_ST[0]_i_1\ : label is "soft_lutpair7";
begin
ACKR1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFFFFBF0000"
    )
    port map (
      I0 => I2C_SDAT,
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => I1,
      I3 => I2,
      I4 => ACKR13_out,
      I5 => n_0_ACKR1_reg,
      O => n_0_ACKR1_i_1
    );
ACKR1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A0000AAAAAAAA"
    )
    port map (
      I0 => \n_0_SD_COUNTER[5]_i_3\,
      I1 => I2,
      I2 => \SD_COUNTER_reg__0\(0),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => n_0_ACKR1_i_3,
      I5 => I1,
      O => ACKR13_out
    );
ACKR1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000009"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(3),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => \SD_COUNTER_reg__0\(5),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(1),
      O => n_0_ACKR1_i_3
    );
ACKR1_reg: unisim.vcomponents.FDPE
    port map (
      C => iCLK,
      CE => '1',
      D => n_0_ACKR1_i_1,
      PRE => rst,
      Q => n_0_ACKR1_reg
    );
ACKR2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF0000FD00"
    )
    port map (
      I0 => I1,
      I1 => I2,
      I2 => n_0_ACKR2_i_2,
      I3 => \n_0_SD_COUNTER[5]_i_3\,
      I4 => n_0_ACKR2_i_3,
      I5 => n_0_ACKR2_reg,
      O => n_0_ACKR2_i_1
    );
ACKR2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => I2C_SDAT,
      I1 => \SD_COUNTER_reg__0\(3),
      O => n_0_ACKR2_i_2
    );
ACKR2_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAA80"
    )
    port map (
      I0 => I1,
      I1 => I2,
      I2 => \SD_COUNTER_reg__0\(0),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => n_0_ACKR2_i_4,
      O => n_0_ACKR2_i_3
    );
ACKR2_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => \SD_COUNTER_reg__0\(1),
      O => n_0_ACKR2_i_4
    );
ACKR2_reg: unisim.vcomponents.FDPE
    port map (
      C => iCLK,
      CE => '1',
      D => n_0_ACKR2_i_1,
      PRE => rst,
      Q => n_0_ACKR2_reg
    );
ACKR3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFE000F0F0"
    )
    port map (
      I0 => I2,
      I1 => n_0_ACKR2_i_2,
      I2 => \n_0_SD_COUNTER[5]_i_3\,
      I3 => n_0_ACKR3_i_2,
      I4 => I1,
      I5 => n_0_ACKR3_reg,
      O => n_0_ACKR3_i_1
    );
ACKR3_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000007"
    )
    port map (
      I0 => I2,
      I1 => \SD_COUNTER_reg__0\(0),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => n_0_ACKR3_i_3,
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => \SD_COUNTER_reg__0\(3),
      O => n_0_ACKR3_i_2
    );
ACKR3_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(1),
      I1 => \SD_COUNTER_reg__0\(2),
      O => n_0_ACKR3_i_3
    );
ACKR3_reg: unisim.vcomponents.FDPE
    port map (
      C => iCLK,
      CE => '1',
      D => n_0_ACKR3_i_1,
      PRE => rst,
      Q => n_0_ACKR3_reg
    );
ACKW1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFBFFF0000"
    )
    port map (
      I0 => I2C_SDAT,
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => I2,
      I3 => I1,
      I4 => ACKW10_out,
      I5 => n_0_ACKW1_reg,
      O => n_0_ACKW1_i_1
    );
ACKW1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80008808AAAAAAAA"
    )
    port map (
      I0 => \n_0_SD_COUNTER[5]_i_3\,
      I1 => n_0_ACKR1_i_3,
      I2 => \SD_COUNTER_reg__0\(0),
      I3 => I2,
      I4 => \SD_COUNTER_reg__0\(2),
      I5 => I1,
      O => ACKW10_out
    );
ACKW1_reg: unisim.vcomponents.FDPE
    port map (
      C => iCLK,
      CE => '1',
      D => n_0_ACKW1_i_1,
      PRE => rst,
      Q => n_0_ACKW1_reg
    );
ACKW2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF0000F700"
    )
    port map (
      I0 => I2,
      I1 => I1,
      I2 => n_0_ACKR2_i_2,
      I3 => \n_0_SD_COUNTER[5]_i_3\,
      I4 => n_0_ACKW2_i_2,
      I5 => n_0_ACKW2_reg,
      O => n_0_ACKW2_i_1
    );
ACKW2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAAAAAA8A88"
    )
    port map (
      I0 => I1,
      I1 => n_0_ACKR2_i_4,
      I2 => I2,
      I3 => \SD_COUNTER_reg__0\(0),
      I4 => \SD_COUNTER_reg__0\(4),
      I5 => \SD_COUNTER_reg__0\(3),
      O => n_0_ACKW2_i_2
    );
ACKW2_reg: unisim.vcomponents.FDPE
    port map (
      C => iCLK,
      CE => '1',
      D => n_0_ACKW2_i_1,
      PRE => rst,
      Q => n_0_ACKW2_reg
    );
ACKW3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFD000F0F0"
    )
    port map (
      I0 => I2,
      I1 => n_0_ACKW3_i_2,
      I2 => \n_0_SD_COUNTER[5]_i_3\,
      I3 => n_0_ACKW3_i_3,
      I4 => I1,
      I5 => n_0_ACKW3_reg,
      O => n_0_ACKW3_i_1
    );
ACKW3_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => I2C_SDAT,
      I1 => \SD_COUNTER_reg__0\(1),
      O => n_0_ACKW3_i_2
    );
ACKW3_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001000100000001"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => n_0_SCLK_i_8,
      I2 => \SD_COUNTER_reg__0\(5),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => I2,
      O => n_0_ACKW3_i_3
    );
ACKW3_reg: unisim.vcomponents.FDPE
    port map (
      C => iCLK,
      CE => '1',
      D => n_0_ACKW3_i_1,
      PRE => rst,
      Q => n_0_ACKW3_reg
    );
END_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF8F8F80008080"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => I1,
      I2 => \n_0_SD_COUNTER[5]_i_3\,
      I3 => n_0_END_i_2,
      I4 => n_0_END_i_3,
      I5 => mI2C_END,
      O => n_0_END_i_1
    );
END_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(4),
      I5 => I1,
      O => n_0_END_i_2
    );
END_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7EFFFFFFFFFFF"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(1),
      I1 => I2,
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(2),
      I5 => n_0_END_i_4,
      O => n_0_END_i_3
    );
END_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(0),
      O => n_0_END_i_4
    );
END_reg: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => n_0_END_i_1,
      Q => mI2C_END
    );
I2C_BIT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4FFFFFFF4F0000"
    )
    port map (
      I0 => n_0_I2C_BIT_i_2,
      I1 => n_0_I2C_BIT_i_3,
      I2 => I1,
      I3 => n_0_I2C_BIT_i_4,
      I4 => I2C_BIT6_out,
      I5 => n_0_I2C_BIT_reg,
      O => n_0_I2C_BIT_i_1
    );
I2C_BIT_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAAAAAAEAAAA"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => n_0_I2C_BIT_i_18,
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(4),
      I5 => n_0_I2C_BIT_i_19,
      O => n_0_I2C_BIT_i_10
    );
I2C_BIT_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00003202"
    )
    port map (
      I0 => n_0_I2C_BIT_i_17,
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => n_0_I2C_BIT_i_20,
      I4 => n_0_I2C_BIT_i_6,
      I5 => n_0_I2C_BIT_i_21,
      O => n_0_I2C_BIT_i_11
    );
I2C_BIT_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23E320E0"
    )
    port map (
      I0 => n_0_I2C_BIT_i_19,
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => n_0_I2C_BIT_i_18,
      O => n_0_I2C_BIT_i_12
    );
I2C_BIT_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFCFFFDFFBFF"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(4),
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(2),
      I5 => \SD_COUNTER_reg__0\(0),
      O => n_0_I2C_BIT_i_13
    );
I2C_BIT_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => LUT_DATA(2),
      I1 => LUT_DATA(3),
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => LUT_DATA(4),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => LUT_DATA(5),
      O => n_0_I2C_BIT_i_14
    );
I2C_BIT_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0555055"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(3),
      I1 => LUT_DATA(15),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => \SD_COUNTER_reg__0\(0),
      O => n_0_I2C_BIT_i_15
    );
I2C_BIT_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => Slave_Addr(0),
      I1 => Slave_Addr(1),
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => Slave_Addr(2),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => Slave_Addr(3),
      O => n_0_I2C_BIT_i_16
    );
I2C_BIT_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => Slave_Addr(4),
      I1 => Slave_Addr(5),
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => Slave_Addr(6),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => Slave_Addr(7),
      O => n_0_I2C_BIT_i_17
    );
I2C_BIT_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => LUT_DATA(11),
      I1 => LUT_DATA(12),
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => LUT_DATA(13),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => LUT_DATA(14),
      O => n_0_I2C_BIT_i_18
    );
I2C_BIT_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
    port map (
      I0 => LUT_DATA(8),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => LUT_DATA(9),
      I3 => \SD_COUNTER_reg__0\(0),
      I4 => LUT_DATA(10),
      O => n_0_I2C_BIT_i_19
    );
I2C_BIT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00070000FFFFFFFF"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => n_0_I2C_BIT_i_6,
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => n_0_I2C_BIT_i_7,
      I5 => I2,
      O => n_0_I2C_BIT_i_2
    );
I2C_BIT_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
    port map (
      I0 => Slave_Addr(1),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => Slave_Addr(2),
      I3 => \SD_COUNTER_reg__0\(0),
      I4 => Slave_Addr(3),
      O => n_0_I2C_BIT_i_20
    );
I2C_BIT_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(4),
      I1 => \SD_COUNTER_reg__0\(5),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(1),
      O => n_0_I2C_BIT_i_21
    );
I2C_BIT_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF808F"
    )
    port map (
      I0 => n_0_I2C_BIT_i_8,
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => n_0_I2C_BIT_i_9,
      I4 => n_0_I2C_BIT_i_10,
      O => n_0_I2C_BIT_i_3
    );
I2C_BIT_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4544444445454445"
    )
    port map (
      I0 => I2,
      I1 => n_0_I2C_BIT_i_11,
      I2 => \SD_COUNTER_reg__0\(5),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => n_0_I2C_BIT_i_12,
      I5 => n_0_I2C_BIT_i_9,
      O => n_0_I2C_BIT_i_4
    );
I2C_BIT_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AFCF0000"
    )
    port map (
      I0 => n_0_I2C_BIT_i_13,
      I1 => n_0_g0_b0,
      I2 => I1,
      I3 => I2,
      I4 => i2c_en_r1,
      I5 => i2c_en_r0,
      O => I2C_BIT6_out
    );
I2C_BIT_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(4),
      I1 => \SD_COUNTER_reg__0\(5),
      O => n_0_I2C_BIT_i_6
    );
I2C_BIT_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBABF"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => LUT_DATA(0),
      I2 => \SD_COUNTER_reg__0\(0),
      I3 => LUT_DATA(1),
      I4 => \SD_COUNTER_reg__0\(1),
      O => n_0_I2C_BIT_i_7
    );
I2C_BIT_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0ACA0A0A0ACA0"
    )
    port map (
      I0 => n_0_I2C_BIT_i_14,
      I1 => LUT_DATA(7),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => LUT_DATA(6),
      O => n_0_I2C_BIT_i_8
    );
I2C_BIT_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555F11FF555F1100"
    )
    port map (
      I0 => n_0_I2C_BIT_i_15,
      I1 => n_0_I2C_BIT_i_16,
      I2 => n_0_I2C_BIT_i_17,
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(2),
      I5 => \SD_COUNTER_reg__0\(1),
      O => n_0_I2C_BIT_i_9
    );
I2C_BIT_reg: unisim.vcomponents.FDPE
    port map (
      C => iCLK,
      CE => '1',
      D => n_0_I2C_BIT_i_1,
      PRE => rst,
      Q => n_0_I2C_BIT_reg
    );
I2C_SCLK_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7F0F0B080F0F0"
    )
    port map (
      I0 => n_0_I2C_SCLK_INST_0_i_1,
      I1 => I2,
      I2 => n_0_SCLK_reg,
      I3 => n_0_I2C_SCLK_INST_0_i_2,
      I4 => I1,
      I5 => mI2C_CTRL_CLK,
      O => I2C_SCLK
    );
I2C_SCLK_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEABAEA9AAE9A9E9"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => \SD_COUNTER_reg__0\(2),
      I4 => \SD_COUNTER_reg__0\(1),
      I5 => \SD_COUNTER_reg__0\(0),
      O => n_0_I2C_SCLK_INST_0_i_1
    );
I2C_SCLK_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F280F681F803D807"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(5),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(1),
      I5 => \SD_COUNTER_reg__0\(2),
      O => n_0_I2C_SCLK_INST_0_i_2
    );
I2C_SDAT_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => n_0_I2C_BIT_reg,
      I1 => SDO,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => I2C_SDAT
    );
I2C_SDAT_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => n_0_I2C_SDAT_INST_0_i_2,
      I1 => I2,
      I2 => n_0_I2C_SDAT_INST_0_i_3,
      I3 => n_0_I2C_SDAT_INST_0_i_4,
      O => SDO
    );
I2C_SDAT_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFF7DFD7DFD7D7F7"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(4),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(2),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => \SD_COUNTER_reg__0\(1),
      O => n_0_I2C_SDAT_INST_0_i_2
    );
I2C_SDAT_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFDFFF"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(4),
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => \SD_COUNTER_reg__0\(0),
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => \SD_COUNTER_reg__0\(2),
      O => n_0_I2C_SDAT_INST_0_i_3
    );
I2C_SDAT_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000603000"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(2),
      I5 => \SD_COUNTER_reg__0\(5),
      O => n_0_I2C_SDAT_INST_0_i_4
    );
SCLK_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBBBB00808888"
    )
    port map (
      I0 => n_0_SCLK_i_2,
      I1 => \n_0_SD_COUNTER[5]_i_3\,
      I2 => n_0_SCLK_i_3,
      I3 => n_0_SCLK_i_4,
      I4 => n_0_SCLK_i_5,
      I5 => n_0_SCLK_reg,
      O => n_0_SCLK_i_1
    );
SCLK_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => I2,
      I1 => I1,
      O => n_0_SCLK_i_10
    );
SCLK_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF8FFFCFFFAFFFFF"
    )
    port map (
      I0 => I2,
      I1 => n_0_SCLK_i_6,
      I2 => I1,
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(1),
      I5 => n_0_SCLK_i_7,
      O => n_0_SCLK_i_2
    );
SCLK_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEEA0000"
    )
    port map (
      I0 => n_0_SCLK_i_8,
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => \SD_COUNTER_reg__0\(0),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => n_0_SCLK_i_9,
      O => n_0_SCLK_i_3
    );
SCLK_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000035FFFFFF"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(1),
      I1 => \SD_COUNTER_reg__0\(0),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(4),
      I5 => n_0_SCLK_i_10,
      O => n_0_SCLK_i_4
    );
SCLK_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF7F7FFEFE7F7E"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(4),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => \SD_COUNTER_reg__0\(2),
      O => n_0_SCLK_i_5
    );
SCLK_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(4),
      O => n_0_SCLK_i_6
    );
SCLK_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66066666"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(1),
      I1 => \SD_COUNTER_reg__0\(5),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => \SD_COUNTER_reg__0\(2),
      I4 => \SD_COUNTER_reg__0\(0),
      O => n_0_SCLK_i_7
    );
SCLK_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(3),
      I1 => \SD_COUNTER_reg__0\(4),
      O => n_0_SCLK_i_8
    );
SCLK_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => I1,
      I1 => I2,
      O => n_0_SCLK_i_9
    );
SCLK_reg: unisim.vcomponents.FDPE
    port map (
      C => iCLK,
      CE => '1',
      D => n_0_SCLK_i_1,
      PRE => rst,
      Q => n_0_SCLK_reg
    );
\SD_COUNTER[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => mI2C_END,
      I1 => I1,
      I2 => \SD_COUNTER_reg__0\(0),
      O => p_0_in(0)
    );
\SD_COUNTER[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
    port map (
      I0 => mI2C_END,
      I1 => I1,
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => \SD_COUNTER_reg__0\(0),
      O => p_0_in(1)
    );
\SD_COUNTER[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444000"
    )
    port map (
      I0 => mI2C_END,
      I1 => I1,
      I2 => \SD_COUNTER_reg__0\(0),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => \SD_COUNTER_reg__0\(2),
      O => p_0_in(2)
    );
\SD_COUNTER[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444440000000"
    )
    port map (
      I0 => mI2C_END,
      I1 => I1,
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => \SD_COUNTER_reg__0\(3),
      O => p_0_in(3)
    );
\SD_COUNTER[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
    port map (
      I0 => \n_0_SD_COUNTER[5]_i_5\,
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => \SD_COUNTER_reg__0\(4),
      O => p_0_in(4)
    );
\SD_COUNTER[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \n_0_SD_COUNTER[5]_i_3\,
      I1 => mI2C_END,
      I2 => I1,
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => \n_0_SD_COUNTER[5]_i_4\,
      O => \n_0_SD_COUNTER[5]_i_1\
    );
\SD_COUNTER[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
    port map (
      I0 => \n_0_SD_COUNTER[5]_i_5\,
      I1 => \n_0_SD_COUNTER[5]_i_6\,
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => \SD_COUNTER_reg__0\(5),
      O => p_0_in(5)
    );
\SD_COUNTER[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2c_en_r1,
      I1 => i2c_en_r0,
      O => \n_0_SD_COUNTER[5]_i_3\
    );
\SD_COUNTER[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(3),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => \SD_COUNTER_reg__0\(0),
      O => \n_0_SD_COUNTER[5]_i_4\
    );
\SD_COUNTER[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I1,
      I1 => mI2C_END,
      O => \n_0_SD_COUNTER[5]_i_5\
    );
\SD_COUNTER[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(1),
      O => \n_0_SD_COUNTER[5]_i_6\
    );
\SD_COUNTER_reg[0]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_SD_COUNTER[5]_i_1\,
      CLR => rst,
      D => p_0_in(0),
      Q => \SD_COUNTER_reg__0\(0)
    );
\SD_COUNTER_reg[1]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_SD_COUNTER[5]_i_1\,
      CLR => rst,
      D => p_0_in(1),
      Q => \SD_COUNTER_reg__0\(1)
    );
\SD_COUNTER_reg[2]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_SD_COUNTER[5]_i_1\,
      CLR => rst,
      D => p_0_in(2),
      Q => \SD_COUNTER_reg__0\(2)
    );
\SD_COUNTER_reg[3]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_SD_COUNTER[5]_i_1\,
      CLR => rst,
      D => p_0_in(3),
      Q => \SD_COUNTER_reg__0\(3)
    );
\SD_COUNTER_reg[4]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_SD_COUNTER[5]_i_1\,
      CLR => rst,
      D => p_0_in(4),
      Q => \SD_COUNTER_reg__0\(4)
    );
\SD_COUNTER_reg[5]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_SD_COUNTER[5]_i_1\,
      CLR => rst,
      D => p_0_in(5),
      Q => \SD_COUNTER_reg__0\(5)
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE01DFF76FFDFF7"
    )
    port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(4),
      I5 => \SD_COUNTER_reg__0\(5),
      O => n_0_g0_b0
    );
mI2C_WR_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444400404444"
    )
    port map (
      I0 => i2c_en_r0,
      I1 => i2c_en_r1,
      I2 => mI2C_END,
      I3 => Q(1),
      I4 => Q(0),
      I5 => I3,
      O => E(0)
    );
\mSetup_ST[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => I3,
      I3 => mI2C_END,
      O => D(0)
    );
\mSetup_ST[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202020202A2"
    )
    port map (
      I0 => I4,
      I1 => \n_0_mSetup_ST[1]_i_3\,
      I2 => I2,
      I3 => n_0_ACKW1_reg,
      I4 => n_0_ACKW2_reg,
      I5 => n_0_ACKW3_reg,
      O => D(1)
    );
\mSetup_ST[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => n_0_ACKR3_reg,
      I1 => n_0_ACKR2_reg,
      I2 => n_0_ACKR1_reg,
      O => \n_0_mSetup_ST[1]_i_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IICctrl_0_IICctrl is
  port (
    LUT_INDEX : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I2C_SCLK : out STD_LOGIC;
    I2C_SDAT : inout STD_LOGIC;
    iCLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    LUT_DATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Slave_Addr : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IICctrl_0_IICctrl : entity is "IICctrl";
end IICctrl_0_IICctrl;

architecture STRUCTURE of IICctrl_0_IICctrl is
  signal \^lut_index\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2c_en_r0 : STD_LOGIC;
  signal i2c_en_r1 : STD_LOGIC;
  signal mI2C_CLK_DIV_reg : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal mI2C_CTRL_CLK : STD_LOGIC;
  signal mI2C_GO0_out : STD_LOGIC;
  signal mI2C_GO2_out : STD_LOGIC;
  signal mI2C_WR4_out : STD_LOGIC;
  signal \n_0_LUT_INDEX[7]_i_1\ : STD_LOGIC;
  signal \n_0_LUT_INDEX[7]_i_3\ : STD_LOGIC;
  signal \n_0_LUT_INDEX[7]_i_4\ : STD_LOGIC;
  signal \n_0_LUT_INDEX[7]_i_5\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[0]_i_2\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[0]_i_3\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[0]_i_4\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[0]_i_5\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[0]_i_6\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[4]_i_2\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[4]_i_3\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[4]_i_4\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[4]_i_5\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[8]_i_2\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[8]_i_3\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV[8]_i_4\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV_reg[0]\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_mI2C_CLK_DIV_reg[8]_i_1\ : STD_LOGIC;
  signal n_0_mI2C_CTRL_CLK_i_1 : STD_LOGIC;
  signal n_0_mI2C_CTRL_CLK_i_2 : STD_LOGIC;
  signal n_0_mI2C_CTRL_CLK_i_3 : STD_LOGIC;
  signal n_0_mI2C_GO_reg : STD_LOGIC;
  signal n_0_mI2C_WR_i_3 : STD_LOGIC;
  signal n_0_mI2C_WR_reg : STD_LOGIC;
  signal \n_0_mSetup_ST[1]_i_2\ : STD_LOGIC;
  signal \n_0_mSetup_ST_reg[0]\ : STD_LOGIC;
  signal \n_0_mSetup_ST_reg[1]\ : STD_LOGIC;
  signal \n_1_mI2C_CLK_DIV_reg[0]_i_1\ : STD_LOGIC;
  signal \n_1_mI2C_CLK_DIV_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_mI2C_CLK_DIV_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_mI2C_CLK_DIV_reg[0]_i_1\ : STD_LOGIC;
  signal \n_2_mI2C_CLK_DIV_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_mI2C_CLK_DIV_reg[8]_i_1\ : STD_LOGIC;
  signal n_2_u_I2C_Controller : STD_LOGIC;
  signal \n_3_mI2C_CLK_DIV_reg[0]_i_1\ : STD_LOGIC;
  signal \n_3_mI2C_CLK_DIV_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_mI2C_CLK_DIV_reg[8]_i_1\ : STD_LOGIC;
  signal n_3_u_I2C_Controller : STD_LOGIC;
  signal \n_4_mI2C_CLK_DIV_reg[0]_i_1\ : STD_LOGIC;
  signal \n_4_mI2C_CLK_DIV_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_mI2C_CLK_DIV_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_mI2C_CLK_DIV_reg[0]_i_1\ : STD_LOGIC;
  signal \n_5_mI2C_CLK_DIV_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_mI2C_CLK_DIV_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_mI2C_CLK_DIV_reg[0]_i_1\ : STD_LOGIC;
  signal \n_6_mI2C_CLK_DIV_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_mI2C_CLK_DIV_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_mI2C_CLK_DIV_reg[0]_i_1\ : STD_LOGIC;
  signal \n_7_mI2C_CLK_DIV_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_mI2C_CLK_DIV_reg[8]_i_1\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \xlnx_opt_\ : STD_LOGIC;
  signal NLW_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LUT_INDEX[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \LUT_INDEX[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \LUT_INDEX[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \LUT_INDEX[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \LUT_INDEX[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \LUT_INDEX[7]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \LUT_INDEX[7]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of mI2C_GO_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of mI2C_WR_i_3 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mSetup_ST[1]_i_2\ : label is "soft_lutpair15";
begin
  LUT_INDEX(7 downto 0) <= \^lut_index\(7 downto 0);
CARRY4: unisim.vcomponents.CARRY4
    port map (
      CI => \xlnx_opt_\,
      CO(3 downto 1) => NLW_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => \n_0_mI2C_CLK_DIV_reg[8]_i_1\,
      CYINIT => '0',
      DI(3 downto 1) => NLW_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => NLW_CARRY4_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => NLW_CARRY4_S_UNCONNECTED(3 downto 1),
      S(0) => '1'
    );
\LUT_INDEX[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^lut_index\(0),
      O => \p_0_in__0\(0)
    );
\LUT_INDEX[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \^lut_index\(0),
      I1 => \^lut_index\(1),
      O => \p_0_in__0\(1)
    );
\LUT_INDEX[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \^lut_index\(2),
      I1 => \^lut_index\(1),
      I2 => \^lut_index\(0),
      O => \p_0_in__0\(2)
    );
\LUT_INDEX[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \^lut_index\(3),
      I1 => \^lut_index\(0),
      I2 => \^lut_index\(1),
      I3 => \^lut_index\(2),
      O => \p_0_in__0\(3)
    );
\LUT_INDEX[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \^lut_index\(4),
      I1 => \^lut_index\(2),
      I2 => \^lut_index\(1),
      I3 => \^lut_index\(0),
      I4 => \^lut_index\(3),
      O => \p_0_in__0\(4)
    );
\LUT_INDEX[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \^lut_index\(5),
      I1 => \^lut_index\(3),
      I2 => \^lut_index\(0),
      I3 => \^lut_index\(1),
      I4 => \^lut_index\(2),
      I5 => \^lut_index\(4),
      O => \p_0_in__0\(5)
    );
\LUT_INDEX[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \^lut_index\(6),
      I1 => \n_0_LUT_INDEX[7]_i_4\,
      O => \p_0_in__0\(6)
    );
\LUT_INDEX[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => \n_0_mSetup_ST_reg[1]\,
      I1 => \n_0_mSetup_ST_reg[0]\,
      I2 => i2c_en_r1,
      I3 => i2c_en_r0,
      I4 => \n_0_LUT_INDEX[7]_i_3\,
      O => \n_0_LUT_INDEX[7]_i_1\
    );
\LUT_INDEX[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \^lut_index\(7),
      I1 => \n_0_LUT_INDEX[7]_i_4\,
      I2 => \^lut_index\(6),
      O => \p_0_in__0\(7)
    );
\LUT_INDEX[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00AE000000"
    )
    port map (
      I0 => \^lut_index\(4),
      I1 => \^lut_index\(3),
      I2 => \n_0_LUT_INDEX[7]_i_5\,
      I3 => \^lut_index\(7),
      I4 => \^lut_index\(5),
      I5 => \^lut_index\(6),
      O => \n_0_LUT_INDEX[7]_i_3\
    );
\LUT_INDEX[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \^lut_index\(5),
      I1 => \^lut_index\(3),
      I2 => \^lut_index\(0),
      I3 => \^lut_index\(1),
      I4 => \^lut_index\(2),
      I5 => \^lut_index\(4),
      O => \n_0_LUT_INDEX[7]_i_4\
    );
\LUT_INDEX[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^lut_index\(1),
      I1 => \^lut_index\(2),
      O => \n_0_LUT_INDEX[7]_i_5\
    );
\LUT_INDEX_reg[0]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_LUT_INDEX[7]_i_1\,
      CLR => rst,
      D => \p_0_in__0\(0),
      Q => \^lut_index\(0)
    );
\LUT_INDEX_reg[1]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_LUT_INDEX[7]_i_1\,
      CLR => rst,
      D => \p_0_in__0\(1),
      Q => \^lut_index\(1)
    );
\LUT_INDEX_reg[2]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_LUT_INDEX[7]_i_1\,
      CLR => rst,
      D => \p_0_in__0\(2),
      Q => \^lut_index\(2)
    );
\LUT_INDEX_reg[3]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_LUT_INDEX[7]_i_1\,
      CLR => rst,
      D => \p_0_in__0\(3),
      Q => \^lut_index\(3)
    );
\LUT_INDEX_reg[4]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_LUT_INDEX[7]_i_1\,
      CLR => rst,
      D => \p_0_in__0\(4),
      Q => \^lut_index\(4)
    );
\LUT_INDEX_reg[5]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_LUT_INDEX[7]_i_1\,
      CLR => rst,
      D => \p_0_in__0\(5),
      Q => \^lut_index\(5)
    );
\LUT_INDEX_reg[6]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_LUT_INDEX[7]_i_1\,
      CLR => rst,
      D => \p_0_in__0\(6),
      Q => \^lut_index\(6)
    );
\LUT_INDEX_reg[7]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => \n_0_LUT_INDEX[7]_i_1\,
      CLR => rst,
      D => \p_0_in__0\(7),
      Q => \^lut_index\(7)
    );
i2c_en_r0_reg: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => mI2C_CTRL_CLK,
      Q => i2c_en_r0
    );
i2c_en_r1_reg: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => i2c_en_r0,
      Q => i2c_en_r1
    );
\mI2C_CLK_DIV[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => \n_0_mI2C_CLK_DIV_reg[0]\,
      O => \n_0_mI2C_CLK_DIV[0]_i_2\
    );
\mI2C_CLK_DIV[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => mI2C_CLK_DIV_reg(3),
      O => \n_0_mI2C_CLK_DIV[0]_i_3\
    );
\mI2C_CLK_DIV[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => mI2C_CLK_DIV_reg(2),
      O => \n_0_mI2C_CLK_DIV[0]_i_4\
    );
\mI2C_CLK_DIV[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => mI2C_CLK_DIV_reg(1),
      O => \n_0_mI2C_CLK_DIV[0]_i_5\
    );
\mI2C_CLK_DIV[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001011"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => \n_0_mI2C_CLK_DIV_reg[0]\,
      O => \n_0_mI2C_CLK_DIV[0]_i_6\
    );
\mI2C_CLK_DIV[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => mI2C_CLK_DIV_reg(7),
      O => \n_0_mI2C_CLK_DIV[4]_i_2\
    );
\mI2C_CLK_DIV[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => mI2C_CLK_DIV_reg(6),
      O => \n_0_mI2C_CLK_DIV[4]_i_3\
    );
\mI2C_CLK_DIV[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => mI2C_CLK_DIV_reg(5),
      O => \n_0_mI2C_CLK_DIV[4]_i_4\
    );
\mI2C_CLK_DIV[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => mI2C_CLK_DIV_reg(4),
      O => \n_0_mI2C_CLK_DIV[4]_i_5\
    );
\mI2C_CLK_DIV[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      O => \n_0_mI2C_CLK_DIV[8]_i_2\
    );
\mI2C_CLK_DIV[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => mI2C_CLK_DIV_reg(9),
      O => \n_0_mI2C_CLK_DIV[8]_i_3\
    );
\mI2C_CLK_DIV[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => mI2C_CLK_DIV_reg(8),
      O => \n_0_mI2C_CLK_DIV[8]_i_4\
    );
\mI2C_CLK_DIV_reg[0]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_7_mI2C_CLK_DIV_reg[0]_i_1\,
      Q => \n_0_mI2C_CLK_DIV_reg[0]\
    );
\mI2C_CLK_DIV_reg[0]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_mI2C_CLK_DIV_reg[0]_i_1\,
      CO(2) => \n_1_mI2C_CLK_DIV_reg[0]_i_1\,
      CO(1) => \n_2_mI2C_CLK_DIV_reg[0]_i_1\,
      CO(0) => \n_3_mI2C_CLK_DIV_reg[0]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => \n_0_mI2C_CLK_DIV[0]_i_2\,
      O(3) => \n_4_mI2C_CLK_DIV_reg[0]_i_1\,
      O(2) => \n_5_mI2C_CLK_DIV_reg[0]_i_1\,
      O(1) => \n_6_mI2C_CLK_DIV_reg[0]_i_1\,
      O(0) => \n_7_mI2C_CLK_DIV_reg[0]_i_1\,
      S(3) => \n_0_mI2C_CLK_DIV[0]_i_3\,
      S(2) => \n_0_mI2C_CLK_DIV[0]_i_4\,
      S(1) => \n_0_mI2C_CLK_DIV[0]_i_5\,
      S(0) => \n_0_mI2C_CLK_DIV[0]_i_6\
    );
\mI2C_CLK_DIV_reg[10]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_5_mI2C_CLK_DIV_reg[8]_i_1\,
      Q => mI2C_CLK_DIV_reg(10)
    );
\mI2C_CLK_DIV_reg[11]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_4_mI2C_CLK_DIV_reg[8]_i_1\,
      Q => mI2C_CLK_DIV_reg(11)
    );
\mI2C_CLK_DIV_reg[12]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_0_mI2C_CLK_DIV_reg[8]_i_1\,
      Q => mI2C_CLK_DIV_reg(12)
    );
\mI2C_CLK_DIV_reg[1]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_6_mI2C_CLK_DIV_reg[0]_i_1\,
      Q => mI2C_CLK_DIV_reg(1)
    );
\mI2C_CLK_DIV_reg[2]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_5_mI2C_CLK_DIV_reg[0]_i_1\,
      Q => mI2C_CLK_DIV_reg(2)
    );
\mI2C_CLK_DIV_reg[3]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_4_mI2C_CLK_DIV_reg[0]_i_1\,
      Q => mI2C_CLK_DIV_reg(3)
    );
\mI2C_CLK_DIV_reg[4]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_7_mI2C_CLK_DIV_reg[4]_i_1\,
      Q => mI2C_CLK_DIV_reg(4)
    );
\mI2C_CLK_DIV_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_mI2C_CLK_DIV_reg[0]_i_1\,
      CO(3) => \n_0_mI2C_CLK_DIV_reg[4]_i_1\,
      CO(2) => \n_1_mI2C_CLK_DIV_reg[4]_i_1\,
      CO(1) => \n_2_mI2C_CLK_DIV_reg[4]_i_1\,
      CO(0) => \n_3_mI2C_CLK_DIV_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_mI2C_CLK_DIV_reg[4]_i_1\,
      O(2) => \n_5_mI2C_CLK_DIV_reg[4]_i_1\,
      O(1) => \n_6_mI2C_CLK_DIV_reg[4]_i_1\,
      O(0) => \n_7_mI2C_CLK_DIV_reg[4]_i_1\,
      S(3) => \n_0_mI2C_CLK_DIV[4]_i_2\,
      S(2) => \n_0_mI2C_CLK_DIV[4]_i_3\,
      S(1) => \n_0_mI2C_CLK_DIV[4]_i_4\,
      S(0) => \n_0_mI2C_CLK_DIV[4]_i_5\
    );
\mI2C_CLK_DIV_reg[5]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_6_mI2C_CLK_DIV_reg[4]_i_1\,
      Q => mI2C_CLK_DIV_reg(5)
    );
\mI2C_CLK_DIV_reg[6]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_5_mI2C_CLK_DIV_reg[4]_i_1\,
      Q => mI2C_CLK_DIV_reg(6)
    );
\mI2C_CLK_DIV_reg[7]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_4_mI2C_CLK_DIV_reg[4]_i_1\,
      Q => mI2C_CLK_DIV_reg(7)
    );
\mI2C_CLK_DIV_reg[8]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_7_mI2C_CLK_DIV_reg[8]_i_1\,
      Q => mI2C_CLK_DIV_reg(8)
    );
\mI2C_CLK_DIV_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_mI2C_CLK_DIV_reg[4]_i_1\,
      CO(3) => \xlnx_opt_\,
      CO(2) => \n_1_mI2C_CLK_DIV_reg[8]_i_1\,
      CO(1) => \n_2_mI2C_CLK_DIV_reg[8]_i_1\,
      CO(0) => \n_3_mI2C_CLK_DIV_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_mI2C_CLK_DIV_reg[8]_i_1\,
      O(2) => \n_5_mI2C_CLK_DIV_reg[8]_i_1\,
      O(1) => \n_6_mI2C_CLK_DIV_reg[8]_i_1\,
      O(0) => \n_7_mI2C_CLK_DIV_reg[8]_i_1\,
      S(3) => '0',
      S(2) => \n_0_mI2C_CLK_DIV[8]_i_2\,
      S(1) => \n_0_mI2C_CLK_DIV[8]_i_3\,
      S(0) => \n_0_mI2C_CLK_DIV[8]_i_4\
    );
\mI2C_CLK_DIV_reg[9]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \n_6_mI2C_CLK_DIV_reg[8]_i_1\,
      Q => mI2C_CLK_DIV_reg(9)
    );
mI2C_CTRL_CLK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1011EFEE"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(12),
      I1 => mI2C_CLK_DIV_reg(11),
      I2 => n_0_mI2C_CTRL_CLK_i_2,
      I3 => mI2C_CLK_DIV_reg(10),
      I4 => mI2C_CTRL_CLK,
      O => n_0_mI2C_CTRL_CLK_i_1
    );
mI2C_CTRL_CLK_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF7F"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(7),
      I1 => mI2C_CLK_DIV_reg(5),
      I2 => mI2C_CLK_DIV_reg(6),
      I3 => n_0_mI2C_CTRL_CLK_i_3,
      I4 => mI2C_CLK_DIV_reg(8),
      I5 => mI2C_CLK_DIV_reg(9),
      O => n_0_mI2C_CTRL_CLK_i_2
    );
mI2C_CTRL_CLK_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => mI2C_CLK_DIV_reg(1),
      I1 => mI2C_CLK_DIV_reg(2),
      I2 => mI2C_CLK_DIV_reg(3),
      I3 => mI2C_CLK_DIV_reg(4),
      O => n_0_mI2C_CTRL_CLK_i_3
    );
mI2C_CTRL_CLK_reg: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => n_0_mI2C_CTRL_CLK_i_1,
      Q => mI2C_CTRL_CLK
    );
mI2C_GO_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_LUT_INDEX[7]_i_3\,
      I1 => \n_0_mSetup_ST_reg[0]\,
      I2 => \n_0_mSetup_ST_reg[1]\,
      O => mI2C_GO0_out
    );
mI2C_GO_reg: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => mI2C_GO2_out,
      CLR => rst,
      D => mI2C_GO0_out,
      Q => n_0_mI2C_GO_reg
    );
mI2C_WR_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
    port map (
      I0 => mI2C_GO0_out,
      I1 => n_0_mI2C_WR_i_3,
      I2 => \^lut_index\(4),
      I3 => \^lut_index\(7),
      I4 => \^lut_index\(3),
      O => mI2C_WR4_out
    );
mI2C_WR_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \^lut_index\(2),
      I1 => \^lut_index\(1),
      I2 => \^lut_index\(6),
      I3 => \^lut_index\(5),
      O => n_0_mI2C_WR_i_3
    );
mI2C_WR_reg: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => mI2C_GO2_out,
      CLR => rst,
      D => mI2C_WR4_out,
      Q => n_0_mI2C_WR_reg
    );
\mSetup_ST[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_mSetup_ST_reg[0]\,
      I1 => \n_0_LUT_INDEX[7]_i_3\,
      O => \n_0_mSetup_ST[1]_i_2\
    );
\mSetup_ST_reg[0]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => mI2C_GO2_out,
      CLR => rst,
      D => n_3_u_I2C_Controller,
      Q => \n_0_mSetup_ST_reg[0]\
    );
\mSetup_ST_reg[1]\: unisim.vcomponents.FDCE
    port map (
      C => iCLK,
      CE => mI2C_GO2_out,
      CLR => rst,
      D => n_2_u_I2C_Controller,
      Q => \n_0_mSetup_ST_reg[1]\
    );
u_I2C_Controller: entity work.IICctrl_0_I2C_Controller
    port map (
      D(1) => n_2_u_I2C_Controller,
      D(0) => n_3_u_I2C_Controller,
      E(0) => mI2C_GO2_out,
      I1 => n_0_mI2C_GO_reg,
      I2 => n_0_mI2C_WR_reg,
      I2C_SCLK => I2C_SCLK,
      I2C_SDAT => I2C_SDAT,
      I3 => \n_0_LUT_INDEX[7]_i_3\,
      I4 => \n_0_mSetup_ST[1]_i_2\,
      LUT_DATA(15 downto 0) => LUT_DATA(15 downto 0),
      Q(1) => \n_0_mSetup_ST_reg[1]\,
      Q(0) => \n_0_mSetup_ST_reg[0]\,
      Slave_Addr(7 downto 0) => Slave_Addr(7 downto 0),
      i2c_en_r0 => i2c_en_r0,
      i2c_en_r1 => i2c_en_r1,
      iCLK => iCLK,
      mI2C_CTRL_CLK => mI2C_CTRL_CLK,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IICctrl_0 is
  port (
    iCLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    I2C_SCLK : out STD_LOGIC;
    I2C_SDAT : inout STD_LOGIC;
    LUT_INDEX : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LUT_DATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Slave_Addr : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of IICctrl_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of IICctrl_0 : entity is "IICctrl,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of IICctrl_0 : entity is "IICctrl_0,IICctrl,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of IICctrl_0 : entity is "IICctrl_0,IICctrl,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=IICctrl,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,LUT_SIZE=170,CLK_Freq=25000000,I2C_Freq=10000}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of IICctrl_0 : entity is "yes";
end IICctrl_0;

architecture STRUCTURE of IICctrl_0 is
begin
inst: entity work.IICctrl_0_IICctrl
    port map (
      I2C_SCLK => I2C_SCLK,
      I2C_SDAT => I2C_SDAT,
      LUT_DATA(15 downto 0) => LUT_DATA(15 downto 0),
      LUT_INDEX(7 downto 0) => LUT_INDEX(7 downto 0),
      Slave_Addr(7 downto 0) => Slave_Addr(7 downto 0),
      iCLK => iCLK,
      rst => rst
    );
end STRUCTURE;
