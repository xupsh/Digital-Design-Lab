`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/19 10:15:06
// Design Name: DATA_MEM
// Module Name: DATA_MEM
// Project Name: MISP_CPU
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


module DATA_MEM(
	input[31:0] addr,data_in,
	input clk,we,
	output[31:0] data_out
    );

	reg[31:0] ram[0:31];

	always @(posedge clk) begin
		if(we) ram[addr[6:2]] <= data_in;
	end
	
	assign data_out = ram[addr[6:2]];

	integer i;
	initial begin
		for (i=0;i<32;i=i+1)
			ram[i] = 32'b0;
		ram[5'h14] = 32'h000000a3;
		ram[5'h15] = 32'h00000027;
		ram[5'h16] = 32'h00000079;
		ram[5'h17] = 32'h00000115;
	end
	
endmodule