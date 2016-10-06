`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/17 19:33:58
// Design Name: REGFILE
// Module Name: REGFILE
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


module REGFILE(
	input clk,clrn,
	input[31:0] d,
	input we,
	input[4:0] wn,rna,rnb,
	output[31:0] qa,qb
    );

	reg[31:0] reg32[31:0];
	
    integer i;
    initial begin
		for (i=1;i<=31;i=i+1)
		reg32[i] = 32'b0;
	end
	
	always @(posedge clk or negedge clrn) begin
		if(~clrn) begin
			for (i=0;i<=31;i=i+1)
				reg32[i] <= 32'b0;
		end else if (we && wn) begin
			reg32[wn] <= d;
		end
	end

	assign	qa = reg32[rna];
	assign	qb = reg32[rnb];

endmodule