`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:30:37 PM
// Design Name: 
// Module Name: univ_shift_reg
// Project Name: 
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


module univ_shift_reg
	#(parameter N = 8)
	(
input clk, reset,
input  [1:0] ctrl,
input  [N-1:0] d,
output [N-1:0] q
);
//ÐÅºÅÉùÃ÷
reg [N-1:0] r_reg, r_next;
//¼Ä´æÆ÷
always @(posedge clk, posedge reset)
	if (reset)
		r_reg <= 0;
	else
		r_reg <= r_next;
//next-state logic
always @*
	case (ctrl)
		2'b00: r_next = r_reg;                          //ÎÞ²Ù×÷
		2'b01: r_next = {r_reg[N-2:0], d[0]};             //×óÒÆ
		2'b10: r_next = {d[N-1], r_reg[N-1:1]};			//ÓÒÒÆ
		default: r_next = d;						     //ÔØÈë
	endcase
//Êä³öÂß¼­
assign q = r_reg;
endmodule

