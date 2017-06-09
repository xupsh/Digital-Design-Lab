`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/19 09:26:57
// Design Name: INST_MEM
// Module Name: INST_MEM
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


module INST_MEM(
	input[31:0] a,
	output[31:0] inst_out    );

	wire[31:0] rom[0:31];

	assign rom[5'h0] = 32'h3c010000;
	assign rom[5'h1] = 32'h34240050;
	assign rom[5'h2] = 32'h20050004;
	assign rom[5'h3] = 32'h0c000018;
	assign rom[5'h4] = 32'hac820000;
	assign rom[5'h5] = 32'h8c890000;
	assign rom[5'h6] = 32'h01244022;
	assign rom[5'h7] = 32'h20050003;
	assign rom[5'h8] = 32'h20a5ffff;
	assign rom[5'h9] = 32'h34a8ffff;
	assign rom[5'ha] = 32'h39085555;
	assign rom[5'hb] = 32'h2009ffff;
	assign rom[5'hc] = 32'h3124ffff;
	assign rom[5'hd] = 32'h01493025;
	assign rom[5'he] = 32'h01494026;
	assign rom[5'hf] = 32'h01463824;
	assign rom[5'h10] = 32'h10a00001;
	assign rom[5'h11] = 32'h08000008;
	assign rom[5'h12] = 32'h2005ffff;
	assign rom[5'h13] = 32'h000543c0;
	assign rom[5'h14] = 32'h00084400;
	assign rom[5'h15] = 32'h00084403;
	assign rom[5'h16] = 32'h000843c2;
	assign rom[5'h17] = 32'h08000017;
	assign rom[5'h18] = 32'h00004020;
	assign rom[5'h19] = 32'h8c890000;
	assign rom[5'h1a] = 32'h20840004;
	assign rom[5'h1b] = 32'h01094020;
	assign rom[5'h1c] = 32'h20a5ffff;
	assign rom[5'h1d] = 32'h14a0fffb;
	assign rom[5'h1e] = 32'h00081000;
	assign rom[5'h1f] = 32'h03e00008;

	assign inst_out = rom[a[6:2]];

endmodule