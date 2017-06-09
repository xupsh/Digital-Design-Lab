`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/18 16:09:04
// Design Name: CONTROL_UNIT
// Module Name: CONTROL_UNIT_TB
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
module CLOCK (
	output bit clk
	);
	
	always #(100ps) begin
		clk = ~clk;
	end

endmodule


module CONTROL_UNIT_TB();

	class data_creat;
		rand bit[5:0] op,func;
		rand bit z;

		function void next();
			this.randomize();
		endfunction : next
	endclass : data_creat

	bit clk;
	bit[5:0] op,func;
	bit z;
	bit wreg,regrt,jal,m2reg,shfit,aluimm,sext,wmem;
	bit[3:0] aluc;
	bit[1:0] pcsource;

	data_creat dc;

	CLOCK CLOCK1(clk);
	CONTROL_UNIT C1(op,func,z,wreg,regrt,jal,m2reg,shfit,aluimm,sext,wmem,aluc,pcsource);

	task req_1();
		@(posedge clk);
		dc.next();
		op = dc.op;
		func = dc.func;
		z = dc.z;
	endtask : req_1

	task req_2();
		@(posedge clk);
		dc.next();
		op = 6'b000000;
		func = dc.func;
		z = dc.z;
	endtask : req_2

	task check();
		@(negedge clk);
		$display("op = %b\nfunc = %b\nz = %b",op,func,z);
		$display("wreg = %b\nregrt = %b\njal = %b\nm2reg = %b\nshfit = %b\naluimm = %b\nsext = %b\nwmem = %b",
				wreg,regrt,jal,m2reg,shfit,aluimm,sext,wmem);
		$display("aluc = %b\npcsource = %b\n",aluc,pcsource);
	endtask : check

	initial begin 
		dc=new();
		repeat(100) begin
			req_1();
			check();
		end
		repeat(100) begin
			req_2();
			check();
		end
	end

endmodule