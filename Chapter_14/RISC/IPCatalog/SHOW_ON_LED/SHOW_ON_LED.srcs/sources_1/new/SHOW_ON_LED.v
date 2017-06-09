`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/16 18:34:13
// Design Name: SHOW_ON_LED
// Module Name: SHOW_ON_LED
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


module SHOW_ON_LED(
    input clk,
    input[5:0] inst_op,
	input[31:0] alu_r,
	input[15:0] button,
	output[15:0] led
    );

	wire run;
	reg[15:0] alu_result;

	assign run = button[14];
	assign led = run ? alu_result : button;
	
	always @(posedge clk)
	   alu_result <= (inst_op==6'b0 && run==1'b1) ? alu_r[15:0] : alu_result; 
endmodule