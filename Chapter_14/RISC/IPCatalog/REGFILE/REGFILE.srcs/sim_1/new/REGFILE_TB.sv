`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/18 12:59:16
// Design Name: REGFILE
// Module Name: REGFILE_TB
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

module REGFILE_TB();

	class data_creat;
		bit clrn;
		rand bit we;
		rand bit[4:0] wn,rna,rnb;
		rand bit[31:0] d;
		
		function new();
			clrn=1'b1;
		endfunction : new

		function void next();
			this.randomize();
		endfunction : next

		function void clear();
			clrn=1'b0;
		endfunction : clear
	
	endclass : data_creat
	
	bit clk,clrn;
	bit we;
	bit[4:0] wn,rna,rnb;
	bit[31:0] d,qa,qb;

	data_creat dc;
	CLOCK CLOCK1(clk);
	REGFILE REGFILE1(clk,clrn,d,we,wn,rna,rnb,qa,qb);

	task showreg32();
		@(posedge clk);
		rna=4'b0;
		$display("clrn = %b",clrn);
		for (int i=0;i<32;i=i+1) begin
			@(posedge clk);
			@(posedge clk);
			$display("reg32[%d] = %b",rna,qa);
			rna=rna+1;
		end
		$display("\n");
	endtask : showreg32

	task work();
		@(posedge clk);
		dc.next();
		clrn=dc.clrn;
		we<=dc.we;
		wn=dc.wn;
		rna=dc.rna;
		rnb=dc.rnb;
		d=dc.d;
		@(posedge clk);
		@(posedge clk);
		$display("we = %b\nwn = %d\nd = %b\nrna = %d\nrnb = %d\nqa = %b\nqb = %b",we,wn,d,rna,rnb,qa,qb);
		showreg32();
	endtask : work

	task clear();
		dc.clear();
		clrn=dc.clrn;
		showreg32();
	endtask : clear

	initial begin
		dc=new();
		repeat(50)
			work();
		clear();
	end

endmodule