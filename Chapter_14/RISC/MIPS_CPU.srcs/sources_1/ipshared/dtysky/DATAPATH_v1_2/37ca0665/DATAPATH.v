`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/18 16:56:28
// Design Name: DATAPATH
// Module Name: DATAPATH
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


module DATAPATH(
	input clk,clrn,
	input alu_z,
	input[31:0] alu_r,
	output[31:0] alu_a,alu_b,
	output[31:0] alu_aluc,
	output reg_we,
	input[31:0] reg_qa,reg_qb,
	output[4:0] reg_wn,reg_rna,reg_rnb,
	output[31:0] reg_d,
	input con_wreg,con_regrt,con_jal,con_m2reg,con_shfit,con_aluimm,con_sext,con_wmem,
	input[3:0] con_aluc,
	input[1:0] con_pcsource,
	output[5:0] con_op,con_func,
	output con_z,
    input[31:0] inst_do,
    output[31:0] inst_a,
    input[31:0] data_do,
    output[31:0] data_a,data_di,
    output data_we,
    output[31:0] pc_out
    );

	wire[4:0] rs,rt,rd,sa;
	wire signed [31:0] imm;
	wire[25:0] addr;
	reg[31:0] pc_i,pc_o;
	wire[31:0] pc_p4,pc_jump;
	wire[4:0] reg_dest;
	wire[31:0] imm_ext,reg_data_dest;
	
	initial begin
	   pc_i = 32'b0;
	end

	assign rs = inst_do[25:21];
	assign rt = inst_do[20:16];
	assign rd = inst_do[15:11];
	assign sa = inst_do[10:6];
	assign imm = {inst_do[15:0],16'b0};
	assign addr = inst_do[25:0];
	assign imm_ext = con_sext ? imm>>>16 : imm>>16;

	assign pc_p4 = pc_o + 4;
	assign pc_out = pc_o;

	assign reg_dest = con_regrt ? rt : rd;
	assign reg_wn = reg_dest | {5{con_jal}};
	assign reg_data_dest = con_m2reg ? data_do : alu_r;
	assign reg_d = con_jal ? pc_p4 : reg_data_dest;
	assign reg_rna = rs;
	assign reg_rnb = rt;
	assign reg_we = con_wreg;

	assign con_op = inst_do[31:26];
	assign con_func = inst_do[5:0];
	assign con_z = alu_z;

	assign alu_a = con_shfit ? {27'b0,sa} : reg_qa;
	assign alu_b = con_aluimm ? imm_ext : reg_qb;
	assign alu_aluc = {28'b0,con_aluc};

	assign data_we = con_wmem;
	assign data_di = reg_qb;
	assign data_a = alu_r;

	assign inst_a = pc_o;

	always @(posedge clk or negedge clrn) begin
	   if (~clrn) pc_o <= 32'b0;
	   else pc_o <= pc_i;
	end

    ADDSUB32 ADDSUB1(pc_p4,imm_ext<<2,1'b0,pc_jump);
    
	always @(*) begin
		case (con_pcsource)
			2'b00 : pc_i <= pc_p4;
			2'b01 : pc_i <= pc_jump;
			2'b10 : pc_i <= reg_qa;
			2'b11 : pc_i <= {pc_p4[31:28],addr,2'b0};
			default : /* default */;
		endcase
	end

endmodule