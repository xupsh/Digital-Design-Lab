`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/16 18:34:13
// Design Name: KEY2INST
// Module Name: KEY2INST_TB
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
module CLOCK (
	output bit clk
	);
	
	always #(100ps) begin
		clk = ~clk;
	end

endmodule

module KEY2INST_TB();
	bit clk,rst_n;
	bit run,load;
	bit[2:0] cmd;
	bit[1:0] select;
	bit[7:0] data;
	bit[31:0] inst_a,inst_do;
	bit[15:0] button;
	bit clrn;

	//ah,al,bh,bl
	bit[7:0] data_now[3:0];

	CLOCK CLOCK1(clk);
	KEY2INST KEY2INST1(clk,button,inst_a,inst_do,clrn);

	function data_creat();
		for (int i = 0; i < 4; i++) begin
			data_now[i] = $urandom_range(0,8'hff);
		end
	endfunction : data_creat

	function button_action(bit[1:0] select_now);
		button = {rst_n,run,load,cmd,select,data_now[select_now]};
	endfunction : button_action

	task data_load(bit[1:0] select_now);
		@(posedge clk)
		select = select_now;
		button_action(select_now);
		@(posedge clk)
		load = 1'b1;
		button_action(select_now);
		@(posedge clk)
		load = 1'b0;
		button_action(select_now);
	endtask : data_load

	task check();
		$display("cmd = %b",cmd);
		$display("data_a = %b",{data_now[0],data_now[1]});
		$display("data_b = %b",{data_now[2],data_now[3]});
		for (int i = 0; i < 4; i++) begin
			@(posedge clk)
			inst_a = i <<2;
			@(negedge clk)
			$display("inst_do[%d] = %b\n",i,inst_do);
		end
	endtask : check

	initial begin 
		rst_n = 1'b0;
		run = 1'b0;
		load = 1'b0;
		repeat(10) @(posedge clk);
		rst_n = 1'b1;
		for (int i = 0; i < 8; i++) begin
			data_creat();
			for (int j = 0; j < 4; j++) begin
				data_load(j);
			end
			@(posedge clk)
			cmd = i;
			run = 1'b1;
			button_action(0);
			@(posedge clk)
			run = 1'b0;
			check();
		end
		@(posedge clk)
		rst_n = 1'b0;
		check();
	end

endmodule