// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Sep 20 12:01:33 2016
// Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/zhehengt/Desktop/Digital_Design_Lab/Chapter_12/Digital_camera/digital_camera.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_funcsim.v
// Design      : cam_ov7670_ov7725_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "cam_ov7670_ov7725,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "cam_ov7670_ov7725_0,cam_ov7670_ov7725,{}" *) (* CORE_GENERATION_INFO = "cam_ov7670_ov7725_0,cam_ov7670_ov7725,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=cam_ov7670_ov7725,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module cam_ov7670_ov7725_0
   (pclk,
    vsync,
    href,
    d,
    H_cnt,
    V_cnt,
    addr,
    dout,
    we,
    wclk);
  input pclk;
  input vsync;
  input href;
  input [7:0]d;
  output [11:0]H_cnt;
  output [10:0]V_cnt;
  output [16:0]addr;
  output [15:0]dout;
  output we;
  output wclk;

  wire \<const0> ;
  wire [8:0]\^H_cnt ;
  wire [16:0]addr;
  wire [7:0]d;
  wire [15:0]dout;
  wire href;
  wire pclk;
  wire vsync;
  wire we;

  assign H_cnt[11] = \<const0> ;
  assign H_cnt[10] = \<const0> ;
  assign H_cnt[9] = \<const0> ;
  assign H_cnt[8:0] = \^H_cnt [8:0];
  assign V_cnt[10] = \<const0> ;
  assign V_cnt[9] = \<const0> ;
  assign V_cnt[8] = \<const0> ;
  assign V_cnt[7] = \<const0> ;
  assign V_cnt[6] = \<const0> ;
  assign V_cnt[5] = \<const0> ;
  assign V_cnt[4] = \<const0> ;
  assign V_cnt[3] = \<const0> ;
  assign V_cnt[2] = \<const0> ;
  assign V_cnt[1] = \<const0> ;
  assign V_cnt[0] = \<const0> ;
  assign wclk = pclk;
GND GND
       (.G(\<const0> ));
cam_ov7670_ov7725_0_cam_ov7670_ov7725 inst
       (.H_cnt(\^H_cnt ),
        .Q(addr),
        .d(d),
        .dout(dout),
        .href(href),
        .pclk(pclk),
        .vsync(vsync),
        .we(we));
endmodule

(* ORIG_REF_NAME = "cam_ov7670_ov7725" *) 
module cam_ov7670_ov7725_0_cam_ov7670_ov7725
   (Q,
    dout,
    we,
    H_cnt,
    vsync,
    pclk,
    d,
    href);
  output [16:0]Q;
  output [15:0]dout;
  output we;
  output [8:0]H_cnt;
  input vsync;
  input pclk;
  input [7:0]d;
  input href;

  wire [8:0]H_cnt;
  wire [16:0]Q;
  wire [16:0]address_next_reg;
  wire [7:0]d;
  wire [15:0]d_latch;
  wire [15:0]dout;
  wire href;
  wire \n_0_address[10]_i_1 ;
  wire \n_0_address[11]_i_1 ;
  wire \n_0_address[13]_i_1 ;
  wire \n_0_address[15]_i_1 ;
  wire \n_0_address[16]_i_1 ;
  wire \n_0_address[16]_i_2 ;
  wire \n_0_address_next[0]_i_2 ;
  wire \n_0_address_next[0]_i_3 ;
  wire \n_0_address_next[0]_i_4 ;
  wire \n_0_address_next[0]_i_5 ;
  wire \n_0_address_next[12]_i_2 ;
  wire \n_0_address_next[12]_i_3 ;
  wire \n_0_address_next[12]_i_4 ;
  wire \n_0_address_next[12]_i_5 ;
  wire \n_0_address_next[16]_i_2 ;
  wire \n_0_address_next[4]_i_2 ;
  wire \n_0_address_next[4]_i_3 ;
  wire \n_0_address_next[4]_i_4 ;
  wire \n_0_address_next[4]_i_5 ;
  wire \n_0_address_next[8]_i_2 ;
  wire \n_0_address_next[8]_i_3 ;
  wire \n_0_address_next[8]_i_4 ;
  wire \n_0_address_next[8]_i_5 ;
  wire \n_0_address_next_reg[0]_i_1 ;
  wire \n_0_address_next_reg[12]_i_1 ;
  wire \n_0_address_next_reg[4]_i_1 ;
  wire \n_0_address_next_reg[8]_i_1 ;
  wire \n_0_dout[15]_i_1 ;
  wire \n_0_hcnt[9]_i_2 ;
  wire \n_0_hcnt_reg[0] ;
  wire \n_0_hcnt_reg[1] ;
  wire \n_0_hcnt_reg[2] ;
  wire \n_0_hcnt_reg[3] ;
  wire \n_0_hcnt_reg[4] ;
  wire \n_0_hcnt_reg[5] ;
  wire \n_0_hcnt_reg[6] ;
  wire \n_0_hcnt_reg[7] ;
  wire \n_0_hcnt_reg[8] ;
  wire \n_0_hcnt_reg[9] ;
  wire n_0_we_i_1;
  wire \n_0_wr_hold_reg[0] ;
  wire \n_1_address_next_reg[0]_i_1 ;
  wire \n_1_address_next_reg[12]_i_1 ;
  wire \n_1_address_next_reg[4]_i_1 ;
  wire \n_1_address_next_reg[8]_i_1 ;
  wire \n_2_address_next_reg[0]_i_1 ;
  wire \n_2_address_next_reg[12]_i_1 ;
  wire \n_2_address_next_reg[4]_i_1 ;
  wire \n_2_address_next_reg[8]_i_1 ;
  wire \n_3_address_next_reg[0]_i_1 ;
  wire \n_3_address_next_reg[12]_i_1 ;
  wire \n_3_address_next_reg[4]_i_1 ;
  wire \n_3_address_next_reg[8]_i_1 ;
  wire \n_4_address_next_reg[0]_i_1 ;
  wire \n_4_address_next_reg[12]_i_1 ;
  wire \n_4_address_next_reg[4]_i_1 ;
  wire \n_4_address_next_reg[8]_i_1 ;
  wire \n_5_address_next_reg[0]_i_1 ;
  wire \n_5_address_next_reg[12]_i_1 ;
  wire \n_5_address_next_reg[4]_i_1 ;
  wire \n_5_address_next_reg[8]_i_1 ;
  wire \n_6_address_next_reg[0]_i_1 ;
  wire \n_6_address_next_reg[12]_i_1 ;
  wire \n_6_address_next_reg[4]_i_1 ;
  wire \n_6_address_next_reg[8]_i_1 ;
  wire \n_7_address_next_reg[0]_i_1 ;
  wire \n_7_address_next_reg[12]_i_1 ;
  wire \n_7_address_next_reg[16]_i_1 ;
  wire \n_7_address_next_reg[4]_i_1 ;
  wire \n_7_address_next_reg[8]_i_1 ;
  wire [9:0]p_0_in;
  wire p_0_in_0;
  wire [0:0]p_0_out;
  wire pclk;
  wire vsync;
  wire we;
  wire [3:0]\NLW_address_next_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_address_next_reg[16]_i_1_O_UNCONNECTED ;

(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h02AA)) 
     \H_cnt[0]_INST_0 
       (.I0(\n_0_hcnt_reg[1] ),
        .I1(\n_0_hcnt_reg[7] ),
        .I2(\n_0_hcnt_reg[8] ),
        .I3(\n_0_hcnt_reg[9] ),
        .O(H_cnt[0]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h02AA)) 
     \H_cnt[1]_INST_0 
       (.I0(\n_0_hcnt_reg[2] ),
        .I1(\n_0_hcnt_reg[7] ),
        .I2(\n_0_hcnt_reg[8] ),
        .I3(\n_0_hcnt_reg[9] ),
        .O(H_cnt[1]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h02AA)) 
     \H_cnt[2]_INST_0 
       (.I0(\n_0_hcnt_reg[3] ),
        .I1(\n_0_hcnt_reg[7] ),
        .I2(\n_0_hcnt_reg[8] ),
        .I3(\n_0_hcnt_reg[9] ),
        .O(H_cnt[2]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h02AA)) 
     \H_cnt[3]_INST_0 
       (.I0(\n_0_hcnt_reg[4] ),
        .I1(\n_0_hcnt_reg[7] ),
        .I2(\n_0_hcnt_reg[8] ),
        .I3(\n_0_hcnt_reg[9] ),
        .O(H_cnt[3]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h02AA)) 
     \H_cnt[4]_INST_0 
       (.I0(\n_0_hcnt_reg[5] ),
        .I1(\n_0_hcnt_reg[7] ),
        .I2(\n_0_hcnt_reg[8] ),
        .I3(\n_0_hcnt_reg[9] ),
        .O(H_cnt[4]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h02AA)) 
     \H_cnt[5]_INST_0 
       (.I0(\n_0_hcnt_reg[6] ),
        .I1(\n_0_hcnt_reg[7] ),
        .I2(\n_0_hcnt_reg[8] ),
        .I3(\n_0_hcnt_reg[9] ),
        .O(H_cnt[5]));
LUT2 #(
    .INIT(4'h2)) 
     \H_cnt[6]_INST_0 
       (.I0(\n_0_hcnt_reg[7] ),
        .I1(\n_0_hcnt_reg[9] ),
        .O(H_cnt[6]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \H_cnt[7]_INST_0 
       (.I0(\n_0_hcnt_reg[8] ),
        .I1(\n_0_hcnt_reg[9] ),
        .O(H_cnt[7]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \H_cnt[8]_INST_0 
       (.I0(\n_0_hcnt_reg[9] ),
        .I1(\n_0_hcnt_reg[8] ),
        .I2(\n_0_hcnt_reg[7] ),
        .O(H_cnt[8]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \address[10]_i_1 
       (.I0(address_next_reg[10]),
        .I1(\n_0_address[16]_i_2 ),
        .I2(Q[16]),
        .O(\n_0_address[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \address[11]_i_1 
       (.I0(address_next_reg[11]),
        .I1(\n_0_address[16]_i_2 ),
        .I2(Q[16]),
        .O(\n_0_address[11]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \address[13]_i_1 
       (.I0(address_next_reg[13]),
        .I1(\n_0_address[16]_i_2 ),
        .I2(Q[16]),
        .O(\n_0_address[13]_i_1 ));
LUT3 #(
    .INIT(8'hBA)) 
     \address[15]_i_1 
       (.I0(vsync),
        .I1(\n_0_address[16]_i_2 ),
        .I2(Q[16]),
        .O(\n_0_address[15]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \address[16]_i_1 
       (.I0(address_next_reg[16]),
        .I1(\n_0_address[16]_i_2 ),
        .I2(Q[16]),
        .O(\n_0_address[16]_i_1 ));
LUT6 #(
    .INIT(64'h0000011111111111)) 
     \address[16]_i_2 
       (.I0(Q[15]),
        .I1(Q[14]),
        .I2(Q[10]),
        .I3(Q[11]),
        .I4(Q[12]),
        .I5(Q[13]),
        .O(\n_0_address[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[0]_i_2 
       (.I0(address_next_reg[3]),
        .O(\n_0_address_next[0]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[0]_i_3 
       (.I0(address_next_reg[2]),
        .O(\n_0_address_next[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[0]_i_4 
       (.I0(address_next_reg[1]),
        .O(\n_0_address_next[0]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \address_next[0]_i_5 
       (.I0(address_next_reg[0]),
        .O(\n_0_address_next[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[12]_i_2 
       (.I0(address_next_reg[15]),
        .O(\n_0_address_next[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[12]_i_3 
       (.I0(address_next_reg[14]),
        .O(\n_0_address_next[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[12]_i_4 
       (.I0(address_next_reg[13]),
        .O(\n_0_address_next[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[12]_i_5 
       (.I0(address_next_reg[12]),
        .O(\n_0_address_next[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[16]_i_2 
       (.I0(address_next_reg[16]),
        .O(\n_0_address_next[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[4]_i_2 
       (.I0(address_next_reg[7]),
        .O(\n_0_address_next[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[4]_i_3 
       (.I0(address_next_reg[6]),
        .O(\n_0_address_next[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[4]_i_4 
       (.I0(address_next_reg[5]),
        .O(\n_0_address_next[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[4]_i_5 
       (.I0(address_next_reg[4]),
        .O(\n_0_address_next[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[8]_i_2 
       (.I0(address_next_reg[11]),
        .O(\n_0_address_next[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[8]_i_3 
       (.I0(address_next_reg[10]),
        .O(\n_0_address_next[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[8]_i_4 
       (.I0(address_next_reg[9]),
        .O(\n_0_address_next[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \address_next[8]_i_5 
       (.I0(address_next_reg[8]),
        .O(\n_0_address_next[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[0] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_7_address_next_reg[0]_i_1 ),
        .Q(address_next_reg[0]),
        .R(vsync));
CARRY4 \address_next_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_address_next_reg[0]_i_1 ,\n_1_address_next_reg[0]_i_1 ,\n_2_address_next_reg[0]_i_1 ,\n_3_address_next_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_address_next_reg[0]_i_1 ,\n_5_address_next_reg[0]_i_1 ,\n_6_address_next_reg[0]_i_1 ,\n_7_address_next_reg[0]_i_1 }),
        .S({\n_0_address_next[0]_i_2 ,\n_0_address_next[0]_i_3 ,\n_0_address_next[0]_i_4 ,\n_0_address_next[0]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[10] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_5_address_next_reg[8]_i_1 ),
        .Q(address_next_reg[10]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[11] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_4_address_next_reg[8]_i_1 ),
        .Q(address_next_reg[11]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[12] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_7_address_next_reg[12]_i_1 ),
        .Q(address_next_reg[12]),
        .R(vsync));
CARRY4 \address_next_reg[12]_i_1 
       (.CI(\n_0_address_next_reg[8]_i_1 ),
        .CO({\n_0_address_next_reg[12]_i_1 ,\n_1_address_next_reg[12]_i_1 ,\n_2_address_next_reg[12]_i_1 ,\n_3_address_next_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_address_next_reg[12]_i_1 ,\n_5_address_next_reg[12]_i_1 ,\n_6_address_next_reg[12]_i_1 ,\n_7_address_next_reg[12]_i_1 }),
        .S({\n_0_address_next[12]_i_2 ,\n_0_address_next[12]_i_3 ,\n_0_address_next[12]_i_4 ,\n_0_address_next[12]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[13] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_6_address_next_reg[12]_i_1 ),
        .Q(address_next_reg[13]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[14] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_5_address_next_reg[12]_i_1 ),
        .Q(address_next_reg[14]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[15] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_4_address_next_reg[12]_i_1 ),
        .Q(address_next_reg[15]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[16] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_7_address_next_reg[16]_i_1 ),
        .Q(address_next_reg[16]),
        .R(vsync));
CARRY4 \address_next_reg[16]_i_1 
       (.CI(\n_0_address_next_reg[12]_i_1 ),
        .CO(\NLW_address_next_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_next_reg[16]_i_1_O_UNCONNECTED [3:1],\n_7_address_next_reg[16]_i_1 }),
        .S({1'b0,1'b0,1'b0,\n_0_address_next[16]_i_2 }));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[1] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_6_address_next_reg[0]_i_1 ),
        .Q(address_next_reg[1]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[2] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_5_address_next_reg[0]_i_1 ),
        .Q(address_next_reg[2]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[3] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_4_address_next_reg[0]_i_1 ),
        .Q(address_next_reg[3]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[4] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_7_address_next_reg[4]_i_1 ),
        .Q(address_next_reg[4]),
        .R(vsync));
CARRY4 \address_next_reg[4]_i_1 
       (.CI(\n_0_address_next_reg[0]_i_1 ),
        .CO({\n_0_address_next_reg[4]_i_1 ,\n_1_address_next_reg[4]_i_1 ,\n_2_address_next_reg[4]_i_1 ,\n_3_address_next_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_address_next_reg[4]_i_1 ,\n_5_address_next_reg[4]_i_1 ,\n_6_address_next_reg[4]_i_1 ,\n_7_address_next_reg[4]_i_1 }),
        .S({\n_0_address_next[4]_i_2 ,\n_0_address_next[4]_i_3 ,\n_0_address_next[4]_i_4 ,\n_0_address_next[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[5] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_6_address_next_reg[4]_i_1 ),
        .Q(address_next_reg[5]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[6] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_5_address_next_reg[4]_i_1 ),
        .Q(address_next_reg[6]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[7] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_4_address_next_reg[4]_i_1 ),
        .Q(address_next_reg[7]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[8] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_7_address_next_reg[8]_i_1 ),
        .Q(address_next_reg[8]),
        .R(vsync));
CARRY4 \address_next_reg[8]_i_1 
       (.CI(\n_0_address_next_reg[4]_i_1 ),
        .CO({\n_0_address_next_reg[8]_i_1 ,\n_1_address_next_reg[8]_i_1 ,\n_2_address_next_reg[8]_i_1 ,\n_3_address_next_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_address_next_reg[8]_i_1 ,\n_5_address_next_reg[8]_i_1 ,\n_6_address_next_reg[8]_i_1 ,\n_7_address_next_reg[8]_i_1 }),
        .S({\n_0_address_next[8]_i_2 ,\n_0_address_next[8]_i_3 ,\n_0_address_next[8]_i_4 ,\n_0_address_next[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \address_next_reg[9] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\n_6_address_next_reg[8]_i_1 ),
        .Q(address_next_reg[9]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[0]),
        .Q(Q[0]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .D(\n_0_address[10]_i_1 ),
        .Q(Q[10]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .D(\n_0_address[11]_i_1 ),
        .Q(Q[11]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[12]),
        .Q(Q[12]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .D(\n_0_address[13]_i_1 ),
        .Q(Q[13]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[14]),
        .Q(Q[14]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[15]),
        .Q(Q[15]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .D(\n_0_address[16]_i_1 ),
        .Q(Q[16]),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[1]),
        .Q(Q[1]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[2]),
        .Q(Q[2]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[3]),
        .Q(Q[3]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[4]),
        .Q(Q[4]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[5]),
        .Q(Q[5]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[6]),
        .Q(Q[6]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[7]),
        .Q(Q[7]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[8]),
        .Q(Q[8]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \address_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[9]),
        .Q(Q[9]),
        .R(\n_0_address[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[0] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d[0]),
        .Q(d_latch[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[10] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d_latch[2]),
        .Q(d_latch[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[11] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d_latch[3]),
        .Q(d_latch[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[12] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d_latch[4]),
        .Q(d_latch[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[13] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d_latch[5]),
        .Q(d_latch[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[14] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d_latch[6]),
        .Q(d_latch[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[15] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d_latch[7]),
        .Q(d_latch[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[1] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d[1]),
        .Q(d_latch[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[2] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d[2]),
        .Q(d_latch[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[3] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d[3]),
        .Q(d_latch[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[4] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d[4]),
        .Q(d_latch[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[5] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d[5]),
        .Q(d_latch[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[6] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d[6]),
        .Q(d_latch[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[7] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d[7]),
        .Q(d_latch[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[8] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d_latch[0]),
        .Q(d_latch[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \d_latch_reg[9] 
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(d_latch[1]),
        .Q(d_latch[9]),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     \dout[15]_i_1 
       (.I0(p_0_in_0),
        .I1(vsync),
        .O(\n_0_dout[15]_i_1 ));
FDRE \dout_reg[0] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[0]),
        .Q(dout[0]),
        .R(1'b0));
FDRE \dout_reg[10] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[10]),
        .Q(dout[10]),
        .R(1'b0));
FDRE \dout_reg[11] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[11]),
        .Q(dout[11]),
        .R(1'b0));
FDRE \dout_reg[12] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[12]),
        .Q(dout[12]),
        .R(1'b0));
FDRE \dout_reg[13] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[13]),
        .Q(dout[13]),
        .R(1'b0));
FDRE \dout_reg[14] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[14]),
        .Q(dout[14]),
        .R(1'b0));
FDRE \dout_reg[15] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[15]),
        .Q(dout[15]),
        .R(1'b0));
FDRE \dout_reg[1] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[1]),
        .Q(dout[1]),
        .R(1'b0));
FDRE \dout_reg[2] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[2]),
        .Q(dout[2]),
        .R(1'b0));
FDRE \dout_reg[3] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[3]),
        .Q(dout[3]),
        .R(1'b0));
FDRE \dout_reg[4] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[4]),
        .Q(dout[4]),
        .R(1'b0));
FDRE \dout_reg[5] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[5]),
        .Q(dout[5]),
        .R(1'b0));
FDRE \dout_reg[6] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[6]),
        .Q(dout[6]),
        .R(1'b0));
FDRE \dout_reg[7] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[7]),
        .Q(dout[7]),
        .R(1'b0));
FDRE \dout_reg[8] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[8]),
        .Q(dout[8]),
        .R(1'b0));
FDRE \dout_reg[9] 
       (.C(pclk),
        .CE(\n_0_dout[15]_i_1 ),
        .D(d_latch[9]),
        .Q(dout[9]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \hcnt[0]_i_1 
       (.I0(\n_0_hcnt_reg[0] ),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \hcnt[1]_i_1 
       (.I0(\n_0_hcnt_reg[0] ),
        .I1(\n_0_hcnt_reg[1] ),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \hcnt[2]_i_1 
       (.I0(\n_0_hcnt_reg[2] ),
        .I1(\n_0_hcnt_reg[0] ),
        .I2(\n_0_hcnt_reg[1] ),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \hcnt[3]_i_1 
       (.I0(\n_0_hcnt_reg[3] ),
        .I1(\n_0_hcnt_reg[1] ),
        .I2(\n_0_hcnt_reg[0] ),
        .I3(\n_0_hcnt_reg[2] ),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \hcnt[4]_i_1 
       (.I0(\n_0_hcnt_reg[2] ),
        .I1(\n_0_hcnt_reg[0] ),
        .I2(\n_0_hcnt_reg[1] ),
        .I3(\n_0_hcnt_reg[3] ),
        .I4(\n_0_hcnt_reg[4] ),
        .O(p_0_in[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \hcnt[5]_i_1 
       (.I0(\n_0_hcnt_reg[5] ),
        .I1(\n_0_hcnt_reg[2] ),
        .I2(\n_0_hcnt_reg[0] ),
        .I3(\n_0_hcnt_reg[1] ),
        .I4(\n_0_hcnt_reg[3] ),
        .I5(\n_0_hcnt_reg[4] ),
        .O(p_0_in[5]));
LUT3 #(
    .INIT(8'h6A)) 
     \hcnt[6]_i_1 
       (.I0(\n_0_hcnt_reg[6] ),
        .I1(\n_0_hcnt[9]_i_2 ),
        .I2(\n_0_hcnt_reg[5] ),
        .O(p_0_in[6]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \hcnt[7]_i_1 
       (.I0(\n_0_hcnt_reg[7] ),
        .I1(\n_0_hcnt_reg[5] ),
        .I2(\n_0_hcnt[9]_i_2 ),
        .I3(\n_0_hcnt_reg[6] ),
        .O(p_0_in[7]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \hcnt[8]_i_1 
       (.I0(\n_0_hcnt_reg[8] ),
        .I1(\n_0_hcnt_reg[6] ),
        .I2(\n_0_hcnt[9]_i_2 ),
        .I3(\n_0_hcnt_reg[5] ),
        .I4(\n_0_hcnt_reg[7] ),
        .O(p_0_in[8]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \hcnt[9]_i_1 
       (.I0(\n_0_hcnt_reg[9] ),
        .I1(\n_0_hcnt_reg[7] ),
        .I2(\n_0_hcnt_reg[5] ),
        .I3(\n_0_hcnt[9]_i_2 ),
        .I4(\n_0_hcnt_reg[6] ),
        .I5(\n_0_hcnt_reg[8] ),
        .O(p_0_in[9]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \hcnt[9]_i_2 
       (.I0(\n_0_hcnt_reg[4] ),
        .I1(\n_0_hcnt_reg[3] ),
        .I2(\n_0_hcnt_reg[1] ),
        .I3(\n_0_hcnt_reg[0] ),
        .I4(\n_0_hcnt_reg[2] ),
        .O(\n_0_hcnt[9]_i_2 ));
FDRE \hcnt_reg[0] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[0]),
        .Q(\n_0_hcnt_reg[0] ),
        .R(vsync));
FDRE \hcnt_reg[1] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[1]),
        .Q(\n_0_hcnt_reg[1] ),
        .R(vsync));
FDRE \hcnt_reg[2] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[2]),
        .Q(\n_0_hcnt_reg[2] ),
        .R(vsync));
FDRE \hcnt_reg[3] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[3]),
        .Q(\n_0_hcnt_reg[3] ),
        .R(vsync));
FDRE \hcnt_reg[4] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[4]),
        .Q(\n_0_hcnt_reg[4] ),
        .R(vsync));
FDRE \hcnt_reg[5] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[5]),
        .Q(\n_0_hcnt_reg[5] ),
        .R(vsync));
FDRE \hcnt_reg[6] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[6]),
        .Q(\n_0_hcnt_reg[6] ),
        .R(vsync));
FDRE \hcnt_reg[7] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[7]),
        .Q(\n_0_hcnt_reg[7] ),
        .R(vsync));
FDRE \hcnt_reg[8] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[8]),
        .Q(\n_0_hcnt_reg[8] ),
        .R(vsync));
FDRE \hcnt_reg[9] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[9]),
        .Q(\n_0_hcnt_reg[9] ),
        .R(vsync));
LUT1 #(
    .INIT(2'h1)) 
     we_i_1
       (.I0(vsync),
        .O(n_0_we_i_1));
FDRE we_reg
       (.C(pclk),
        .CE(n_0_we_i_1),
        .D(p_0_in_0),
        .Q(we),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     \wr_hold[0]_i_1 
       (.I0(href),
        .I1(\n_0_wr_hold_reg[0] ),
        .O(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \wr_hold_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(\n_0_wr_hold_reg[0] ),
        .R(vsync));
FDRE #(
    .INIT(1'b0)) 
     \wr_hold_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(\n_0_wr_hold_reg[0] ),
        .Q(p_0_in_0),
        .R(vsync));
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
