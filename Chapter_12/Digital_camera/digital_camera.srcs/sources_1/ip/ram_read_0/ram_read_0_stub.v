// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Sep 20 12:02:22 2016
// Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/zhehengt/Desktop/Digital_Design_Lab/Chapter_12/Digital_camera/digital_camera.srcs/sources_1/ip/ram_read_0/ram_read_0_stub.v
// Design      : ram_read_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ram_read,Vivado 2014.4" *)
module ram_read_0(clk, valid, din, address, vga_h_cnt, vga_v_cnt, vga_red, vga_green, vga_blue)
/* synthesis syn_black_box black_box_pad_pin="clk,valid,din[15:0],address[16:0],vga_h_cnt[11:0],vga_v_cnt[10:0],vga_red[3:0],vga_green[3:0],vga_blue[3:0]" */;
  input clk;
  input valid;
  input [15:0]din;
  output [16:0]address;
  input [11:0]vga_h_cnt;
  input [10:0]vga_v_cnt;
  output [3:0]vga_red;
  output [3:0]vga_green;
  output [3:0]vga_blue;
endmodule
