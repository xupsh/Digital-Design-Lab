`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/16 18:34:13
// Design Name: ALU32
// Module Name: ADDSUB32
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
module ADD(
	input a,b,c,
	output g,p,s
	);

	assign s = a ^ b ^ c;
	assign g = a & b;
	assign p = a | b;

endmodule

module G_P(
	input[1:0] g,p,
	input c_in,
	output g_out,p_out,c_out
	);

	assign g_out = g[1] | p[1] & g[0];
	assign p_out = p[1] & p[0];
	assign c_out = g[0] | p[0] & c_in;

endmodule

// module ADDSUB32(
// 	input[31:0] a,b;
// 	input sub;
// 	output[31:0] s
//     );
	
// 	wire[31:0] g,p;
// 	wire[31:0] s;

// 	generate
// 		genvar i;
// 		for (i=0;i<16;i=i+1)
// 		begin : ADD

// 		end
// 	endgenerate

// endmodule

module CLA2 (
	input[1:0] a,b,
	input c_in,
	output g_out,p_out,
	output[1:0] s
	);
	
	wire[1:0] g,p;
	wire c_out;

	ADD ADD0 (a[0],b[0],c_in,g[0],p[0],s[0]);
	ADD ADD1 (a[1],b[1],c_out,g[1],p[1],s[1]);
	G_P G_P0 (g,p,c_in,g_out,p_out,c_out);

endmodule

module CLA4 (
	input[3:0] a,b,
	input c_in,
	output g_out,p_out,
	output[3:0] s
	);
	
	wire[1:0] g,p;
	wire c_out;

	CLA2 CLA20 (a[1:0],b[1:0],c_in,g[0],p[0],s[1:0]);
	CLA2 CLA21 (a[3:2],b[3:2],c_out,g[1],p[1],s[3:2]);
	G_P G_P0 (g,p,c_in,g_out,p_out,c_out);
	
endmodule

module CLA8 (
	input[7:0] a,b,
	input c_in,
	output g_out,p_out,
	output[7:0] s
	);
	
	wire[1:0] g,p;
	wire c_out;

	CLA4 CLA40 (a[3:0],b[3:0],c_in,g[0],p[0],s[3:0]);
	CLA4 CLA41 (a[7:4],b[7:4],c_out,g[1],p[1],s[7:4]);
	G_P G_P0 (g,p,c_in,g_out,p_out,c_out);
	
endmodule

module CLA16 (
	input[15:0] a,b,
	input c_in,
	output g_out,p_out,
	output[15:0] s
	);
	
	wire[1:0] g,p;
	wire c_out;

	CLA8 CLA80 (a[7:0],b[7:0],c_in,g[0],p[0],s[7:0]);
	CLA8 CLA81 (a[15:8],b[15:8],c_out,g[1],p[1],s[15:8]);
	G_P G_P0 (g,p,c_in,g_out,p_out,c_out);
	
endmodule

module CLA32 (
	input[31:0] a,b,
	input c_in,
	output[31:0] s
	);
	
	wire[1:0] g,p;
	wire c_out;

	CLA16 CLA160 (a[15:0],b[15:0],c_in,g[0],p[0],s[15:0]);
	CLA16 CLA161 (a[31:16],b[31:16],c_out,g[1],p[1],s[31:16]);
	G_P G_P0 (g,p,c_in,g_out,p_out,c_out);
	
endmodule

module ADDSUB32(
	input[31:0] a,b,
	input sub,
	output[31:0] s
    );
	
	CLA32 CLA320(a,b^{32{sub}},sub,s);

endmodule