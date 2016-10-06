// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Sep 20 11:43:01 2016
// Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/zhehengt/Desktop/Digital_Design_Lab/Chapter_11/VGA/VGA.srcs/sources_1/ip/vga_0/vga_0_funcsim.v
// Design      : vga_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "vga,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "vga_0,vga,{}" *) (* CORE_GENERATION_INFO = "vga_0,vga,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=vga,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,HD=640,HF=48,HA=16,HB=96,HT=800,VD=480,VF=33,VA=10,VB=2,VT=525}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module vga_0
   (vga_pclk,
    vga_rst,
    vga_hsync,
    vga_vsync,
    vga_valid,
    vga_h_cnt,
    vga_v_cnt);
  input vga_pclk;
  input vga_rst;
  output vga_hsync;
  output vga_vsync;
  output vga_valid;
  output [11:0]vga_h_cnt;
  output [10:0]vga_v_cnt;

  wire \<const0> ;
  wire [9:0]\^vga_h_cnt ;
  wire vga_hsync;
  wire vga_pclk;
  wire vga_rst;
  wire [8:0]\^vga_v_cnt ;
  wire vga_valid;
  wire vga_vsync;

  assign vga_h_cnt[11] = \<const0> ;
  assign vga_h_cnt[10] = \<const0> ;
  assign vga_h_cnt[9:0] = \^vga_h_cnt [9:0];
  assign vga_v_cnt[10] = \<const0> ;
  assign vga_v_cnt[9] = \<const0> ;
  assign vga_v_cnt[8:0] = \^vga_v_cnt [8:0];
GND GND
       (.G(\<const0> ));
vga_0_vga inst
       (.vga_h_cnt(\^vga_h_cnt ),
        .vga_hsync(vga_hsync),
        .vga_pclk(vga_pclk),
        .vga_rst(vga_rst),
        .vga_v_cnt(\^vga_v_cnt ),
        .vga_valid(vga_valid),
        .vga_vsync(vga_vsync));
endmodule

(* ORIG_REF_NAME = "vga" *) 
module vga_0_vga
   (vga_hsync,
    vga_vsync,
    vga_h_cnt,
    vga_valid,
    vga_v_cnt,
    vga_pclk,
    vga_rst);
  output vga_hsync;
  output vga_vsync;
  output [9:0]vga_h_cnt;
  output vga_valid;
  output [8:0]vga_v_cnt;
  input vga_pclk;
  input vga_rst;

  wire [9:0]line_cnt_reg__0;
  wire n_0_hsync_i_2;
  wire n_0_hsync_i_3;
  wire n_0_hsync_i_4;
  wire \n_0_line_cnt[0]_i_1 ;
  wire \n_0_line_cnt[1]_i_1 ;
  wire \n_0_line_cnt[2]_i_1 ;
  wire \n_0_line_cnt[2]_i_2 ;
  wire \n_0_line_cnt[3]_i_1 ;
  wire \n_0_line_cnt[3]_i_2 ;
  wire \n_0_line_cnt[4]_i_1 ;
  wire \n_0_line_cnt[4]_i_2 ;
  wire \n_0_line_cnt[5]_i_1 ;
  wire \n_0_line_cnt[5]_i_2 ;
  wire \n_0_line_cnt[6]_i_1 ;
  wire \n_0_line_cnt[7]_i_1 ;
  wire \n_0_line_cnt[8]_i_1 ;
  wire \n_0_line_cnt[8]_i_2 ;
  wire \n_0_line_cnt[8]_i_3 ;
  wire \n_0_line_cnt[9]_i_1 ;
  wire \n_0_line_cnt[9]_i_2 ;
  wire \n_0_line_cnt[9]_i_3 ;
  wire \n_0_line_cnt[9]_i_4 ;
  wire \n_0_line_cnt[9]_i_5 ;
  wire \n_0_line_cnt[9]_i_6 ;
  wire \n_0_pixel_cnt[0]_i_2 ;
  wire \n_0_pixel_cnt[0]_i_3 ;
  wire \n_0_pixel_cnt[0]_i_4 ;
  wire \n_0_pixel_cnt[0]_i_5 ;
  wire \n_0_pixel_cnt[0]_i_6 ;
  wire \n_0_pixel_cnt[0]_i_7 ;
  wire \n_0_pixel_cnt[4]_i_2 ;
  wire \n_0_pixel_cnt[4]_i_3 ;
  wire \n_0_pixel_cnt[4]_i_4 ;
  wire \n_0_pixel_cnt[4]_i_5 ;
  wire \n_0_pixel_cnt[8]_i_2 ;
  wire \n_0_pixel_cnt[8]_i_3 ;
  wire \n_0_pixel_cnt_reg[0]_i_1 ;
  wire \n_0_pixel_cnt_reg[4]_i_1 ;
  wire n_0_vga_valid_INST_0_i_1;
  wire n_0_vsync_i_1;
  wire n_0_vsync_i_2;
  wire n_0_vsync_i_3;
  wire \n_1_pixel_cnt_reg[0]_i_1 ;
  wire \n_1_pixel_cnt_reg[4]_i_1 ;
  wire \n_1_pixel_cnt_reg[8]_i_1 ;
  wire \n_2_pixel_cnt_reg[0]_i_1 ;
  wire \n_2_pixel_cnt_reg[4]_i_1 ;
  wire \n_2_pixel_cnt_reg[8]_i_1 ;
  wire \n_3_pixel_cnt_reg[0]_i_1 ;
  wire \n_3_pixel_cnt_reg[4]_i_1 ;
  wire \n_3_pixel_cnt_reg[8]_i_1 ;
  wire \n_4_pixel_cnt_reg[0]_i_1 ;
  wire \n_4_pixel_cnt_reg[4]_i_1 ;
  wire \n_4_pixel_cnt_reg[8]_i_1 ;
  wire \n_5_pixel_cnt_reg[0]_i_1 ;
  wire \n_5_pixel_cnt_reg[4]_i_1 ;
  wire \n_5_pixel_cnt_reg[8]_i_1 ;
  wire \n_6_pixel_cnt_reg[0]_i_1 ;
  wire \n_6_pixel_cnt_reg[4]_i_1 ;
  wire \n_6_pixel_cnt_reg[8]_i_1 ;
  wire \n_7_pixel_cnt_reg[0]_i_1 ;
  wire \n_7_pixel_cnt_reg[4]_i_1 ;
  wire \n_7_pixel_cnt_reg[8]_i_1 ;
  wire p_0_in;
  wire [11:0]pixel_cnt_reg;
  wire [9:0]vga_h_cnt;
  wire vga_hsync;
  wire vga_pclk;
  wire vga_rst;
  wire [8:0]vga_v_cnt;
  wire vga_valid;
  wire vga_vsync;
  wire [3:3]\NLW_pixel_cnt_reg[8]_i_1_CO_UNCONNECTED ;

LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
     hsync_i_1
       (.I0(n_0_hsync_i_2),
        .I1(pixel_cnt_reg[7]),
        .I2(pixel_cnt_reg[6]),
        .I3(pixel_cnt_reg[5]),
        .I4(n_0_hsync_i_3),
        .I5(n_0_hsync_i_4),
        .O(p_0_in));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h15555555)) 
     hsync_i_2
       (.I0(pixel_cnt_reg[4]),
        .I1(pixel_cnt_reg[1]),
        .I2(pixel_cnt_reg[0]),
        .I3(pixel_cnt_reg[3]),
        .I4(pixel_cnt_reg[2]),
        .O(n_0_hsync_i_2));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'hFEFF)) 
     hsync_i_3
       (.I0(pixel_cnt_reg[11]),
        .I1(pixel_cnt_reg[10]),
        .I2(pixel_cnt_reg[8]),
        .I3(pixel_cnt_reg[9]),
        .O(n_0_hsync_i_3));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     hsync_i_4
       (.I0(pixel_cnt_reg[2]),
        .I1(pixel_cnt_reg[3]),
        .I2(pixel_cnt_reg[4]),
        .I3(pixel_cnt_reg[1]),
        .I4(pixel_cnt_reg[0]),
        .O(n_0_hsync_i_4));
FDPE hsync_reg
       (.C(vga_pclk),
        .CE(1'b1),
        .D(p_0_in),
        .PRE(vga_rst),
        .Q(vga_hsync));
LUT6 #(
    .INIT(64'h0000000055555557)) 
     \line_cnt[0]_i_1 
       (.I0(line_cnt_reg__0[9]),
        .I1(n_0_vsync_i_2),
        .I2(line_cnt_reg__0[4]),
        .I3(line_cnt_reg__0[6]),
        .I4(line_cnt_reg__0[8]),
        .I5(line_cnt_reg__0[0]),
        .O(\n_0_line_cnt[0]_i_1 ));
LUT5 #(
    .INIT(32'h06660606)) 
     \line_cnt[1]_i_1 
       (.I0(line_cnt_reg__0[0]),
        .I1(line_cnt_reg__0[1]),
        .I2(line_cnt_reg__0[9]),
        .I3(n_0_vsync_i_2),
        .I4(\n_0_line_cnt[9]_i_4 ),
        .O(\n_0_line_cnt[1]_i_1 ));
LUT6 #(
    .INIT(64'h0000000055555557)) 
     \line_cnt[2]_i_1 
       (.I0(line_cnt_reg__0[9]),
        .I1(n_0_vsync_i_2),
        .I2(line_cnt_reg__0[4]),
        .I3(line_cnt_reg__0[6]),
        .I4(line_cnt_reg__0[8]),
        .I5(\n_0_line_cnt[2]_i_2 ),
        .O(\n_0_line_cnt[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h95)) 
     \line_cnt[2]_i_2 
       (.I0(line_cnt_reg__0[2]),
        .I1(line_cnt_reg__0[0]),
        .I2(line_cnt_reg__0[1]),
        .O(\n_0_line_cnt[2]_i_2 ));
LUT6 #(
    .INIT(64'h0000000055555557)) 
     \line_cnt[3]_i_1 
       (.I0(line_cnt_reg__0[9]),
        .I1(n_0_vsync_i_2),
        .I2(line_cnt_reg__0[4]),
        .I3(line_cnt_reg__0[6]),
        .I4(line_cnt_reg__0[8]),
        .I5(\n_0_line_cnt[3]_i_2 ),
        .O(\n_0_line_cnt[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h9555)) 
     \line_cnt[3]_i_2 
       (.I0(line_cnt_reg__0[3]),
        .I1(line_cnt_reg__0[2]),
        .I2(line_cnt_reg__0[1]),
        .I3(line_cnt_reg__0[0]),
        .O(\n_0_line_cnt[3]_i_2 ));
LUT6 #(
    .INIT(64'h5555000000005557)) 
     \line_cnt[4]_i_1 
       (.I0(line_cnt_reg__0[9]),
        .I1(n_0_vsync_i_2),
        .I2(line_cnt_reg__0[6]),
        .I3(line_cnt_reg__0[8]),
        .I4(\n_0_line_cnt[4]_i_2 ),
        .I5(line_cnt_reg__0[4]),
        .O(\n_0_line_cnt[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \line_cnt[4]_i_2 
       (.I0(line_cnt_reg__0[3]),
        .I1(line_cnt_reg__0[2]),
        .I2(line_cnt_reg__0[0]),
        .I3(line_cnt_reg__0[1]),
        .O(\n_0_line_cnt[4]_i_2 ));
LUT6 #(
    .INIT(64'h5555000000007555)) 
     \line_cnt[5]_i_1 
       (.I0(line_cnt_reg__0[9]),
        .I1(line_cnt_reg__0[7]),
        .I2(\n_0_line_cnt[5]_i_2 ),
        .I3(\n_0_line_cnt[9]_i_4 ),
        .I4(\n_0_line_cnt[9]_i_6 ),
        .I5(line_cnt_reg__0[5]),
        .O(\n_0_line_cnt[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h7)) 
     \line_cnt[5]_i_2 
       (.I0(line_cnt_reg__0[2]),
        .I1(line_cnt_reg__0[3]),
        .O(\n_0_line_cnt[5]_i_2 ));
LUT6 #(
    .INIT(64'h0000555555570000)) 
     \line_cnt[6]_i_1 
       (.I0(line_cnt_reg__0[9]),
        .I1(n_0_vsync_i_2),
        .I2(line_cnt_reg__0[4]),
        .I3(line_cnt_reg__0[8]),
        .I4(\n_0_line_cnt[8]_i_2 ),
        .I5(line_cnt_reg__0[6]),
        .O(\n_0_line_cnt[6]_i_1 ));
LUT6 #(
    .INIT(64'h0078787800780078)) 
     \line_cnt[7]_i_1 
       (.I0(\n_0_line_cnt[8]_i_2 ),
        .I1(line_cnt_reg__0[6]),
        .I2(line_cnt_reg__0[7]),
        .I3(line_cnt_reg__0[9]),
        .I4(n_0_vsync_i_2),
        .I5(\n_0_line_cnt[9]_i_4 ),
        .O(\n_0_line_cnt[7]_i_1 ));
LUT6 #(
    .INIT(64'h7575007500007500)) 
     \line_cnt[8]_i_1 
       (.I0(line_cnt_reg__0[9]),
        .I1(n_0_vsync_i_2),
        .I2(\n_0_line_cnt[9]_i_4 ),
        .I3(\n_0_line_cnt[8]_i_2 ),
        .I4(\n_0_line_cnt[8]_i_3 ),
        .I5(line_cnt_reg__0[8]),
        .O(\n_0_line_cnt[8]_i_1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \line_cnt[8]_i_2 
       (.I0(line_cnt_reg__0[5]),
        .I1(line_cnt_reg__0[4]),
        .I2(line_cnt_reg__0[3]),
        .I3(line_cnt_reg__0[2]),
        .I4(line_cnt_reg__0[0]),
        .I5(line_cnt_reg__0[1]),
        .O(\n_0_line_cnt[8]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h7)) 
     \line_cnt[8]_i_3 
       (.I0(line_cnt_reg__0[6]),
        .I1(line_cnt_reg__0[7]),
        .O(\n_0_line_cnt[8]_i_3 ));
LUT4 #(
    .INIT(16'h8000)) 
     \line_cnt[9]_i_1 
       (.I0(\n_0_line_cnt[9]_i_3 ),
        .I1(n_0_hsync_i_4),
        .I2(pixel_cnt_reg[9]),
        .I3(pixel_cnt_reg[8]),
        .O(\n_0_line_cnt[9]_i_1 ));
LUT5 #(
    .INIT(32'h444400F0)) 
     \line_cnt[9]_i_2 
       (.I0(n_0_vsync_i_2),
        .I1(\n_0_line_cnt[9]_i_4 ),
        .I2(\n_0_line_cnt[9]_i_5 ),
        .I3(\n_0_line_cnt[9]_i_6 ),
        .I4(line_cnt_reg__0[9]),
        .O(\n_0_line_cnt[9]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \line_cnt[9]_i_3 
       (.I0(pixel_cnt_reg[11]),
        .I1(pixel_cnt_reg[10]),
        .I2(pixel_cnt_reg[7]),
        .I3(pixel_cnt_reg[5]),
        .I4(pixel_cnt_reg[6]),
        .O(\n_0_line_cnt[9]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \line_cnt[9]_i_4 
       (.I0(line_cnt_reg__0[8]),
        .I1(line_cnt_reg__0[6]),
        .I2(line_cnt_reg__0[4]),
        .O(\n_0_line_cnt[9]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \line_cnt[9]_i_5 
       (.I0(line_cnt_reg__0[6]),
        .I1(line_cnt_reg__0[5]),
        .I2(line_cnt_reg__0[8]),
        .I3(line_cnt_reg__0[7]),
        .O(\n_0_line_cnt[9]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h7FFFFFFF)) 
     \line_cnt[9]_i_6 
       (.I0(line_cnt_reg__0[1]),
        .I1(line_cnt_reg__0[0]),
        .I2(line_cnt_reg__0[2]),
        .I3(line_cnt_reg__0[3]),
        .I4(line_cnt_reg__0[4]),
        .O(\n_0_line_cnt[9]_i_6 ));
FDCE \line_cnt_reg[0] 
       (.C(vga_pclk),
        .CE(\n_0_line_cnt[9]_i_1 ),
        .CLR(vga_rst),
        .D(\n_0_line_cnt[0]_i_1 ),
        .Q(line_cnt_reg__0[0]));
FDCE \line_cnt_reg[1] 
       (.C(vga_pclk),
        .CE(\n_0_line_cnt[9]_i_1 ),
        .CLR(vga_rst),
        .D(\n_0_line_cnt[1]_i_1 ),
        .Q(line_cnt_reg__0[1]));
FDCE \line_cnt_reg[2] 
       (.C(vga_pclk),
        .CE(\n_0_line_cnt[9]_i_1 ),
        .CLR(vga_rst),
        .D(\n_0_line_cnt[2]_i_1 ),
        .Q(line_cnt_reg__0[2]));
FDCE \line_cnt_reg[3] 
       (.C(vga_pclk),
        .CE(\n_0_line_cnt[9]_i_1 ),
        .CLR(vga_rst),
        .D(\n_0_line_cnt[3]_i_1 ),
        .Q(line_cnt_reg__0[3]));
FDCE \line_cnt_reg[4] 
       (.C(vga_pclk),
        .CE(\n_0_line_cnt[9]_i_1 ),
        .CLR(vga_rst),
        .D(\n_0_line_cnt[4]_i_1 ),
        .Q(line_cnt_reg__0[4]));
FDCE \line_cnt_reg[5] 
       (.C(vga_pclk),
        .CE(\n_0_line_cnt[9]_i_1 ),
        .CLR(vga_rst),
        .D(\n_0_line_cnt[5]_i_1 ),
        .Q(line_cnt_reg__0[5]));
FDCE \line_cnt_reg[6] 
       (.C(vga_pclk),
        .CE(\n_0_line_cnt[9]_i_1 ),
        .CLR(vga_rst),
        .D(\n_0_line_cnt[6]_i_1 ),
        .Q(line_cnt_reg__0[6]));
FDCE \line_cnt_reg[7] 
       (.C(vga_pclk),
        .CE(\n_0_line_cnt[9]_i_1 ),
        .CLR(vga_rst),
        .D(\n_0_line_cnt[7]_i_1 ),
        .Q(line_cnt_reg__0[7]));
FDCE \line_cnt_reg[8] 
       (.C(vga_pclk),
        .CE(\n_0_line_cnt[9]_i_1 ),
        .CLR(vga_rst),
        .D(\n_0_line_cnt[8]_i_1 ),
        .Q(line_cnt_reg__0[8]));
FDCE \line_cnt_reg[9] 
       (.C(vga_pclk),
        .CE(\n_0_line_cnt[9]_i_1 ),
        .CLR(vga_rst),
        .D(\n_0_line_cnt[9]_i_2 ),
        .Q(line_cnt_reg__0[9]));
LUT6 #(
    .INIT(64'h08AAAAAA08080808)) 
     \pixel_cnt[0]_i_2 
       (.I0(pixel_cnt_reg[0]),
        .I1(\n_0_line_cnt[9]_i_3 ),
        .I2(n_0_hsync_i_4),
        .I3(pixel_cnt_reg[8]),
        .I4(pixel_cnt_reg[9]),
        .I5(\n_0_pixel_cnt[0]_i_7 ),
        .O(\n_0_pixel_cnt[0]_i_2 ));
LUT6 #(
    .INIT(64'h08AAAAAA08080808)) 
     \pixel_cnt[0]_i_3 
       (.I0(pixel_cnt_reg[3]),
        .I1(\n_0_line_cnt[9]_i_3 ),
        .I2(n_0_hsync_i_4),
        .I3(pixel_cnt_reg[8]),
        .I4(pixel_cnt_reg[9]),
        .I5(\n_0_pixel_cnt[0]_i_7 ),
        .O(\n_0_pixel_cnt[0]_i_3 ));
LUT6 #(
    .INIT(64'h08AAAAAA08080808)) 
     \pixel_cnt[0]_i_4 
       (.I0(pixel_cnt_reg[2]),
        .I1(\n_0_line_cnt[9]_i_3 ),
        .I2(n_0_hsync_i_4),
        .I3(pixel_cnt_reg[8]),
        .I4(pixel_cnt_reg[9]),
        .I5(\n_0_pixel_cnt[0]_i_7 ),
        .O(\n_0_pixel_cnt[0]_i_4 ));
LUT6 #(
    .INIT(64'h08AAAAAA08080808)) 
     \pixel_cnt[0]_i_5 
       (.I0(pixel_cnt_reg[1]),
        .I1(\n_0_line_cnt[9]_i_3 ),
        .I2(n_0_hsync_i_4),
        .I3(pixel_cnt_reg[8]),
        .I4(pixel_cnt_reg[9]),
        .I5(\n_0_pixel_cnt[0]_i_7 ),
        .O(\n_0_pixel_cnt[0]_i_5 ));
LUT6 #(
    .INIT(64'h0455555504040404)) 
     \pixel_cnt[0]_i_6 
       (.I0(pixel_cnt_reg[0]),
        .I1(\n_0_line_cnt[9]_i_3 ),
        .I2(n_0_hsync_i_4),
        .I3(pixel_cnt_reg[8]),
        .I4(pixel_cnt_reg[9]),
        .I5(\n_0_pixel_cnt[0]_i_7 ),
        .O(\n_0_pixel_cnt[0]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \pixel_cnt[0]_i_7 
       (.I0(pixel_cnt_reg[10]),
        .I1(pixel_cnt_reg[11]),
        .O(\n_0_pixel_cnt[0]_i_7 ));
LUT6 #(
    .INIT(64'h08AAAAAA08080808)) 
     \pixel_cnt[4]_i_2 
       (.I0(pixel_cnt_reg[7]),
        .I1(\n_0_line_cnt[9]_i_3 ),
        .I2(n_0_hsync_i_4),
        .I3(pixel_cnt_reg[8]),
        .I4(pixel_cnt_reg[9]),
        .I5(\n_0_pixel_cnt[0]_i_7 ),
        .O(\n_0_pixel_cnt[4]_i_2 ));
LUT6 #(
    .INIT(64'h08AAAAAA08080808)) 
     \pixel_cnt[4]_i_3 
       (.I0(pixel_cnt_reg[6]),
        .I1(\n_0_line_cnt[9]_i_3 ),
        .I2(n_0_hsync_i_4),
        .I3(pixel_cnt_reg[8]),
        .I4(pixel_cnt_reg[9]),
        .I5(\n_0_pixel_cnt[0]_i_7 ),
        .O(\n_0_pixel_cnt[4]_i_3 ));
LUT6 #(
    .INIT(64'h08AAAAAA08080808)) 
     \pixel_cnt[4]_i_4 
       (.I0(pixel_cnt_reg[5]),
        .I1(\n_0_line_cnt[9]_i_3 ),
        .I2(n_0_hsync_i_4),
        .I3(pixel_cnt_reg[8]),
        .I4(pixel_cnt_reg[9]),
        .I5(\n_0_pixel_cnt[0]_i_7 ),
        .O(\n_0_pixel_cnt[4]_i_4 ));
LUT6 #(
    .INIT(64'h08AAAAAA08080808)) 
     \pixel_cnt[4]_i_5 
       (.I0(pixel_cnt_reg[4]),
        .I1(\n_0_line_cnt[9]_i_3 ),
        .I2(n_0_hsync_i_4),
        .I3(pixel_cnt_reg[8]),
        .I4(pixel_cnt_reg[9]),
        .I5(\n_0_pixel_cnt[0]_i_7 ),
        .O(\n_0_pixel_cnt[4]_i_5 ));
LUT6 #(
    .INIT(64'h2200220022002F00)) 
     \pixel_cnt[8]_i_2 
       (.I0(\n_0_line_cnt[9]_i_3 ),
        .I1(n_0_hsync_i_4),
        .I2(pixel_cnt_reg[8]),
        .I3(pixel_cnt_reg[9]),
        .I4(pixel_cnt_reg[11]),
        .I5(pixel_cnt_reg[10]),
        .O(\n_0_pixel_cnt[8]_i_2 ));
LUT6 #(
    .INIT(64'h20202020202020F0)) 
     \pixel_cnt[8]_i_3 
       (.I0(\n_0_line_cnt[9]_i_3 ),
        .I1(n_0_hsync_i_4),
        .I2(pixel_cnt_reg[8]),
        .I3(pixel_cnt_reg[9]),
        .I4(pixel_cnt_reg[11]),
        .I5(pixel_cnt_reg[10]),
        .O(\n_0_pixel_cnt[8]_i_3 ));
FDCE \pixel_cnt_reg[0] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_7_pixel_cnt_reg[0]_i_1 ),
        .Q(pixel_cnt_reg[0]));
CARRY4 \pixel_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_pixel_cnt_reg[0]_i_1 ,\n_1_pixel_cnt_reg[0]_i_1 ,\n_2_pixel_cnt_reg[0]_i_1 ,\n_3_pixel_cnt_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_pixel_cnt[0]_i_2 }),
        .O({\n_4_pixel_cnt_reg[0]_i_1 ,\n_5_pixel_cnt_reg[0]_i_1 ,\n_6_pixel_cnt_reg[0]_i_1 ,\n_7_pixel_cnt_reg[0]_i_1 }),
        .S({\n_0_pixel_cnt[0]_i_3 ,\n_0_pixel_cnt[0]_i_4 ,\n_0_pixel_cnt[0]_i_5 ,\n_0_pixel_cnt[0]_i_6 }));
FDCE \pixel_cnt_reg[10] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_5_pixel_cnt_reg[8]_i_1 ),
        .Q(pixel_cnt_reg[10]));
FDCE \pixel_cnt_reg[11] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_4_pixel_cnt_reg[8]_i_1 ),
        .Q(pixel_cnt_reg[11]));
FDCE \pixel_cnt_reg[1] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_6_pixel_cnt_reg[0]_i_1 ),
        .Q(pixel_cnt_reg[1]));
FDCE \pixel_cnt_reg[2] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_5_pixel_cnt_reg[0]_i_1 ),
        .Q(pixel_cnt_reg[2]));
FDCE \pixel_cnt_reg[3] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_4_pixel_cnt_reg[0]_i_1 ),
        .Q(pixel_cnt_reg[3]));
FDCE \pixel_cnt_reg[4] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_7_pixel_cnt_reg[4]_i_1 ),
        .Q(pixel_cnt_reg[4]));
CARRY4 \pixel_cnt_reg[4]_i_1 
       (.CI(\n_0_pixel_cnt_reg[0]_i_1 ),
        .CO({\n_0_pixel_cnt_reg[4]_i_1 ,\n_1_pixel_cnt_reg[4]_i_1 ,\n_2_pixel_cnt_reg[4]_i_1 ,\n_3_pixel_cnt_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_pixel_cnt_reg[4]_i_1 ,\n_5_pixel_cnt_reg[4]_i_1 ,\n_6_pixel_cnt_reg[4]_i_1 ,\n_7_pixel_cnt_reg[4]_i_1 }),
        .S({\n_0_pixel_cnt[4]_i_2 ,\n_0_pixel_cnt[4]_i_3 ,\n_0_pixel_cnt[4]_i_4 ,\n_0_pixel_cnt[4]_i_5 }));
FDCE \pixel_cnt_reg[5] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_6_pixel_cnt_reg[4]_i_1 ),
        .Q(pixel_cnt_reg[5]));
FDCE \pixel_cnt_reg[6] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_5_pixel_cnt_reg[4]_i_1 ),
        .Q(pixel_cnt_reg[6]));
FDCE \pixel_cnt_reg[7] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_4_pixel_cnt_reg[4]_i_1 ),
        .Q(pixel_cnt_reg[7]));
FDCE \pixel_cnt_reg[8] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_7_pixel_cnt_reg[8]_i_1 ),
        .Q(pixel_cnt_reg[8]));
CARRY4 \pixel_cnt_reg[8]_i_1 
       (.CI(\n_0_pixel_cnt_reg[4]_i_1 ),
        .CO({\NLW_pixel_cnt_reg[8]_i_1_CO_UNCONNECTED [3],\n_1_pixel_cnt_reg[8]_i_1 ,\n_2_pixel_cnt_reg[8]_i_1 ,\n_3_pixel_cnt_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_pixel_cnt_reg[8]_i_1 ,\n_5_pixel_cnt_reg[8]_i_1 ,\n_6_pixel_cnt_reg[8]_i_1 ,\n_7_pixel_cnt_reg[8]_i_1 }),
        .S({1'b0,1'b0,\n_0_pixel_cnt[8]_i_2 ,\n_0_pixel_cnt[8]_i_3 }));
FDCE \pixel_cnt_reg[9] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(\n_6_pixel_cnt_reg[8]_i_1 ),
        .Q(pixel_cnt_reg[9]));
LUT6 #(
    .INIT(64'h0000000A0000002A)) 
     \vga_h_cnt[0]_INST_0 
       (.I0(pixel_cnt_reg[0]),
        .I1(pixel_cnt_reg[8]),
        .I2(pixel_cnt_reg[9]),
        .I3(pixel_cnt_reg[11]),
        .I4(pixel_cnt_reg[10]),
        .I5(pixel_cnt_reg[7]),
        .O(vga_h_cnt[0]));
LUT6 #(
    .INIT(64'h0000000A0000002A)) 
     \vga_h_cnt[1]_INST_0 
       (.I0(pixel_cnt_reg[1]),
        .I1(pixel_cnt_reg[8]),
        .I2(pixel_cnt_reg[9]),
        .I3(pixel_cnt_reg[11]),
        .I4(pixel_cnt_reg[10]),
        .I5(pixel_cnt_reg[7]),
        .O(vga_h_cnt[1]));
LUT6 #(
    .INIT(64'h0000000A0000002A)) 
     \vga_h_cnt[2]_INST_0 
       (.I0(pixel_cnt_reg[2]),
        .I1(pixel_cnt_reg[8]),
        .I2(pixel_cnt_reg[9]),
        .I3(pixel_cnt_reg[11]),
        .I4(pixel_cnt_reg[10]),
        .I5(pixel_cnt_reg[7]),
        .O(vga_h_cnt[2]));
LUT6 #(
    .INIT(64'h0000000A0000002A)) 
     \vga_h_cnt[3]_INST_0 
       (.I0(pixel_cnt_reg[3]),
        .I1(pixel_cnt_reg[8]),
        .I2(pixel_cnt_reg[9]),
        .I3(pixel_cnt_reg[11]),
        .I4(pixel_cnt_reg[10]),
        .I5(pixel_cnt_reg[7]),
        .O(vga_h_cnt[3]));
LUT6 #(
    .INIT(64'h0000000A0000002A)) 
     \vga_h_cnt[4]_INST_0 
       (.I0(pixel_cnt_reg[4]),
        .I1(pixel_cnt_reg[8]),
        .I2(pixel_cnt_reg[9]),
        .I3(pixel_cnt_reg[11]),
        .I4(pixel_cnt_reg[10]),
        .I5(pixel_cnt_reg[7]),
        .O(vga_h_cnt[4]));
LUT6 #(
    .INIT(64'h0000000A0000002A)) 
     \vga_h_cnt[5]_INST_0 
       (.I0(pixel_cnt_reg[5]),
        .I1(pixel_cnt_reg[8]),
        .I2(pixel_cnt_reg[9]),
        .I3(pixel_cnt_reg[11]),
        .I4(pixel_cnt_reg[10]),
        .I5(pixel_cnt_reg[7]),
        .O(vga_h_cnt[5]));
LUT6 #(
    .INIT(64'h0000000A0000002A)) 
     \vga_h_cnt[6]_INST_0 
       (.I0(pixel_cnt_reg[6]),
        .I1(pixel_cnt_reg[8]),
        .I2(pixel_cnt_reg[9]),
        .I3(pixel_cnt_reg[11]),
        .I4(pixel_cnt_reg[10]),
        .I5(pixel_cnt_reg[7]),
        .O(vga_h_cnt[6]));
LUT4 #(
    .INIT(16'h0100)) 
     \vga_h_cnt[7]_INST_0 
       (.I0(pixel_cnt_reg[9]),
        .I1(pixel_cnt_reg[11]),
        .I2(pixel_cnt_reg[10]),
        .I3(pixel_cnt_reg[7]),
        .O(vga_h_cnt[7]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     \vga_h_cnt[8]_INST_0 
       (.I0(pixel_cnt_reg[8]),
        .I1(pixel_cnt_reg[9]),
        .I2(pixel_cnt_reg[11]),
        .I3(pixel_cnt_reg[10]),
        .O(vga_h_cnt[8]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00000004)) 
     \vga_h_cnt[9]_INST_0 
       (.I0(pixel_cnt_reg[8]),
        .I1(pixel_cnt_reg[9]),
        .I2(pixel_cnt_reg[11]),
        .I3(pixel_cnt_reg[10]),
        .I4(pixel_cnt_reg[7]),
        .O(vga_h_cnt[9]));
LUT6 #(
    .INIT(64'h0222222222222222)) 
     \vga_v_cnt[0]_INST_0 
       (.I0(line_cnt_reg__0[0]),
        .I1(line_cnt_reg__0[9]),
        .I2(line_cnt_reg__0[6]),
        .I3(line_cnt_reg__0[5]),
        .I4(line_cnt_reg__0[8]),
        .I5(line_cnt_reg__0[7]),
        .O(vga_v_cnt[0]));
LUT6 #(
    .INIT(64'h0222222222222222)) 
     \vga_v_cnt[1]_INST_0 
       (.I0(line_cnt_reg__0[1]),
        .I1(line_cnt_reg__0[9]),
        .I2(line_cnt_reg__0[6]),
        .I3(line_cnt_reg__0[5]),
        .I4(line_cnt_reg__0[8]),
        .I5(line_cnt_reg__0[7]),
        .O(vga_v_cnt[1]));
LUT6 #(
    .INIT(64'h0222222222222222)) 
     \vga_v_cnt[2]_INST_0 
       (.I0(line_cnt_reg__0[2]),
        .I1(line_cnt_reg__0[9]),
        .I2(line_cnt_reg__0[6]),
        .I3(line_cnt_reg__0[5]),
        .I4(line_cnt_reg__0[8]),
        .I5(line_cnt_reg__0[7]),
        .O(vga_v_cnt[2]));
LUT6 #(
    .INIT(64'h0222222222222222)) 
     \vga_v_cnt[3]_INST_0 
       (.I0(line_cnt_reg__0[3]),
        .I1(line_cnt_reg__0[9]),
        .I2(line_cnt_reg__0[6]),
        .I3(line_cnt_reg__0[5]),
        .I4(line_cnt_reg__0[8]),
        .I5(line_cnt_reg__0[7]),
        .O(vga_v_cnt[3]));
LUT6 #(
    .INIT(64'h0222222222222222)) 
     \vga_v_cnt[4]_INST_0 
       (.I0(line_cnt_reg__0[4]),
        .I1(line_cnt_reg__0[9]),
        .I2(line_cnt_reg__0[6]),
        .I3(line_cnt_reg__0[5]),
        .I4(line_cnt_reg__0[8]),
        .I5(line_cnt_reg__0[7]),
        .O(vga_v_cnt[4]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h10505050)) 
     \vga_v_cnt[5]_INST_0 
       (.I0(line_cnt_reg__0[9]),
        .I1(line_cnt_reg__0[6]),
        .I2(line_cnt_reg__0[5]),
        .I3(line_cnt_reg__0[8]),
        .I4(line_cnt_reg__0[7]),
        .O(vga_v_cnt[5]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h04444444)) 
     \vga_v_cnt[6]_INST_0 
       (.I0(line_cnt_reg__0[9]),
        .I1(line_cnt_reg__0[6]),
        .I2(line_cnt_reg__0[5]),
        .I3(line_cnt_reg__0[8]),
        .I4(line_cnt_reg__0[7]),
        .O(vga_v_cnt[6]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h15550000)) 
     \vga_v_cnt[7]_INST_0 
       (.I0(line_cnt_reg__0[9]),
        .I1(line_cnt_reg__0[6]),
        .I2(line_cnt_reg__0[5]),
        .I3(line_cnt_reg__0[8]),
        .I4(line_cnt_reg__0[7]),
        .O(vga_v_cnt[7]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h15005500)) 
     \vga_v_cnt[8]_INST_0 
       (.I0(line_cnt_reg__0[9]),
        .I1(line_cnt_reg__0[6]),
        .I2(line_cnt_reg__0[5]),
        .I3(line_cnt_reg__0[8]),
        .I4(line_cnt_reg__0[7]),
        .O(vga_v_cnt[8]));
LUT6 #(
    .INIT(64'h0000000015555555)) 
     vga_valid_INST_0
       (.I0(line_cnt_reg__0[9]),
        .I1(line_cnt_reg__0[6]),
        .I2(line_cnt_reg__0[5]),
        .I3(line_cnt_reg__0[8]),
        .I4(line_cnt_reg__0[7]),
        .I5(n_0_vga_valid_INST_0_i_1),
        .O(vga_valid));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFFFCFEFC)) 
     vga_valid_INST_0_i_1
       (.I0(pixel_cnt_reg[7]),
        .I1(pixel_cnt_reg[10]),
        .I2(pixel_cnt_reg[11]),
        .I3(pixel_cnt_reg[9]),
        .I4(pixel_cnt_reg[8]),
        .O(n_0_vga_valid_INST_0_i_1));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     vsync_i_1
       (.I0(line_cnt_reg__0[8]),
        .I1(line_cnt_reg__0[6]),
        .I2(line_cnt_reg__0[4]),
        .I3(n_0_vsync_i_2),
        .I4(n_0_vsync_i_3),
        .O(n_0_vsync_i_1));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'hFFF8)) 
     vsync_i_2
       (.I0(line_cnt_reg__0[3]),
        .I1(line_cnt_reg__0[2]),
        .I2(line_cnt_reg__0[7]),
        .I3(line_cnt_reg__0[5]),
        .O(n_0_vsync_i_2));
LUT3 #(
    .INIT(8'h8F)) 
     vsync_i_3
       (.I0(line_cnt_reg__0[3]),
        .I1(line_cnt_reg__0[1]),
        .I2(line_cnt_reg__0[9]),
        .O(n_0_vsync_i_3));
FDPE vsync_reg
       (.C(vga_pclk),
        .CE(1'b1),
        .D(n_0_vsync_i_1),
        .PRE(vga_rst),
        .Q(vga_vsync));
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
