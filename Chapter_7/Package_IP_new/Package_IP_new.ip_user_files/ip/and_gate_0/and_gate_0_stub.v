// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Tue Sep 27 14:37:46 2016
// Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/zhehengt/Desktop/Digital_Design_Lab/Chapter_7/Package_IP_new/Package_IP_new.srcs/sources_1/ip/and_gate_0/and_gate_0_stub.v
// Design      : and_gate_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "and_gate,Vivado 2016.2" *)
module and_gate_0(a, b, c)
/* synthesis syn_black_box black_box_pad_pin="a[1:0],b[1:0],c[1:0]" */;
  input [1:0]a;
  input [1:0]b;
  output [1:0]c;
endmodule
