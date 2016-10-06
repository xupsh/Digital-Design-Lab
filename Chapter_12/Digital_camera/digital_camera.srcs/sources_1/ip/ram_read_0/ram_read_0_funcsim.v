// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Sep 20 12:02:22 2016
// Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/zhehengt/Desktop/Digital_Design_Lab/Chapter_12/Digital_camera/digital_camera.srcs/sources_1/ip/ram_read_0/ram_read_0_funcsim.v
// Design      : ram_read_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "ram_read,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "ram_read_0,ram_read,{}" *) (* CORE_GENERATION_INFO = "ram_read_0,ram_read,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=ram_read,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SHOW_H_START=160,SHOW_V_START=120,SHOW_WIDTH=320,SHOW_HEIGHT=240}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module ram_read_0
   (clk,
    valid,
    din,
    address,
    vga_h_cnt,
    vga_v_cnt,
    vga_red,
    vga_green,
    vga_blue);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) input clk;
  input valid;
  input [15:0]din;
  output [16:0]address;
  input [11:0]vga_h_cnt;
  input [10:0]vga_v_cnt;
  output [3:0]vga_red;
  output [3:0]vga_green;
  output [3:0]vga_blue;

  wire [16:0]address;
  wire clk;
  wire [15:0]din;
  wire \n_0_vga_red[3]_INST_0_i_3 ;
  wire n_17_inst;
  wire n_18_inst;
  wire valid;
  wire [3:0]vga_blue;
  wire [3:0]vga_green;
  wire [11:0]vga_h_cnt;
  wire [3:0]vga_red;
  wire [10:0]vga_v_cnt;

ram_read_0_ram_read inst
       (.O1(n_17_inst),
        .O2(n_18_inst),
        .address(address),
        .clk(clk),
        .vga_h_cnt(vga_h_cnt[11:5]),
        .vga_v_cnt(vga_v_cnt[10:3]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_blue[0]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[1]),
        .O(vga_blue[0]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_blue[1]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[2]),
        .O(vga_blue[1]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_blue[2]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[3]),
        .O(vga_blue[2]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_blue[3]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[4]),
        .O(vga_blue[3]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_green[0]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[7]),
        .O(vga_green[0]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_green[1]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[8]),
        .O(vga_green[1]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_green[2]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[9]),
        .O(vga_green[2]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_green[3]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[10]),
        .O(vga_green[3]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_red[0]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[12]),
        .O(vga_red[0]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_red[1]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[13]),
        .O(vga_red[1]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_red[2]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[14]),
        .O(vga_red[2]));
LUT5 #(
    .INIT(32'h80000000)) 
     \vga_red[3]_INST_0 
       (.I0(valid),
        .I1(n_17_inst),
        .I2(n_18_inst),
        .I3(\n_0_vga_red[3]_INST_0_i_3 ),
        .I4(din[15]),
        .O(vga_red[3]));
LUT4 #(
    .INIT(16'h7AEA)) 
     \vga_red[3]_INST_0_i_3 
       (.I0(vga_h_cnt[8]),
        .I1(vga_h_cnt[6]),
        .I2(vga_h_cnt[7]),
        .I3(vga_h_cnt[5]),
        .O(\n_0_vga_red[3]_INST_0_i_3 ));
endmodule

(* ORIG_REF_NAME = "ram_read" *) 
module ram_read_0_ram_read
   (address,
    O1,
    O2,
    clk,
    vga_h_cnt,
    vga_v_cnt);
  output [16:0]address;
  output O1;
  output O2;
  input clk;
  input [6:0]vga_h_cnt;
  input [7:0]vga_v_cnt;

  wire O1;
  wire O2;
  wire [16:0]address;
  wire address0;
  wire clk;
  wire \n_0_address[11]_i_2 ;
  wire \n_0_address[11]_i_3 ;
  wire \n_0_address[11]_i_4 ;
  wire \n_0_address[11]_i_5 ;
  wire \n_0_address[15]_i_2 ;
  wire \n_0_address[15]_i_3 ;
  wire \n_0_address[15]_i_4 ;
  wire \n_0_address[15]_i_5 ;
  wire \n_0_address[16]_i_1 ;
  wire \n_0_address[16]_i_4 ;
  wire \n_0_address[16]_i_5 ;
  wire \n_0_address[3]_i_2 ;
  wire \n_0_address[3]_i_3 ;
  wire \n_0_address[3]_i_4 ;
  wire \n_0_address[3]_i_5 ;
  wire \n_0_address[7]_i_2 ;
  wire \n_0_address[7]_i_3 ;
  wire \n_0_address[7]_i_4 ;
  wire \n_0_address[7]_i_5 ;
  wire \n_0_address_reg[11]_i_1 ;
  wire \n_0_address_reg[15]_i_1 ;
  wire \n_0_address_reg[3]_i_1 ;
  wire \n_0_address_reg[7]_i_1 ;
  wire \n_1_address_reg[11]_i_1 ;
  wire \n_1_address_reg[15]_i_1 ;
  wire \n_1_address_reg[3]_i_1 ;
  wire \n_1_address_reg[7]_i_1 ;
  wire \n_2_address_reg[11]_i_1 ;
  wire \n_2_address_reg[15]_i_1 ;
  wire \n_2_address_reg[3]_i_1 ;
  wire \n_2_address_reg[7]_i_1 ;
  wire \n_3_address_reg[11]_i_1 ;
  wire \n_3_address_reg[15]_i_1 ;
  wire \n_3_address_reg[3]_i_1 ;
  wire \n_3_address_reg[7]_i_1 ;
  wire \n_4_address_reg[11]_i_1 ;
  wire \n_4_address_reg[15]_i_1 ;
  wire \n_4_address_reg[3]_i_1 ;
  wire \n_4_address_reg[7]_i_1 ;
  wire \n_5_address_reg[11]_i_1 ;
  wire \n_5_address_reg[15]_i_1 ;
  wire \n_5_address_reg[3]_i_1 ;
  wire \n_5_address_reg[7]_i_1 ;
  wire \n_6_address_reg[11]_i_1 ;
  wire \n_6_address_reg[15]_i_1 ;
  wire \n_6_address_reg[3]_i_1 ;
  wire \n_6_address_reg[7]_i_1 ;
  wire \n_7_address_reg[11]_i_1 ;
  wire \n_7_address_reg[15]_i_1 ;
  wire \n_7_address_reg[16]_i_3 ;
  wire \n_7_address_reg[3]_i_1 ;
  wire \n_7_address_reg[7]_i_1 ;
  wire [6:0]vga_h_cnt;
  wire [7:0]vga_v_cnt;
  wire [3:0]\NLW_address_reg[16]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_address_reg[16]_i_3_O_UNCONNECTED ;

LUT1 #(
    .INIT(2'h2)) 
     \address[11]_i_2 
       (.I0(address[11]),
        .O(\n_0_address[11]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[11]_i_3 
       (.I0(address[10]),
        .O(\n_0_address[11]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[11]_i_4 
       (.I0(address[9]),
        .O(\n_0_address[11]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[11]_i_5 
       (.I0(address[8]),
        .O(\n_0_address[11]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[15]_i_2 
       (.I0(address[15]),
        .O(\n_0_address[15]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[15]_i_3 
       (.I0(address[14]),
        .O(\n_0_address[15]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[15]_i_4 
       (.I0(address[13]),
        .O(\n_0_address[15]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[15]_i_5 
       (.I0(address[12]),
        .O(\n_0_address[15]_i_5 ));
LUT5 #(
    .INIT(32'hFFFFFEEE)) 
     \address[16]_i_1 
       (.I0(vga_v_cnt[6]),
        .I1(vga_v_cnt[7]),
        .I2(vga_v_cnt[4]),
        .I3(vga_v_cnt[5]),
        .I4(\n_0_address[16]_i_4 ),
        .O(\n_0_address[16]_i_1 ));
LUT6 #(
    .INIT(64'h0888808088808080)) 
     \address[16]_i_2 
       (.I0(O1),
        .I1(O2),
        .I2(vga_h_cnt[3]),
        .I3(vga_h_cnt[1]),
        .I4(vga_h_cnt[2]),
        .I5(vga_h_cnt[0]),
        .O(address0));
LUT5 #(
    .INIT(32'h80808000)) 
     \address[16]_i_4 
       (.I0(vga_v_cnt[5]),
        .I1(vga_v_cnt[2]),
        .I2(vga_v_cnt[3]),
        .I3(vga_v_cnt[1]),
        .I4(vga_v_cnt[0]),
        .O(\n_0_address[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[16]_i_5 
       (.I0(address[16]),
        .O(\n_0_address[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[3]_i_2 
       (.I0(address[3]),
        .O(\n_0_address[3]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[3]_i_3 
       (.I0(address[2]),
        .O(\n_0_address[3]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[3]_i_4 
       (.I0(address[1]),
        .O(\n_0_address[3]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \address[3]_i_5 
       (.I0(address[0]),
        .O(\n_0_address[3]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[7]_i_2 
       (.I0(address[7]),
        .O(\n_0_address[7]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[7]_i_3 
       (.I0(address[6]),
        .O(\n_0_address[7]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[7]_i_4 
       (.I0(address[5]),
        .O(\n_0_address[7]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \address[7]_i_5 
       (.I0(address[4]),
        .O(\n_0_address[7]_i_5 ));
FDRE \address_reg[0] 
       (.C(clk),
        .CE(address0),
        .D(\n_7_address_reg[3]_i_1 ),
        .Q(address[0]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[10] 
       (.C(clk),
        .CE(address0),
        .D(\n_5_address_reg[11]_i_1 ),
        .Q(address[10]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[11] 
       (.C(clk),
        .CE(address0),
        .D(\n_4_address_reg[11]_i_1 ),
        .Q(address[11]),
        .R(\n_0_address[16]_i_1 ));
CARRY4 \address_reg[11]_i_1 
       (.CI(\n_0_address_reg[7]_i_1 ),
        .CO({\n_0_address_reg[11]_i_1 ,\n_1_address_reg[11]_i_1 ,\n_2_address_reg[11]_i_1 ,\n_3_address_reg[11]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_address_reg[11]_i_1 ,\n_5_address_reg[11]_i_1 ,\n_6_address_reg[11]_i_1 ,\n_7_address_reg[11]_i_1 }),
        .S({\n_0_address[11]_i_2 ,\n_0_address[11]_i_3 ,\n_0_address[11]_i_4 ,\n_0_address[11]_i_5 }));
FDRE \address_reg[12] 
       (.C(clk),
        .CE(address0),
        .D(\n_7_address_reg[15]_i_1 ),
        .Q(address[12]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[13] 
       (.C(clk),
        .CE(address0),
        .D(\n_6_address_reg[15]_i_1 ),
        .Q(address[13]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[14] 
       (.C(clk),
        .CE(address0),
        .D(\n_5_address_reg[15]_i_1 ),
        .Q(address[14]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[15] 
       (.C(clk),
        .CE(address0),
        .D(\n_4_address_reg[15]_i_1 ),
        .Q(address[15]),
        .R(\n_0_address[16]_i_1 ));
CARRY4 \address_reg[15]_i_1 
       (.CI(\n_0_address_reg[11]_i_1 ),
        .CO({\n_0_address_reg[15]_i_1 ,\n_1_address_reg[15]_i_1 ,\n_2_address_reg[15]_i_1 ,\n_3_address_reg[15]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_address_reg[15]_i_1 ,\n_5_address_reg[15]_i_1 ,\n_6_address_reg[15]_i_1 ,\n_7_address_reg[15]_i_1 }),
        .S({\n_0_address[15]_i_2 ,\n_0_address[15]_i_3 ,\n_0_address[15]_i_4 ,\n_0_address[15]_i_5 }));
FDRE \address_reg[16] 
       (.C(clk),
        .CE(address0),
        .D(\n_7_address_reg[16]_i_3 ),
        .Q(address[16]),
        .R(\n_0_address[16]_i_1 ));
CARRY4 \address_reg[16]_i_3 
       (.CI(\n_0_address_reg[15]_i_1 ),
        .CO(\NLW_address_reg[16]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_reg[16]_i_3_O_UNCONNECTED [3:1],\n_7_address_reg[16]_i_3 }),
        .S({1'b0,1'b0,1'b0,\n_0_address[16]_i_5 }));
FDRE \address_reg[1] 
       (.C(clk),
        .CE(address0),
        .D(\n_6_address_reg[3]_i_1 ),
        .Q(address[1]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[2] 
       (.C(clk),
        .CE(address0),
        .D(\n_5_address_reg[3]_i_1 ),
        .Q(address[2]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[3] 
       (.C(clk),
        .CE(address0),
        .D(\n_4_address_reg[3]_i_1 ),
        .Q(address[3]),
        .R(\n_0_address[16]_i_1 ));
CARRY4 \address_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_address_reg[3]_i_1 ,\n_1_address_reg[3]_i_1 ,\n_2_address_reg[3]_i_1 ,\n_3_address_reg[3]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_address_reg[3]_i_1 ,\n_5_address_reg[3]_i_1 ,\n_6_address_reg[3]_i_1 ,\n_7_address_reg[3]_i_1 }),
        .S({\n_0_address[3]_i_2 ,\n_0_address[3]_i_3 ,\n_0_address[3]_i_4 ,\n_0_address[3]_i_5 }));
FDRE \address_reg[4] 
       (.C(clk),
        .CE(address0),
        .D(\n_7_address_reg[7]_i_1 ),
        .Q(address[4]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[5] 
       (.C(clk),
        .CE(address0),
        .D(\n_6_address_reg[7]_i_1 ),
        .Q(address[5]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[6] 
       (.C(clk),
        .CE(address0),
        .D(\n_5_address_reg[7]_i_1 ),
        .Q(address[6]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[7] 
       (.C(clk),
        .CE(address0),
        .D(\n_4_address_reg[7]_i_1 ),
        .Q(address[7]),
        .R(\n_0_address[16]_i_1 ));
CARRY4 \address_reg[7]_i_1 
       (.CI(\n_0_address_reg[3]_i_1 ),
        .CO({\n_0_address_reg[7]_i_1 ,\n_1_address_reg[7]_i_1 ,\n_2_address_reg[7]_i_1 ,\n_3_address_reg[7]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_address_reg[7]_i_1 ,\n_5_address_reg[7]_i_1 ,\n_6_address_reg[7]_i_1 ,\n_7_address_reg[7]_i_1 }),
        .S({\n_0_address[7]_i_2 ,\n_0_address[7]_i_3 ,\n_0_address[7]_i_4 ,\n_0_address[7]_i_5 }));
FDRE \address_reg[8] 
       (.C(clk),
        .CE(address0),
        .D(\n_7_address_reg[11]_i_1 ),
        .Q(address[8]),
        .R(\n_0_address[16]_i_1 ));
FDRE \address_reg[9] 
       (.C(clk),
        .CE(address0),
        .D(\n_6_address_reg[11]_i_1 ),
        .Q(address[9]),
        .R(\n_0_address[16]_i_1 ));
LUT5 #(
    .INIT(32'h00000001)) 
     \vga_red[3]_INST_0_i_1 
       (.I0(vga_h_cnt[6]),
        .I1(vga_v_cnt[6]),
        .I2(vga_v_cnt[7]),
        .I3(vga_h_cnt[5]),
        .I4(vga_h_cnt[4]),
        .O(O1));
LUT6 #(
    .INIT(64'h0057FF8000FFFF00)) 
     \vga_red[3]_INST_0_i_2 
       (.I0(vga_v_cnt[2]),
        .I1(vga_v_cnt[0]),
        .I2(vga_v_cnt[1]),
        .I3(vga_v_cnt[4]),
        .I4(vga_v_cnt[5]),
        .I5(vga_v_cnt[3]),
        .O(O2));
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
