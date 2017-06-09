`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/16 18:34:13
// Design Name: KEY2INST
// Module Name: KEY2INST
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


module KEY2INST(
	input clk,
	input[15:0] button,
	input[31:0] inst_a,
	output[31:0] inst_do,
	output clrn
    );

	//CMD
	parameter [2:0]
		cmd_add = 3'b000,
		cmd_sub = 3'b001,
		cmd_and = 3'b010,
		cmd_or = 3'b011,
		cmd_xor = 3'b100,
		cmd_sll = 3'b101,
		cmd_srl = 3'b110,
		cmd_sra = 3'b111;

	//Select
	parameter [1:0]
		sl_al = 2'b00,
		sl_ah = 2'b01,
		sl_bl = 2'b10,
		sl_bh = 2'b11;

	//State
	parameter [4:0]
		st_idle = 5'b00001,
		st_load = 5'b00010,
		st_run = 5'b00100,
		st_wrom = 5'b01000,
		st_reset = 5'b10000;

	//func
	parameter [5:0]
	func_add = 6'b100000,
	func_sub = 6'b100010,
	func_and = 6'b100100,
	func_or = 6'b100101,
	func_xor = 6'b100110,
	func_sll = 6'b000000,
	func_srl = 6'b000010,
	func_sra = 6'b000011;

	reg[31:0] inst_rom[31:0];
	wire rst_n;
	wire run;
	wire load;
	wire[2:0] cmd;
	wire[1:0] select;
	wire[7:0] data;
	reg[4:0] st;
	reg r_clrn;

	//ah,al,bh,bl
	reg[7:0] data_now[3:0];
	reg[25:0] cmd_do;

	assign rst_n = button[15];
	assign run = button[14];
	assign load = button[13];
	assign cmd = button[12:10];
	assign select = button[9:8];
	assign data = button[7:0];

	assign clrn = r_clrn;
	assign inst_do = inst_rom[inst_a[6:2]];

	integer i;
	initial begin
		st <= st_idle;
		for(i=0;i<4;i=i+1)
			data_now[i] <= 8'b0;
		for(i=0;i<32;i=i+1)
			inst_rom[i] <= 32'b0;
	end

	//Cmd_do
	always @(*) begin 
		case (cmd)
			cmd_add : cmd_do <= {5'b00001,5'b00010,5'b00011,5'b0,func_add};
			cmd_sub : cmd_do <= {5'b00001,5'b00010,5'b00011,5'b0,func_sub};
			cmd_and : cmd_do <= {5'b00001,5'b00010,5'b00011,5'b0,func_and};
			cmd_or : cmd_do <= {5'b00001,5'b00010,5'b00011,5'b0,func_or};
			cmd_xor : cmd_do <= {5'b00001,5'b00010,5'b00011,5'b0,func_xor};
			cmd_sll : cmd_do <= {5'b0,5'b00001,5'b00011,data_now[3][4:0],func_sll};
			cmd_srl : cmd_do <= {5'b0,5'b00001,5'b00011,data_now[3][4:0],func_srl};
			cmd_sra : cmd_do <= {5'b0,5'b00001,5'b00011,data_now[3][4:0],func_sra};
			default : cmd_do <= 26'b0;
		endcase
	
	end

	//State machine
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) st <= st_reset;
		else begin
			case (st)
				st_idle : begin 
					case ({run,load})
						//2'b1x : st <= st_wrom;
						2'b10 : st <= st_wrom;
						2'b11 : st <= st_wrom;
						2'b01 : st <= st_load;
						default : st <= st;
					endcase
				end
				st_wrom : st <= st_run;
				st_run : st <= run ? st : st_idle;
				st_reset : st <= st_idle;
				st_load : st <= st_idle;
				default : st <= st_reset;
			endcase
		end
	end

	//Work
	always @(posedge clk) begin
		case (st)
			st_reset : begin
				r_clrn <= 1'b0;
				for(i=0;i<4;i=i+1)
					data_now[i] <= 8'b0;
			end
			st_load : data_now[select] <= data;
			st_wrom : begin 
				//Clear all regs, set pc to 0;
				r_clrn <= 1'b0;
				//r1 = r0(0) + a;
				inst_rom[0] <= {6'b001000,5'b00000,5'b00001,data_now[0],data_now[1]};
				//r2 = r0(0) + b;
				inst_rom[1] <= {6'b001000,5'b00000,5'b00010,data_now[2],data_now[3]};
				//r3 = r1 (cmd) r2;
				inst_rom[2] <= {6'b0,cmd_do};
				//loop(j 26'd4)
				inst_rom[3] <= {6'b000010,26'd3};
			end
			st_run : r_clrn <= 1'b1;
			default : /* default */;
		endcase
	end

endmodule