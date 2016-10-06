`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/16 18:34:13
// Design Name: ALU32
// Module Name: SHIFT32
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


module SHIFT32(
	input[4:0] sa,
	input signed [31:0] d,
	input right,arith,
	output[31:0] sh
	);

	reg[31:0] r_sh;

	always @(*) begin
		case ({right,arith})
			2'b00 :
				r_sh <= d << sa;
			2'b10 :
				r_sh <= d >> sa;
			2'b01 :
				r_sh <= d <<< sa;
			2'b11 :
				r_sh <= d >>> sa;
		endcase
	end

	assign sh = r_sh;

endmodule