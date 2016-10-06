//Author : dtysky
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/16 18:34:13
// Design Name: ALU32
// Module Name: ALU32
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


module ALU32(
	input[31:0] a,b,aluc,
	output[31:0] r,
	output z
    );

	reg[31:0] r_r;
	wire[31:0] r_shift,r_logic_andor,r_logic_xorlui,r_addsub;


	SHIFT32 SHITF0 (a[4:0],b,aluc[2],aluc[3],r_shift);
	LOGIC32 LOGIC0 (a,b,aluc[2],r_logic_andor,r_logic_xorlui);
	ADDSUB32 ADDSUB0 (a,b,aluc[2],r_addsub);

	always @(*) begin
		case(aluc[1:0])
			2'b00: r_r <= r_addsub;
			2'b01: r_r <= r_logic_andor;
			2'b10: r_r <= r_logic_xorlui;
			2'b11: r_r <= r_shift;
		endcase
	end

	assign z = r_r==0 ? 1 : 0;
	assign r = r_r;

endmodule