//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Thu Dec 17 17:22:32 2015
//Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target MIPS_CPU_wrapper.bd
//Design      : MIPS_CPU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MIPS_CPU_wrapper
   (inclk,
    key,
    led);
  input inclk;
  input [15:0]key;
  output [15:0]led;

  wire inclk;
  wire [15:0]key;
  wire [15:0]led;

MIPS_CPU MIPS_CPU_i
       (.inclk(inclk),
        .key(key),
        .led(led));
endmodule
