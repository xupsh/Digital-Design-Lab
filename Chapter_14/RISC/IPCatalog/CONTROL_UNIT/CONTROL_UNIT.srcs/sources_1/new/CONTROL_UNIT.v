`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/18 15:20:50
// Design Name: CONTROL_UNIT
// Module Name: CONTROL_UNIT
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
module CONTROL_UNIT(
	input[5:0] op,func,
	input z,
	output wreg,regrt,jal,m2reg,shfit,aluimm,sext,wmem,
	output[3:0] aluc,
	output[1:0] pcsource
    );
	
	parameter cmd_add = 6'b100000;
	parameter cmd_sub = 6'b100010;
	parameter cmd_and = 6'b100100;
	parameter cmd_or = 6'b100101;
	parameter cmd_xor = 6'b100110;
	parameter cmd_sll = 6'b000000;
	parameter cmd_srl = 6'b000010;
	parameter cmd_sra = 6'b000011;
	parameter cmd_jr = 6'b001000;
	parameter cmd_addi = 6'b001000;
	parameter cmd_andi = 6'b001100;
	parameter cmd_ori = 6'b001101;
	parameter cmd_xori = 6'b001110;
	parameter cmd_lw = 6'b100011;
	parameter cmd_sw = 6'b101011;
	parameter cmd_beq = 6'b000100;
	parameter cmd_bne = 6'b000101;
	parameter cmd_lui = 6'b001111;
	parameter cmd_j = 6'b000010;
	parameter cmd_jal = 6'b000011;


	reg[13:0] cmd_out;

	always @(*) begin
		case (op)
			6'b0 : begin
				case (func)
					cmd_add : cmd_out <= 14'b10000000000000;
					cmd_sub : cmd_out <= 14'b10000000100000;
					cmd_and : cmd_out <= 14'b10000000001000;
					cmd_or : cmd_out <= 14'b10000000101000;
					cmd_xor : cmd_out <= 14'b10000000010000;
					cmd_sll : cmd_out <= 14'b10001000011000;
					cmd_srl : cmd_out <= 14'b10001000111000;
					cmd_sra : cmd_out <= 14'b10001001111000;
					cmd_jr : cmd_out <= 14'b00000000000010;
					default : cmd_out <= 14'b00000000000000;
				endcase
			end
			cmd_addi : cmd_out <= 14'b11000110000000;
			cmd_andi : cmd_out <= 14'b11000100001000;
			cmd_ori : cmd_out <= 14'b11000100101000;
			cmd_xori : cmd_out <= 14'b11000100010000;
			cmd_lw : cmd_out <= 14'b11010110000000;
			cmd_sw : cmd_out <= 14'b00000110000100;
			cmd_beq : cmd_out <= {13'b0000001001000,z};
			cmd_bne : cmd_out <= {13'b0000001001000,~z};
			cmd_lui : cmd_out <= 14'b11000100110000;
			cmd_j : cmd_out <= 14'b00000000000011;
			cmd_jal : cmd_out <= 14'b10100000000011;
			default : cmd_out <= 14'b00000000000000;
		endcase
	end

	assign wreg = cmd_out[13];
	assign regrt = cmd_out[12];
	assign jal = cmd_out[11];
	assign m2reg = cmd_out[10];
	assign shfit = cmd_out[9];
	assign aluimm = cmd_out[8];
	assign sext = cmd_out[7];
	assign aluc = cmd_out[6:3];
	assign wmem = cmd_out[2];
	assign pcsource = cmd_out[1:0];

endmodule