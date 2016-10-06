//Author : dtysky
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/16 18:34:13
// Design Name: ALU32
// Module Name: LOGIC32
// Project Name: MIPS_CPU
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LOGIC32(
	input[31:0] a,b,
	input cmd,
	output[31:0] r_a,r_b
    );

	//AND
	//OR
	assign r_a = cmd ? a|b : a&b;

	//XOR
	//LUI
	assign r_b = cmd ? b<<16 : a^b;

endmodule