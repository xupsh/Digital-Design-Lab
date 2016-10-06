// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Sep 20 11:58:15 2016
// Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/zhehengt/Desktop/Digital_Design_Lab/Chapter_12/Digital_camera/digital_camera.srcs/sources_1/ip/IICctrl_0/IICctrl_0_funcsim.v
// Design      : IICctrl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "IICctrl,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "IICctrl_0,IICctrl,{}" *) (* CORE_GENERATION_INFO = "IICctrl_0,IICctrl,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=IICctrl,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,LUT_SIZE=170,CLK_Freq=25000000,I2C_Freq=10000}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module IICctrl_0
   (iCLK,
    rst,
    I2C_SCLK,
    I2C_SDAT,
    LUT_INDEX,
    LUT_DATA,
    Slave_Addr);
  input iCLK;
  input rst;
  output I2C_SCLK;
  inout I2C_SDAT;
  output [7:0]LUT_INDEX;
  input [15:0]LUT_DATA;
  input [7:0]Slave_Addr;

  wire I2C_SCLK;
  wire I2C_SDAT;
  wire [15:0]LUT_DATA;
  wire [7:0]LUT_INDEX;
  wire [7:0]Slave_Addr;
  wire iCLK;
  wire rst;

IICctrl_0_IICctrl inst
       (.I2C_SCLK(I2C_SCLK),
        .I2C_SDAT(I2C_SDAT),
        .LUT_DATA(LUT_DATA),
        .LUT_INDEX(LUT_INDEX),
        .Slave_Addr(Slave_Addr),
        .iCLK(iCLK),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "I2C_Controller" *) 
module IICctrl_0_I2C_Controller
   (I2C_SCLK,
    E,
    D,
    I2C_SDAT,
    iCLK,
    rst,
    I1,
    I2,
    mI2C_CTRL_CLK,
    i2c_en_r0,
    i2c_en_r1,
    Q,
    I3,
    I4,
    LUT_DATA,
    Slave_Addr);
  output I2C_SCLK;
  output [0:0]E;
  output [1:0]D;
  inout I2C_SDAT;
  input iCLK;
  input rst;
  input I1;
  input I2;
  input mI2C_CTRL_CLK;
  input i2c_en_r0;
  input i2c_en_r1;
  input [1:0]Q;
  input I3;
  input I4;
  input [15:0]LUT_DATA;
  input [7:0]Slave_Addr;

  wire ACKR13_out;
  wire ACKW10_out;
  wire [1:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire I2C_BIT6_out;
  wire I2C_SCLK;
  wire I2C_SDAT;
  wire I3;
  wire I4;
  wire [15:0]LUT_DATA;
  wire [1:0]Q;
  wire SDO;
  wire [5:0]SD_COUNTER_reg__0;
  wire [7:0]Slave_Addr;
  wire i2c_en_r0;
  wire i2c_en_r1;
  wire iCLK;
  wire mI2C_CTRL_CLK;
  wire mI2C_END;
  wire n_0_ACKR1_i_1;
  wire n_0_ACKR1_i_3;
  wire n_0_ACKR1_reg;
  wire n_0_ACKR2_i_1;
  wire n_0_ACKR2_i_2;
  wire n_0_ACKR2_i_3;
  wire n_0_ACKR2_i_4;
  wire n_0_ACKR2_reg;
  wire n_0_ACKR3_i_1;
  wire n_0_ACKR3_i_2;
  wire n_0_ACKR3_i_3;
  wire n_0_ACKR3_reg;
  wire n_0_ACKW1_i_1;
  wire n_0_ACKW1_reg;
  wire n_0_ACKW2_i_1;
  wire n_0_ACKW2_i_2;
  wire n_0_ACKW2_reg;
  wire n_0_ACKW3_i_1;
  wire n_0_ACKW3_i_2;
  wire n_0_ACKW3_i_3;
  wire n_0_ACKW3_reg;
  wire n_0_END_i_1;
  wire n_0_END_i_2;
  wire n_0_END_i_3;
  wire n_0_END_i_4;
  wire n_0_I2C_BIT_i_1;
  wire n_0_I2C_BIT_i_10;
  wire n_0_I2C_BIT_i_11;
  wire n_0_I2C_BIT_i_12;
  wire n_0_I2C_BIT_i_13;
  wire n_0_I2C_BIT_i_14;
  wire n_0_I2C_BIT_i_15;
  wire n_0_I2C_BIT_i_16;
  wire n_0_I2C_BIT_i_17;
  wire n_0_I2C_BIT_i_18;
  wire n_0_I2C_BIT_i_19;
  wire n_0_I2C_BIT_i_2;
  wire n_0_I2C_BIT_i_20;
  wire n_0_I2C_BIT_i_21;
  wire n_0_I2C_BIT_i_3;
  wire n_0_I2C_BIT_i_4;
  wire n_0_I2C_BIT_i_6;
  wire n_0_I2C_BIT_i_7;
  wire n_0_I2C_BIT_i_8;
  wire n_0_I2C_BIT_i_9;
  wire n_0_I2C_BIT_reg;
  wire n_0_I2C_SCLK_INST_0_i_1;
  wire n_0_I2C_SCLK_INST_0_i_2;
  wire n_0_I2C_SDAT_INST_0_i_2;
  wire n_0_I2C_SDAT_INST_0_i_3;
  wire n_0_I2C_SDAT_INST_0_i_4;
  wire n_0_SCLK_i_1;
  wire n_0_SCLK_i_10;
  wire n_0_SCLK_i_2;
  wire n_0_SCLK_i_3;
  wire n_0_SCLK_i_4;
  wire n_0_SCLK_i_5;
  wire n_0_SCLK_i_6;
  wire n_0_SCLK_i_7;
  wire n_0_SCLK_i_8;
  wire n_0_SCLK_i_9;
  wire n_0_SCLK_reg;
  wire \n_0_SD_COUNTER[5]_i_1 ;
  wire \n_0_SD_COUNTER[5]_i_3 ;
  wire \n_0_SD_COUNTER[5]_i_4 ;
  wire \n_0_SD_COUNTER[5]_i_5 ;
  wire \n_0_SD_COUNTER[5]_i_6 ;
  wire n_0_g0_b0;
  wire \n_0_mSetup_ST[1]_i_3 ;
  wire [5:0]p_0_in;
  wire rst;

LUT6 #(
    .INIT(64'hFFBFFFFFFFBF0000)) 
     ACKR1_i_1
       (.I0(I2C_SDAT),
        .I1(SD_COUNTER_reg__0[2]),
        .I2(I1),
        .I3(I2),
        .I4(ACKR13_out),
        .I5(n_0_ACKR1_reg),
        .O(n_0_ACKR1_i_1));
LUT6 #(
    .INIT(64'h202A0000AAAAAAAA)) 
     ACKR1_i_2
       (.I0(\n_0_SD_COUNTER[5]_i_3 ),
        .I1(I2),
        .I2(SD_COUNTER_reg__0[0]),
        .I3(SD_COUNTER_reg__0[3]),
        .I4(n_0_ACKR1_i_3),
        .I5(I1),
        .O(ACKR13_out));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00000009)) 
     ACKR1_i_3
       (.I0(SD_COUNTER_reg__0[3]),
        .I1(SD_COUNTER_reg__0[2]),
        .I2(SD_COUNTER_reg__0[5]),
        .I3(SD_COUNTER_reg__0[4]),
        .I4(SD_COUNTER_reg__0[1]),
        .O(n_0_ACKR1_i_3));
FDPE ACKR1_reg
       (.C(iCLK),
        .CE(1'b1),
        .D(n_0_ACKR1_i_1),
        .PRE(rst),
        .Q(n_0_ACKR1_reg));
LUT6 #(
    .INIT(64'hFFFFFDFF0000FD00)) 
     ACKR2_i_1
       (.I0(I1),
        .I1(I2),
        .I2(n_0_ACKR2_i_2),
        .I3(\n_0_SD_COUNTER[5]_i_3 ),
        .I4(n_0_ACKR2_i_3),
        .I5(n_0_ACKR2_reg),
        .O(n_0_ACKR2_i_1));
LUT2 #(
    .INIT(4'hB)) 
     ACKR2_i_2
       (.I0(I2C_SDAT),
        .I1(SD_COUNTER_reg__0[3]),
        .O(n_0_ACKR2_i_2));
LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAA80)) 
     ACKR2_i_3
       (.I0(I1),
        .I1(I2),
        .I2(SD_COUNTER_reg__0[0]),
        .I3(SD_COUNTER_reg__0[4]),
        .I4(SD_COUNTER_reg__0[3]),
        .I5(n_0_ACKR2_i_4),
        .O(n_0_ACKR2_i_3));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     ACKR2_i_4
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(SD_COUNTER_reg__0[2]),
        .I2(SD_COUNTER_reg__0[1]),
        .O(n_0_ACKR2_i_4));
FDPE ACKR2_reg
       (.C(iCLK),
        .CE(1'b1),
        .D(n_0_ACKR2_i_1),
        .PRE(rst),
        .Q(n_0_ACKR2_reg));
LUT6 #(
    .INIT(64'hEFFFFFFFE000F0F0)) 
     ACKR3_i_1
       (.I0(I2),
        .I1(n_0_ACKR2_i_2),
        .I2(\n_0_SD_COUNTER[5]_i_3 ),
        .I3(n_0_ACKR3_i_2),
        .I4(I1),
        .I5(n_0_ACKR3_reg),
        .O(n_0_ACKR3_i_1));
LUT6 #(
    .INIT(64'h0004000000000007)) 
     ACKR3_i_2
       (.I0(I2),
        .I1(SD_COUNTER_reg__0[0]),
        .I2(SD_COUNTER_reg__0[4]),
        .I3(n_0_ACKR3_i_3),
        .I4(SD_COUNTER_reg__0[5]),
        .I5(SD_COUNTER_reg__0[3]),
        .O(n_0_ACKR3_i_2));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT2 #(
    .INIT(4'hE)) 
     ACKR3_i_3
       (.I0(SD_COUNTER_reg__0[1]),
        .I1(SD_COUNTER_reg__0[2]),
        .O(n_0_ACKR3_i_3));
FDPE ACKR3_reg
       (.C(iCLK),
        .CE(1'b1),
        .D(n_0_ACKR3_i_1),
        .PRE(rst),
        .Q(n_0_ACKR3_reg));
LUT6 #(
    .INIT(64'hBFFFFFFFBFFF0000)) 
     ACKW1_i_1
       (.I0(I2C_SDAT),
        .I1(SD_COUNTER_reg__0[2]),
        .I2(I2),
        .I3(I1),
        .I4(ACKW10_out),
        .I5(n_0_ACKW1_reg),
        .O(n_0_ACKW1_i_1));
LUT6 #(
    .INIT(64'h80008808AAAAAAAA)) 
     ACKW1_i_2
       (.I0(\n_0_SD_COUNTER[5]_i_3 ),
        .I1(n_0_ACKR1_i_3),
        .I2(SD_COUNTER_reg__0[0]),
        .I3(I2),
        .I4(SD_COUNTER_reg__0[2]),
        .I5(I1),
        .O(ACKW10_out));
FDPE ACKW1_reg
       (.C(iCLK),
        .CE(1'b1),
        .D(n_0_ACKW1_i_1),
        .PRE(rst),
        .Q(n_0_ACKW1_reg));
LUT6 #(
    .INIT(64'hFFFFF7FF0000F700)) 
     ACKW2_i_1
       (.I0(I2),
        .I1(I1),
        .I2(n_0_ACKR2_i_2),
        .I3(\n_0_SD_COUNTER[5]_i_3 ),
        .I4(n_0_ACKW2_i_2),
        .I5(n_0_ACKW2_reg),
        .O(n_0_ACKW2_i_1));
LUT6 #(
    .INIT(64'hAA8AAAAAAAAA8A88)) 
     ACKW2_i_2
       (.I0(I1),
        .I1(n_0_ACKR2_i_4),
        .I2(I2),
        .I3(SD_COUNTER_reg__0[0]),
        .I4(SD_COUNTER_reg__0[4]),
        .I5(SD_COUNTER_reg__0[3]),
        .O(n_0_ACKW2_i_2));
FDPE ACKW2_reg
       (.C(iCLK),
        .CE(1'b1),
        .D(n_0_ACKW2_i_1),
        .PRE(rst),
        .Q(n_0_ACKW2_reg));
LUT6 #(
    .INIT(64'hDFFFFFFFD000F0F0)) 
     ACKW3_i_1
       (.I0(I2),
        .I1(n_0_ACKW3_i_2),
        .I2(\n_0_SD_COUNTER[5]_i_3 ),
        .I3(n_0_ACKW3_i_3),
        .I4(I1),
        .I5(n_0_ACKW3_reg),
        .O(n_0_ACKW3_i_1));
LUT2 #(
    .INIT(4'hB)) 
     ACKW3_i_2
       (.I0(I2C_SDAT),
        .I1(SD_COUNTER_reg__0[1]),
        .O(n_0_ACKW3_i_2));
LUT6 #(
    .INIT(64'h1001000100000001)) 
     ACKW3_i_3
       (.I0(SD_COUNTER_reg__0[2]),
        .I1(n_0_SCLK_i_8),
        .I2(SD_COUNTER_reg__0[5]),
        .I3(SD_COUNTER_reg__0[1]),
        .I4(SD_COUNTER_reg__0[0]),
        .I5(I2),
        .O(n_0_ACKW3_i_3));
FDPE ACKW3_reg
       (.C(iCLK),
        .CE(1'b1),
        .D(n_0_ACKW3_i_1),
        .PRE(rst),
        .Q(n_0_ACKW3_reg));
LUT6 #(
    .INIT(64'h8FFF8F8F80008080)) 
     END_i_1
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(I1),
        .I2(\n_0_SD_COUNTER[5]_i_3 ),
        .I3(n_0_END_i_2),
        .I4(n_0_END_i_3),
        .I5(mI2C_END),
        .O(n_0_END_i_1));
LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
     END_i_2
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(SD_COUNTER_reg__0[2]),
        .I2(SD_COUNTER_reg__0[1]),
        .I3(SD_COUNTER_reg__0[3]),
        .I4(SD_COUNTER_reg__0[4]),
        .I5(I1),
        .O(n_0_END_i_2));
LUT6 #(
    .INIT(64'hFFF7EFFFFFFFFFFF)) 
     END_i_3
       (.I0(SD_COUNTER_reg__0[1]),
        .I1(I2),
        .I2(SD_COUNTER_reg__0[3]),
        .I3(SD_COUNTER_reg__0[4]),
        .I4(SD_COUNTER_reg__0[2]),
        .I5(n_0_END_i_4),
        .O(n_0_END_i_3));
LUT2 #(
    .INIT(4'h8)) 
     END_i_4
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(SD_COUNTER_reg__0[0]),
        .O(n_0_END_i_4));
FDCE END_reg
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(n_0_END_i_1),
        .Q(mI2C_END));
LUT6 #(
    .INIT(64'hFF4FFFFFFF4F0000)) 
     I2C_BIT_i_1
       (.I0(n_0_I2C_BIT_i_2),
        .I1(n_0_I2C_BIT_i_3),
        .I2(I1),
        .I3(n_0_I2C_BIT_i_4),
        .I4(I2C_BIT6_out),
        .I5(n_0_I2C_BIT_reg),
        .O(n_0_I2C_BIT_i_1));
LUT6 #(
    .INIT(64'hAAFEAAAAAAAEAAAA)) 
     I2C_BIT_i_10
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(n_0_I2C_BIT_i_18),
        .I2(SD_COUNTER_reg__0[2]),
        .I3(SD_COUNTER_reg__0[3]),
        .I4(SD_COUNTER_reg__0[4]),
        .I5(n_0_I2C_BIT_i_19),
        .O(n_0_I2C_BIT_i_10));
LUT6 #(
    .INIT(64'hFFFFFFFF00003202)) 
     I2C_BIT_i_11
       (.I0(n_0_I2C_BIT_i_17),
        .I1(SD_COUNTER_reg__0[3]),
        .I2(SD_COUNTER_reg__0[2]),
        .I3(n_0_I2C_BIT_i_20),
        .I4(n_0_I2C_BIT_i_6),
        .I5(n_0_I2C_BIT_i_21),
        .O(n_0_I2C_BIT_i_11));
LUT5 #(
    .INIT(32'h23E320E0)) 
     I2C_BIT_i_12
       (.I0(n_0_I2C_BIT_i_19),
        .I1(SD_COUNTER_reg__0[3]),
        .I2(SD_COUNTER_reg__0[2]),
        .I3(SD_COUNTER_reg__0[1]),
        .I4(n_0_I2C_BIT_i_18),
        .O(n_0_I2C_BIT_i_12));
LUT6 #(
    .INIT(64'hFEFFFFCFFFDFFBFF)) 
     I2C_BIT_i_13
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(SD_COUNTER_reg__0[4]),
        .I2(SD_COUNTER_reg__0[1]),
        .I3(SD_COUNTER_reg__0[3]),
        .I4(SD_COUNTER_reg__0[2]),
        .I5(SD_COUNTER_reg__0[0]),
        .O(n_0_I2C_BIT_i_13));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     I2C_BIT_i_14
       (.I0(LUT_DATA[2]),
        .I1(LUT_DATA[3]),
        .I2(SD_COUNTER_reg__0[1]),
        .I3(LUT_DATA[4]),
        .I4(SD_COUNTER_reg__0[0]),
        .I5(LUT_DATA[5]),
        .O(n_0_I2C_BIT_i_14));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hD0555055)) 
     I2C_BIT_i_15
       (.I0(SD_COUNTER_reg__0[3]),
        .I1(LUT_DATA[15]),
        .I2(SD_COUNTER_reg__0[2]),
        .I3(SD_COUNTER_reg__0[1]),
        .I4(SD_COUNTER_reg__0[0]),
        .O(n_0_I2C_BIT_i_15));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     I2C_BIT_i_16
       (.I0(Slave_Addr[0]),
        .I1(Slave_Addr[1]),
        .I2(SD_COUNTER_reg__0[1]),
        .I3(Slave_Addr[2]),
        .I4(SD_COUNTER_reg__0[0]),
        .I5(Slave_Addr[3]),
        .O(n_0_I2C_BIT_i_16));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     I2C_BIT_i_17
       (.I0(Slave_Addr[4]),
        .I1(Slave_Addr[5]),
        .I2(SD_COUNTER_reg__0[1]),
        .I3(Slave_Addr[6]),
        .I4(SD_COUNTER_reg__0[0]),
        .I5(Slave_Addr[7]),
        .O(n_0_I2C_BIT_i_17));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     I2C_BIT_i_18
       (.I0(LUT_DATA[11]),
        .I1(LUT_DATA[12]),
        .I2(SD_COUNTER_reg__0[1]),
        .I3(LUT_DATA[13]),
        .I4(SD_COUNTER_reg__0[0]),
        .I5(LUT_DATA[14]),
        .O(n_0_I2C_BIT_i_18));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     I2C_BIT_i_19
       (.I0(LUT_DATA[8]),
        .I1(SD_COUNTER_reg__0[1]),
        .I2(LUT_DATA[9]),
        .I3(SD_COUNTER_reg__0[0]),
        .I4(LUT_DATA[10]),
        .O(n_0_I2C_BIT_i_19));
LUT6 #(
    .INIT(64'h00070000FFFFFFFF)) 
     I2C_BIT_i_2
       (.I0(SD_COUNTER_reg__0[2]),
        .I1(SD_COUNTER_reg__0[1]),
        .I2(n_0_I2C_BIT_i_6),
        .I3(SD_COUNTER_reg__0[3]),
        .I4(n_0_I2C_BIT_i_7),
        .I5(I2),
        .O(n_0_I2C_BIT_i_2));
LUT5 #(
    .INIT(32'hFCBBFC88)) 
     I2C_BIT_i_20
       (.I0(Slave_Addr[1]),
        .I1(SD_COUNTER_reg__0[1]),
        .I2(Slave_Addr[2]),
        .I3(SD_COUNTER_reg__0[0]),
        .I4(Slave_Addr[3]),
        .O(n_0_I2C_BIT_i_20));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h8088)) 
     I2C_BIT_i_21
       (.I0(SD_COUNTER_reg__0[4]),
        .I1(SD_COUNTER_reg__0[5]),
        .I2(SD_COUNTER_reg__0[3]),
        .I3(SD_COUNTER_reg__0[1]),
        .O(n_0_I2C_BIT_i_21));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hFFFF808F)) 
     I2C_BIT_i_3
       (.I0(n_0_I2C_BIT_i_8),
        .I1(SD_COUNTER_reg__0[3]),
        .I2(SD_COUNTER_reg__0[4]),
        .I3(n_0_I2C_BIT_i_9),
        .I4(n_0_I2C_BIT_i_10),
        .O(n_0_I2C_BIT_i_3));
LUT6 #(
    .INIT(64'h4544444445454445)) 
     I2C_BIT_i_4
       (.I0(I2),
        .I1(n_0_I2C_BIT_i_11),
        .I2(SD_COUNTER_reg__0[5]),
        .I3(SD_COUNTER_reg__0[4]),
        .I4(n_0_I2C_BIT_i_12),
        .I5(n_0_I2C_BIT_i_9),
        .O(n_0_I2C_BIT_i_4));
LUT6 #(
    .INIT(64'h00000000AFCF0000)) 
     I2C_BIT_i_5
       (.I0(n_0_I2C_BIT_i_13),
        .I1(n_0_g0_b0),
        .I2(I1),
        .I3(I2),
        .I4(i2c_en_r1),
        .I5(i2c_en_r0),
        .O(I2C_BIT6_out));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'hB)) 
     I2C_BIT_i_6
       (.I0(SD_COUNTER_reg__0[4]),
        .I1(SD_COUNTER_reg__0[5]),
        .O(n_0_I2C_BIT_i_6));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFFFFBABF)) 
     I2C_BIT_i_7
       (.I0(SD_COUNTER_reg__0[2]),
        .I1(LUT_DATA[0]),
        .I2(SD_COUNTER_reg__0[0]),
        .I3(LUT_DATA[1]),
        .I4(SD_COUNTER_reg__0[1]),
        .O(n_0_I2C_BIT_i_7));
LUT6 #(
    .INIT(64'hAFA0ACA0A0A0ACA0)) 
     I2C_BIT_i_8
       (.I0(n_0_I2C_BIT_i_14),
        .I1(LUT_DATA[7]),
        .I2(SD_COUNTER_reg__0[2]),
        .I3(SD_COUNTER_reg__0[1]),
        .I4(SD_COUNTER_reg__0[0]),
        .I5(LUT_DATA[6]),
        .O(n_0_I2C_BIT_i_8));
LUT6 #(
    .INIT(64'h555F11FF555F1100)) 
     I2C_BIT_i_9
       (.I0(n_0_I2C_BIT_i_15),
        .I1(n_0_I2C_BIT_i_16),
        .I2(n_0_I2C_BIT_i_17),
        .I3(SD_COUNTER_reg__0[3]),
        .I4(SD_COUNTER_reg__0[2]),
        .I5(SD_COUNTER_reg__0[1]),
        .O(n_0_I2C_BIT_i_9));
FDPE I2C_BIT_reg
       (.C(iCLK),
        .CE(1'b1),
        .D(n_0_I2C_BIT_i_1),
        .PRE(rst),
        .Q(n_0_I2C_BIT_reg));
LUT6 #(
    .INIT(64'hF4F7F0F0B080F0F0)) 
     I2C_SCLK_INST_0
       (.I0(n_0_I2C_SCLK_INST_0_i_1),
        .I1(I2),
        .I2(n_0_SCLK_reg),
        .I3(n_0_I2C_SCLK_INST_0_i_2),
        .I4(I1),
        .I5(mI2C_CTRL_CLK),
        .O(I2C_SCLK));
LUT6 #(
    .INIT(64'hAEABAEA9AAE9A9E9)) 
     I2C_SCLK_INST_0_i_1
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(SD_COUNTER_reg__0[3]),
        .I2(SD_COUNTER_reg__0[4]),
        .I3(SD_COUNTER_reg__0[2]),
        .I4(SD_COUNTER_reg__0[1]),
        .I5(SD_COUNTER_reg__0[0]),
        .O(n_0_I2C_SCLK_INST_0_i_1));
LUT6 #(
    .INIT(64'hF280F681F803D807)) 
     I2C_SCLK_INST_0_i_2
       (.I0(SD_COUNTER_reg__0[0]),
        .I1(SD_COUNTER_reg__0[5]),
        .I2(SD_COUNTER_reg__0[4]),
        .I3(SD_COUNTER_reg__0[3]),
        .I4(SD_COUNTER_reg__0[1]),
        .I5(SD_COUNTER_reg__0[2]),
        .O(n_0_I2C_SCLK_INST_0_i_2));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     I2C_SDAT_INST_0
       (.I0(n_0_I2C_BIT_reg),
        .I1(SDO),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(I2C_SDAT));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h00E2)) 
     I2C_SDAT_INST_0_i_1
       (.I0(n_0_I2C_SDAT_INST_0_i_2),
        .I1(I2),
        .I2(n_0_I2C_SDAT_INST_0_i_3),
        .I3(n_0_I2C_SDAT_INST_0_i_4),
        .O(SDO));
LUT6 #(
    .INIT(64'hDFF7DFD7DFD7D7F7)) 
     I2C_SDAT_INST_0_i_2
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(SD_COUNTER_reg__0[4]),
        .I2(SD_COUNTER_reg__0[3]),
        .I3(SD_COUNTER_reg__0[2]),
        .I4(SD_COUNTER_reg__0[0]),
        .I5(SD_COUNTER_reg__0[1]),
        .O(n_0_I2C_SDAT_INST_0_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFDFFFFDFFF)) 
     I2C_SDAT_INST_0_i_3
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(SD_COUNTER_reg__0[4]),
        .I2(SD_COUNTER_reg__0[1]),
        .I3(SD_COUNTER_reg__0[0]),
        .I4(SD_COUNTER_reg__0[3]),
        .I5(SD_COUNTER_reg__0[2]),
        .O(n_0_I2C_SDAT_INST_0_i_3));
LUT6 #(
    .INIT(64'h0000000000603000)) 
     I2C_SDAT_INST_0_i_4
       (.I0(SD_COUNTER_reg__0[0]),
        .I1(SD_COUNTER_reg__0[1]),
        .I2(SD_COUNTER_reg__0[3]),
        .I3(SD_COUNTER_reg__0[4]),
        .I4(SD_COUNTER_reg__0[2]),
        .I5(SD_COUNTER_reg__0[5]),
        .O(n_0_I2C_SDAT_INST_0_i_4));
LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
     SCLK_i_1
       (.I0(n_0_SCLK_i_2),
        .I1(\n_0_SD_COUNTER[5]_i_3 ),
        .I2(n_0_SCLK_i_3),
        .I3(n_0_SCLK_i_4),
        .I4(n_0_SCLK_i_5),
        .I5(n_0_SCLK_reg),
        .O(n_0_SCLK_i_1));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'hB)) 
     SCLK_i_10
       (.I0(I2),
        .I1(I1),
        .O(n_0_SCLK_i_10));
LUT6 #(
    .INIT(64'hCF8FFFCFFFAFFFFF)) 
     SCLK_i_2
       (.I0(I2),
        .I1(n_0_SCLK_i_6),
        .I2(I1),
        .I3(SD_COUNTER_reg__0[3]),
        .I4(SD_COUNTER_reg__0[1]),
        .I5(n_0_SCLK_i_7),
        .O(n_0_SCLK_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFFAEEA0000)) 
     SCLK_i_3
       (.I0(n_0_SCLK_i_8),
        .I1(SD_COUNTER_reg__0[2]),
        .I2(SD_COUNTER_reg__0[0]),
        .I3(SD_COUNTER_reg__0[1]),
        .I4(SD_COUNTER_reg__0[5]),
        .I5(n_0_SCLK_i_9),
        .O(n_0_SCLK_i_3));
LUT6 #(
    .INIT(64'h0000000035FFFFFF)) 
     SCLK_i_4
       (.I0(SD_COUNTER_reg__0[1]),
        .I1(SD_COUNTER_reg__0[0]),
        .I2(SD_COUNTER_reg__0[2]),
        .I3(SD_COUNTER_reg__0[3]),
        .I4(SD_COUNTER_reg__0[4]),
        .I5(n_0_SCLK_i_10),
        .O(n_0_SCLK_i_4));
LUT6 #(
    .INIT(64'h77FF7F7FFEFE7F7E)) 
     SCLK_i_5
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(SD_COUNTER_reg__0[4]),
        .I2(SD_COUNTER_reg__0[3]),
        .I3(SD_COUNTER_reg__0[1]),
        .I4(SD_COUNTER_reg__0[0]),
        .I5(SD_COUNTER_reg__0[2]),
        .O(n_0_SCLK_i_5));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h8)) 
     SCLK_i_6
       (.I0(SD_COUNTER_reg__0[5]),
        .I1(SD_COUNTER_reg__0[4]),
        .O(n_0_SCLK_i_6));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h66066666)) 
     SCLK_i_7
       (.I0(SD_COUNTER_reg__0[1]),
        .I1(SD_COUNTER_reg__0[5]),
        .I2(SD_COUNTER_reg__0[4]),
        .I3(SD_COUNTER_reg__0[2]),
        .I4(SD_COUNTER_reg__0[0]),
        .O(n_0_SCLK_i_7));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'hE)) 
     SCLK_i_8
       (.I0(SD_COUNTER_reg__0[3]),
        .I1(SD_COUNTER_reg__0[4]),
        .O(n_0_SCLK_i_8));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h7)) 
     SCLK_i_9
       (.I0(I1),
        .I1(I2),
        .O(n_0_SCLK_i_9));
FDPE SCLK_reg
       (.C(iCLK),
        .CE(1'b1),
        .D(n_0_SCLK_i_1),
        .PRE(rst),
        .Q(n_0_SCLK_reg));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \SD_COUNTER[0]_i_1 
       (.I0(mI2C_END),
        .I1(I1),
        .I2(SD_COUNTER_reg__0[0]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h0440)) 
     \SD_COUNTER[1]_i_1 
       (.I0(mI2C_END),
        .I1(I1),
        .I2(SD_COUNTER_reg__0[1]),
        .I3(SD_COUNTER_reg__0[0]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h04444000)) 
     \SD_COUNTER[2]_i_1 
       (.I0(mI2C_END),
        .I1(I1),
        .I2(SD_COUNTER_reg__0[0]),
        .I3(SD_COUNTER_reg__0[1]),
        .I4(SD_COUNTER_reg__0[2]),
        .O(p_0_in[2]));
LUT6 #(
    .INIT(64'h0444444440000000)) 
     \SD_COUNTER[3]_i_1 
       (.I0(mI2C_END),
        .I1(I1),
        .I2(SD_COUNTER_reg__0[2]),
        .I3(SD_COUNTER_reg__0[1]),
        .I4(SD_COUNTER_reg__0[0]),
        .I5(SD_COUNTER_reg__0[3]),
        .O(p_0_in[3]));
LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
     \SD_COUNTER[4]_i_1 
       (.I0(\n_0_SD_COUNTER[5]_i_5 ),
        .I1(SD_COUNTER_reg__0[3]),
        .I2(SD_COUNTER_reg__0[2]),
        .I3(SD_COUNTER_reg__0[1]),
        .I4(SD_COUNTER_reg__0[0]),
        .I5(SD_COUNTER_reg__0[4]),
        .O(p_0_in[4]));
LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
     \SD_COUNTER[5]_i_1 
       (.I0(\n_0_SD_COUNTER[5]_i_3 ),
        .I1(mI2C_END),
        .I2(I1),
        .I3(SD_COUNTER_reg__0[4]),
        .I4(SD_COUNTER_reg__0[5]),
        .I5(\n_0_SD_COUNTER[5]_i_4 ),
        .O(\n_0_SD_COUNTER[5]_i_1 ));
LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
     \SD_COUNTER[5]_i_2 
       (.I0(\n_0_SD_COUNTER[5]_i_5 ),
        .I1(\n_0_SD_COUNTER[5]_i_6 ),
        .I2(SD_COUNTER_reg__0[2]),
        .I3(SD_COUNTER_reg__0[4]),
        .I4(SD_COUNTER_reg__0[3]),
        .I5(SD_COUNTER_reg__0[5]),
        .O(p_0_in[5]));
LUT2 #(
    .INIT(4'h2)) 
     \SD_COUNTER[5]_i_3 
       (.I0(i2c_en_r1),
        .I1(i2c_en_r0),
        .O(\n_0_SD_COUNTER[5]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \SD_COUNTER[5]_i_4 
       (.I0(SD_COUNTER_reg__0[3]),
        .I1(SD_COUNTER_reg__0[2]),
        .I2(SD_COUNTER_reg__0[1]),
        .I3(SD_COUNTER_reg__0[0]),
        .O(\n_0_SD_COUNTER[5]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \SD_COUNTER[5]_i_5 
       (.I0(I1),
        .I1(mI2C_END),
        .O(\n_0_SD_COUNTER[5]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \SD_COUNTER[5]_i_6 
       (.I0(SD_COUNTER_reg__0[0]),
        .I1(SD_COUNTER_reg__0[1]),
        .O(\n_0_SD_COUNTER[5]_i_6 ));
FDCE \SD_COUNTER_reg[0] 
       (.C(iCLK),
        .CE(\n_0_SD_COUNTER[5]_i_1 ),
        .CLR(rst),
        .D(p_0_in[0]),
        .Q(SD_COUNTER_reg__0[0]));
FDCE \SD_COUNTER_reg[1] 
       (.C(iCLK),
        .CE(\n_0_SD_COUNTER[5]_i_1 ),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(SD_COUNTER_reg__0[1]));
FDCE \SD_COUNTER_reg[2] 
       (.C(iCLK),
        .CE(\n_0_SD_COUNTER[5]_i_1 ),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(SD_COUNTER_reg__0[2]));
FDCE \SD_COUNTER_reg[3] 
       (.C(iCLK),
        .CE(\n_0_SD_COUNTER[5]_i_1 ),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(SD_COUNTER_reg__0[3]));
FDCE \SD_COUNTER_reg[4] 
       (.C(iCLK),
        .CE(\n_0_SD_COUNTER[5]_i_1 ),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(SD_COUNTER_reg__0[4]));
FDCE \SD_COUNTER_reg[5] 
       (.C(iCLK),
        .CE(\n_0_SD_COUNTER[5]_i_1 ),
        .CLR(rst),
        .D(p_0_in[5]),
        .Q(SD_COUNTER_reg__0[5]));
LUT6 #(
    .INIT(64'hFEE01DFF76FFDFF7)) 
     g0_b0
       (.I0(SD_COUNTER_reg__0[0]),
        .I1(SD_COUNTER_reg__0[1]),
        .I2(SD_COUNTER_reg__0[2]),
        .I3(SD_COUNTER_reg__0[3]),
        .I4(SD_COUNTER_reg__0[4]),
        .I5(SD_COUNTER_reg__0[5]),
        .O(n_0_g0_b0));
LUT6 #(
    .INIT(64'h4444444400404444)) 
     mI2C_WR_i_1
       (.I0(i2c_en_r0),
        .I1(i2c_en_r1),
        .I2(mI2C_END),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I3),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \mSetup_ST[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(I3),
        .I3(mI2C_END),
        .O(D[0]));
LUT6 #(
    .INIT(64'h02020202020202A2)) 
     \mSetup_ST[1]_i_1 
       (.I0(I4),
        .I1(\n_0_mSetup_ST[1]_i_3 ),
        .I2(I2),
        .I3(n_0_ACKW1_reg),
        .I4(n_0_ACKW2_reg),
        .I5(n_0_ACKW3_reg),
        .O(D[1]));
LUT3 #(
    .INIT(8'hFE)) 
     \mSetup_ST[1]_i_3 
       (.I0(n_0_ACKR3_reg),
        .I1(n_0_ACKR2_reg),
        .I2(n_0_ACKR1_reg),
        .O(\n_0_mSetup_ST[1]_i_3 ));
endmodule

(* ORIG_REF_NAME = "IICctrl" *) 
module IICctrl_0_IICctrl
   (LUT_INDEX,
    I2C_SCLK,
    I2C_SDAT,
    iCLK,
    rst,
    LUT_DATA,
    Slave_Addr);
  output [7:0]LUT_INDEX;
  output I2C_SCLK;
  inout I2C_SDAT;
  input iCLK;
  input rst;
  input [15:0]LUT_DATA;
  input [7:0]Slave_Addr;

  wire I2C_SCLK;
  wire I2C_SDAT;
  wire [15:0]LUT_DATA;
  wire [7:0]LUT_INDEX;
  wire [7:0]Slave_Addr;
  wire i2c_en_r0;
  wire i2c_en_r1;
  wire iCLK;
  wire [12:1]mI2C_CLK_DIV_reg;
  wire mI2C_CTRL_CLK;
  wire mI2C_GO0_out;
  wire mI2C_GO2_out;
  wire mI2C_WR4_out;
  wire \n_0_LUT_INDEX[7]_i_1 ;
  wire \n_0_LUT_INDEX[7]_i_3 ;
  wire \n_0_LUT_INDEX[7]_i_4 ;
  wire \n_0_LUT_INDEX[7]_i_5 ;
  wire \n_0_mI2C_CLK_DIV[0]_i_2 ;
  wire \n_0_mI2C_CLK_DIV[0]_i_3 ;
  wire \n_0_mI2C_CLK_DIV[0]_i_4 ;
  wire \n_0_mI2C_CLK_DIV[0]_i_5 ;
  wire \n_0_mI2C_CLK_DIV[0]_i_6 ;
  wire \n_0_mI2C_CLK_DIV[4]_i_2 ;
  wire \n_0_mI2C_CLK_DIV[4]_i_3 ;
  wire \n_0_mI2C_CLK_DIV[4]_i_4 ;
  wire \n_0_mI2C_CLK_DIV[4]_i_5 ;
  wire \n_0_mI2C_CLK_DIV[8]_i_2 ;
  wire \n_0_mI2C_CLK_DIV[8]_i_3 ;
  wire \n_0_mI2C_CLK_DIV[8]_i_4 ;
  wire \n_0_mI2C_CLK_DIV_reg[0] ;
  wire \n_0_mI2C_CLK_DIV_reg[0]_i_1 ;
  wire \n_0_mI2C_CLK_DIV_reg[4]_i_1 ;
  wire \n_0_mI2C_CLK_DIV_reg[8]_i_1 ;
  wire n_0_mI2C_CTRL_CLK_i_1;
  wire n_0_mI2C_CTRL_CLK_i_2;
  wire n_0_mI2C_CTRL_CLK_i_3;
  wire n_0_mI2C_GO_reg;
  wire n_0_mI2C_WR_i_3;
  wire n_0_mI2C_WR_reg;
  wire \n_0_mSetup_ST[1]_i_2 ;
  wire \n_0_mSetup_ST_reg[0] ;
  wire \n_0_mSetup_ST_reg[1] ;
  wire \n_1_mI2C_CLK_DIV_reg[0]_i_1 ;
  wire \n_1_mI2C_CLK_DIV_reg[4]_i_1 ;
  wire \n_1_mI2C_CLK_DIV_reg[8]_i_1 ;
  wire \n_2_mI2C_CLK_DIV_reg[0]_i_1 ;
  wire \n_2_mI2C_CLK_DIV_reg[4]_i_1 ;
  wire \n_2_mI2C_CLK_DIV_reg[8]_i_1 ;
  wire n_2_u_I2C_Controller;
  wire \n_3_mI2C_CLK_DIV_reg[0]_i_1 ;
  wire \n_3_mI2C_CLK_DIV_reg[4]_i_1 ;
  wire \n_3_mI2C_CLK_DIV_reg[8]_i_1 ;
  wire n_3_u_I2C_Controller;
  wire \n_4_mI2C_CLK_DIV_reg[0]_i_1 ;
  wire \n_4_mI2C_CLK_DIV_reg[4]_i_1 ;
  wire \n_4_mI2C_CLK_DIV_reg[8]_i_1 ;
  wire \n_5_mI2C_CLK_DIV_reg[0]_i_1 ;
  wire \n_5_mI2C_CLK_DIV_reg[4]_i_1 ;
  wire \n_5_mI2C_CLK_DIV_reg[8]_i_1 ;
  wire \n_6_mI2C_CLK_DIV_reg[0]_i_1 ;
  wire \n_6_mI2C_CLK_DIV_reg[4]_i_1 ;
  wire \n_6_mI2C_CLK_DIV_reg[8]_i_1 ;
  wire \n_7_mI2C_CLK_DIV_reg[0]_i_1 ;
  wire \n_7_mI2C_CLK_DIV_reg[4]_i_1 ;
  wire \n_7_mI2C_CLK_DIV_reg[8]_i_1 ;
  wire [7:0]p_0_in__0;
  wire rst;
  wire xlnx_opt_;
  wire [3:1]NLW_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_CARRY4_S_UNCONNECTED;

CARRY4 CARRY4
       (.CI(xlnx_opt_),
        .CO({NLW_CARRY4_CO_UNCONNECTED[3:1],\n_0_mI2C_CLK_DIV_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({NLW_CARRY4_DI_UNCONNECTED[3:1],1'b0}),
        .O(NLW_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_CARRY4_S_UNCONNECTED[3:1],1'b1}));
LUT1 #(
    .INIT(2'h1)) 
     \LUT_INDEX[0]_i_1 
       (.I0(LUT_INDEX[0]),
        .O(p_0_in__0[0]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \LUT_INDEX[1]_i_1 
       (.I0(LUT_INDEX[0]),
        .I1(LUT_INDEX[1]),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \LUT_INDEX[2]_i_1 
       (.I0(LUT_INDEX[2]),
        .I1(LUT_INDEX[1]),
        .I2(LUT_INDEX[0]),
        .O(p_0_in__0[2]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \LUT_INDEX[3]_i_1 
       (.I0(LUT_INDEX[3]),
        .I1(LUT_INDEX[0]),
        .I2(LUT_INDEX[1]),
        .I3(LUT_INDEX[2]),
        .O(p_0_in__0[3]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \LUT_INDEX[4]_i_1 
       (.I0(LUT_INDEX[4]),
        .I1(LUT_INDEX[2]),
        .I2(LUT_INDEX[1]),
        .I3(LUT_INDEX[0]),
        .I4(LUT_INDEX[3]),
        .O(p_0_in__0[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \LUT_INDEX[5]_i_1 
       (.I0(LUT_INDEX[5]),
        .I1(LUT_INDEX[3]),
        .I2(LUT_INDEX[0]),
        .I3(LUT_INDEX[1]),
        .I4(LUT_INDEX[2]),
        .I5(LUT_INDEX[4]),
        .O(p_0_in__0[5]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \LUT_INDEX[6]_i_1 
       (.I0(LUT_INDEX[6]),
        .I1(\n_0_LUT_INDEX[7]_i_4 ),
        .O(p_0_in__0[6]));
LUT5 #(
    .INIT(32'h00000020)) 
     \LUT_INDEX[7]_i_1 
       (.I0(\n_0_mSetup_ST_reg[1] ),
        .I1(\n_0_mSetup_ST_reg[0] ),
        .I2(i2c_en_r1),
        .I3(i2c_en_r0),
        .I4(\n_0_LUT_INDEX[7]_i_3 ),
        .O(\n_0_LUT_INDEX[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \LUT_INDEX[7]_i_2 
       (.I0(LUT_INDEX[7]),
        .I1(\n_0_LUT_INDEX[7]_i_4 ),
        .I2(LUT_INDEX[6]),
        .O(p_0_in__0[7]));
LUT6 #(
    .INIT(64'hFF00FF00AE000000)) 
     \LUT_INDEX[7]_i_3 
       (.I0(LUT_INDEX[4]),
        .I1(LUT_INDEX[3]),
        .I2(\n_0_LUT_INDEX[7]_i_5 ),
        .I3(LUT_INDEX[7]),
        .I4(LUT_INDEX[5]),
        .I5(LUT_INDEX[6]),
        .O(\n_0_LUT_INDEX[7]_i_3 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \LUT_INDEX[7]_i_4 
       (.I0(LUT_INDEX[5]),
        .I1(LUT_INDEX[3]),
        .I2(LUT_INDEX[0]),
        .I3(LUT_INDEX[1]),
        .I4(LUT_INDEX[2]),
        .I5(LUT_INDEX[4]),
        .O(\n_0_LUT_INDEX[7]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \LUT_INDEX[7]_i_5 
       (.I0(LUT_INDEX[1]),
        .I1(LUT_INDEX[2]),
        .O(\n_0_LUT_INDEX[7]_i_5 ));
FDCE \LUT_INDEX_reg[0] 
       (.C(iCLK),
        .CE(\n_0_LUT_INDEX[7]_i_1 ),
        .CLR(rst),
        .D(p_0_in__0[0]),
        .Q(LUT_INDEX[0]));
FDCE \LUT_INDEX_reg[1] 
       (.C(iCLK),
        .CE(\n_0_LUT_INDEX[7]_i_1 ),
        .CLR(rst),
        .D(p_0_in__0[1]),
        .Q(LUT_INDEX[1]));
FDCE \LUT_INDEX_reg[2] 
       (.C(iCLK),
        .CE(\n_0_LUT_INDEX[7]_i_1 ),
        .CLR(rst),
        .D(p_0_in__0[2]),
        .Q(LUT_INDEX[2]));
FDCE \LUT_INDEX_reg[3] 
       (.C(iCLK),
        .CE(\n_0_LUT_INDEX[7]_i_1 ),
        .CLR(rst),
        .D(p_0_in__0[3]),
        .Q(LUT_INDEX[3]));
FDCE \LUT_INDEX_reg[4] 
       (.C(iCLK),
        .CE(\n_0_LUT_INDEX[7]_i_1 ),
        .CLR(rst),
        .D(p_0_in__0[4]),
        .Q(LUT_INDEX[4]));
FDCE \LUT_INDEX_reg[5] 
       (.C(iCLK),
        .CE(\n_0_LUT_INDEX[7]_i_1 ),
        .CLR(rst),
        .D(p_0_in__0[5]),
        .Q(LUT_INDEX[5]));
FDCE \LUT_INDEX_reg[6] 
       (.C(iCLK),
        .CE(\n_0_LUT_INDEX[7]_i_1 ),
        .CLR(rst),
        .D(p_0_in__0[6]),
        .Q(LUT_INDEX[6]));
FDCE \LUT_INDEX_reg[7] 
       (.C(iCLK),
        .CE(\n_0_LUT_INDEX[7]_i_1 ),
        .CLR(rst),
        .D(p_0_in__0[7]),
        .Q(LUT_INDEX[7]));
FDCE i2c_en_r0_reg
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(mI2C_CTRL_CLK),
        .Q(i2c_en_r0));
FDCE i2c_en_r1_reg
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(i2c_en_r0),
        .Q(i2c_en_r1));
LUT5 #(
    .INIT(32'h10110000)) 
     \mI2C_CLK_DIV[0]_i_2 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(\n_0_mI2C_CLK_DIV_reg[0] ),
        .O(\n_0_mI2C_CLK_DIV[0]_i_2 ));
LUT5 #(
    .INIT(32'h10110000)) 
     \mI2C_CLK_DIV[0]_i_3 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(mI2C_CLK_DIV_reg[3]),
        .O(\n_0_mI2C_CLK_DIV[0]_i_3 ));
LUT5 #(
    .INIT(32'h10110000)) 
     \mI2C_CLK_DIV[0]_i_4 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(mI2C_CLK_DIV_reg[2]),
        .O(\n_0_mI2C_CLK_DIV[0]_i_4 ));
LUT5 #(
    .INIT(32'h10110000)) 
     \mI2C_CLK_DIV[0]_i_5 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(mI2C_CLK_DIV_reg[1]),
        .O(\n_0_mI2C_CLK_DIV[0]_i_5 ));
LUT5 #(
    .INIT(32'h00001011)) 
     \mI2C_CLK_DIV[0]_i_6 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(\n_0_mI2C_CLK_DIV_reg[0] ),
        .O(\n_0_mI2C_CLK_DIV[0]_i_6 ));
LUT5 #(
    .INIT(32'h10110000)) 
     \mI2C_CLK_DIV[4]_i_2 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(mI2C_CLK_DIV_reg[7]),
        .O(\n_0_mI2C_CLK_DIV[4]_i_2 ));
LUT5 #(
    .INIT(32'h10110000)) 
     \mI2C_CLK_DIV[4]_i_3 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(mI2C_CLK_DIV_reg[6]),
        .O(\n_0_mI2C_CLK_DIV[4]_i_3 ));
LUT5 #(
    .INIT(32'h10110000)) 
     \mI2C_CLK_DIV[4]_i_4 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(mI2C_CLK_DIV_reg[5]),
        .O(\n_0_mI2C_CLK_DIV[4]_i_4 ));
LUT5 #(
    .INIT(32'h10110000)) 
     \mI2C_CLK_DIV[4]_i_5 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(mI2C_CLK_DIV_reg[4]),
        .O(\n_0_mI2C_CLK_DIV[4]_i_5 ));
LUT4 #(
    .INIT(16'h1000)) 
     \mI2C_CLK_DIV[8]_i_2 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .O(\n_0_mI2C_CLK_DIV[8]_i_2 ));
LUT5 #(
    .INIT(32'h10110000)) 
     \mI2C_CLK_DIV[8]_i_3 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(mI2C_CLK_DIV_reg[9]),
        .O(\n_0_mI2C_CLK_DIV[8]_i_3 ));
LUT5 #(
    .INIT(32'h10110000)) 
     \mI2C_CLK_DIV[8]_i_4 
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(mI2C_CLK_DIV_reg[8]),
        .O(\n_0_mI2C_CLK_DIV[8]_i_4 ));
FDCE \mI2C_CLK_DIV_reg[0] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_mI2C_CLK_DIV_reg[0]_i_1 ),
        .Q(\n_0_mI2C_CLK_DIV_reg[0] ));
CARRY4 \mI2C_CLK_DIV_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_mI2C_CLK_DIV_reg[0]_i_1 ,\n_1_mI2C_CLK_DIV_reg[0]_i_1 ,\n_2_mI2C_CLK_DIV_reg[0]_i_1 ,\n_3_mI2C_CLK_DIV_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_mI2C_CLK_DIV[0]_i_2 }),
        .O({\n_4_mI2C_CLK_DIV_reg[0]_i_1 ,\n_5_mI2C_CLK_DIV_reg[0]_i_1 ,\n_6_mI2C_CLK_DIV_reg[0]_i_1 ,\n_7_mI2C_CLK_DIV_reg[0]_i_1 }),
        .S({\n_0_mI2C_CLK_DIV[0]_i_3 ,\n_0_mI2C_CLK_DIV[0]_i_4 ,\n_0_mI2C_CLK_DIV[0]_i_5 ,\n_0_mI2C_CLK_DIV[0]_i_6 }));
FDCE \mI2C_CLK_DIV_reg[10] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_mI2C_CLK_DIV_reg[8]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[10]));
FDCE \mI2C_CLK_DIV_reg[11] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_mI2C_CLK_DIV_reg[8]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[11]));
FDCE \mI2C_CLK_DIV_reg[12] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_mI2C_CLK_DIV_reg[8]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[12]));
FDCE \mI2C_CLK_DIV_reg[1] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_mI2C_CLK_DIV_reg[0]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[1]));
FDCE \mI2C_CLK_DIV_reg[2] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_mI2C_CLK_DIV_reg[0]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[2]));
FDCE \mI2C_CLK_DIV_reg[3] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_mI2C_CLK_DIV_reg[0]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[3]));
FDCE \mI2C_CLK_DIV_reg[4] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_mI2C_CLK_DIV_reg[4]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[4]));
CARRY4 \mI2C_CLK_DIV_reg[4]_i_1 
       (.CI(\n_0_mI2C_CLK_DIV_reg[0]_i_1 ),
        .CO({\n_0_mI2C_CLK_DIV_reg[4]_i_1 ,\n_1_mI2C_CLK_DIV_reg[4]_i_1 ,\n_2_mI2C_CLK_DIV_reg[4]_i_1 ,\n_3_mI2C_CLK_DIV_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_mI2C_CLK_DIV_reg[4]_i_1 ,\n_5_mI2C_CLK_DIV_reg[4]_i_1 ,\n_6_mI2C_CLK_DIV_reg[4]_i_1 ,\n_7_mI2C_CLK_DIV_reg[4]_i_1 }),
        .S({\n_0_mI2C_CLK_DIV[4]_i_2 ,\n_0_mI2C_CLK_DIV[4]_i_3 ,\n_0_mI2C_CLK_DIV[4]_i_4 ,\n_0_mI2C_CLK_DIV[4]_i_5 }));
FDCE \mI2C_CLK_DIV_reg[5] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_mI2C_CLK_DIV_reg[4]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[5]));
FDCE \mI2C_CLK_DIV_reg[6] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_mI2C_CLK_DIV_reg[4]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[6]));
FDCE \mI2C_CLK_DIV_reg[7] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_mI2C_CLK_DIV_reg[4]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[7]));
FDCE \mI2C_CLK_DIV_reg[8] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_mI2C_CLK_DIV_reg[8]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[8]));
CARRY4 \mI2C_CLK_DIV_reg[8]_i_1 
       (.CI(\n_0_mI2C_CLK_DIV_reg[4]_i_1 ),
        .CO({xlnx_opt_,\n_1_mI2C_CLK_DIV_reg[8]_i_1 ,\n_2_mI2C_CLK_DIV_reg[8]_i_1 ,\n_3_mI2C_CLK_DIV_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_mI2C_CLK_DIV_reg[8]_i_1 ,\n_5_mI2C_CLK_DIV_reg[8]_i_1 ,\n_6_mI2C_CLK_DIV_reg[8]_i_1 ,\n_7_mI2C_CLK_DIV_reg[8]_i_1 }),
        .S({1'b0,\n_0_mI2C_CLK_DIV[8]_i_2 ,\n_0_mI2C_CLK_DIV[8]_i_3 ,\n_0_mI2C_CLK_DIV[8]_i_4 }));
FDCE \mI2C_CLK_DIV_reg[9] 
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_mI2C_CLK_DIV_reg[8]_i_1 ),
        .Q(mI2C_CLK_DIV_reg[9]));
LUT5 #(
    .INIT(32'h1011EFEE)) 
     mI2C_CTRL_CLK_i_1
       (.I0(mI2C_CLK_DIV_reg[12]),
        .I1(mI2C_CLK_DIV_reg[11]),
        .I2(n_0_mI2C_CTRL_CLK_i_2),
        .I3(mI2C_CLK_DIV_reg[10]),
        .I4(mI2C_CTRL_CLK),
        .O(n_0_mI2C_CTRL_CLK_i_1));
LUT6 #(
    .INIT(64'h000000000000FF7F)) 
     mI2C_CTRL_CLK_i_2
       (.I0(mI2C_CLK_DIV_reg[7]),
        .I1(mI2C_CLK_DIV_reg[5]),
        .I2(mI2C_CLK_DIV_reg[6]),
        .I3(n_0_mI2C_CTRL_CLK_i_3),
        .I4(mI2C_CLK_DIV_reg[8]),
        .I5(mI2C_CLK_DIV_reg[9]),
        .O(n_0_mI2C_CTRL_CLK_i_2));
LUT4 #(
    .INIT(16'h0001)) 
     mI2C_CTRL_CLK_i_3
       (.I0(mI2C_CLK_DIV_reg[1]),
        .I1(mI2C_CLK_DIV_reg[2]),
        .I2(mI2C_CLK_DIV_reg[3]),
        .I3(mI2C_CLK_DIV_reg[4]),
        .O(n_0_mI2C_CTRL_CLK_i_3));
FDCE mI2C_CTRL_CLK_reg
       (.C(iCLK),
        .CE(1'b1),
        .CLR(rst),
        .D(n_0_mI2C_CTRL_CLK_i_1),
        .Q(mI2C_CTRL_CLK));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h01)) 
     mI2C_GO_i_1
       (.I0(\n_0_LUT_INDEX[7]_i_3 ),
        .I1(\n_0_mSetup_ST_reg[0] ),
        .I2(\n_0_mSetup_ST_reg[1] ),
        .O(mI2C_GO0_out));
FDCE mI2C_GO_reg
       (.C(iCLK),
        .CE(mI2C_GO2_out),
        .CLR(rst),
        .D(mI2C_GO0_out),
        .Q(n_0_mI2C_GO_reg));
LUT5 #(
    .INIT(32'hAAAAAAA8)) 
     mI2C_WR_i_2
       (.I0(mI2C_GO0_out),
        .I1(n_0_mI2C_WR_i_3),
        .I2(LUT_INDEX[4]),
        .I3(LUT_INDEX[7]),
        .I4(LUT_INDEX[3]),
        .O(mI2C_WR4_out));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     mI2C_WR_i_3
       (.I0(LUT_INDEX[2]),
        .I1(LUT_INDEX[1]),
        .I2(LUT_INDEX[6]),
        .I3(LUT_INDEX[5]),
        .O(n_0_mI2C_WR_i_3));
FDCE mI2C_WR_reg
       (.C(iCLK),
        .CE(mI2C_GO2_out),
        .CLR(rst),
        .D(mI2C_WR4_out),
        .Q(n_0_mI2C_WR_reg));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \mSetup_ST[1]_i_2 
       (.I0(\n_0_mSetup_ST_reg[0] ),
        .I1(\n_0_LUT_INDEX[7]_i_3 ),
        .O(\n_0_mSetup_ST[1]_i_2 ));
FDCE \mSetup_ST_reg[0] 
       (.C(iCLK),
        .CE(mI2C_GO2_out),
        .CLR(rst),
        .D(n_3_u_I2C_Controller),
        .Q(\n_0_mSetup_ST_reg[0] ));
FDCE \mSetup_ST_reg[1] 
       (.C(iCLK),
        .CE(mI2C_GO2_out),
        .CLR(rst),
        .D(n_2_u_I2C_Controller),
        .Q(\n_0_mSetup_ST_reg[1] ));
IICctrl_0_I2C_Controller u_I2C_Controller
       (.D({n_2_u_I2C_Controller,n_3_u_I2C_Controller}),
        .E(mI2C_GO2_out),
        .I1(n_0_mI2C_GO_reg),
        .I2(n_0_mI2C_WR_reg),
        .I2C_SCLK(I2C_SCLK),
        .I2C_SDAT(I2C_SDAT),
        .I3(\n_0_LUT_INDEX[7]_i_3 ),
        .I4(\n_0_mSetup_ST[1]_i_2 ),
        .LUT_DATA(LUT_DATA),
        .Q({\n_0_mSetup_ST_reg[1] ,\n_0_mSetup_ST_reg[0] }),
        .Slave_Addr(Slave_Addr),
        .i2c_en_r0(i2c_en_r0),
        .i2c_en_r1(i2c_en_r1),
        .iCLK(iCLK),
        .mI2C_CTRL_CLK(mI2C_CTRL_CLK),
        .rst(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
