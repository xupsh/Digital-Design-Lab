//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
//Date        : Tue Apr 11 11:43:23 2017
//Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target Digital_Clock_wrapper.bd
//Design      : Digital_Clock_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Digital_Clock_wrapper
   (GND,
    an,
    clk,
    clr,
    dp,
    seg);
  input GND;
  output [3:0]an;
  input clk;
  input clr;
  output dp;
  output [6:0]seg;

  wire GND;
  wire [3:0]an;
  wire clk;
  wire clr;
  wire dp;
  wire [6:0]seg;

Digital_Clock Digital_Clock_i
       (.GND(GND),
        .an(an),
        .clk(clk),
        .clr(clr),
        .dp(dp),
        .seg(seg));
endmodule
