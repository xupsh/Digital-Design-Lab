//Author : dtysky
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky 
// 
// Create Date: 2015/01/17 13:37:41
// Design Name: ALU
// Module Name: ALU_TB
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



module ALU_TB();

	class data_creat;
		rand bit[31:0] a,b;
		rand bit[3:0] cmd;
		bit suc;
		constraint test {
			(cmd != 4'b1011);
		}

		function new(int seed);
			this.srandom(seed);
			suc=this.randomize();
		endfunction : new

		function void next();
			suc=this.randomize();
		endfunction : next

	endclass : data_creat;

	bit clk;
	CLOCK CLOCK1 (clk);
	data_creat dc;

	bit[31:0] a,b,aluc,r;
	bit z;

	ALU32 ALU0(a,b,aluc,r,z);

	task req();
		@(posedge clk);
		dc.next();
		a=dc.a;
		b=dc.b;
		aluc={28'b0,dc.cmd};
	endtask : req

	task check();
		@(negedge clk);
		case (aluc[2:0])
			3'b000 : begin 
				$display("cmd = add\n");
				$display("a = %d\nb = %d\nr = %d\nz = %b\n",signed'(a),signed'(b),signed'(r),z);
			end 
			3'b100 : begin
				$display("cmd = sub\n");
				$display("a = %d\nb = %d\nr = %d\nz = %b\n",signed'(a),signed'(b),signed'(r),z);
			end
			3'b001 : begin
				$display("cmd = and\n");
				$display("a = %b\nb = %b\nr = %b\nz = %b\n",a,b,r,z);
			end
			3'b101 : begin
				$display("cmd = or\n");
				$display("a = %b\nb = %b\nr = %b\nz = %b\n",a,b,r,z);
			end
			3'b010 : begin
				$display("cmd = xor\n");
				$display("a = %b\nb = %b\nr = %b\nz = %b\n",a,b,r,z);
			end
			3'b110 : begin
				$display("cmd = lui\n");
				$display("a = %b\nb = %b\nr = %b\nz = %b\n",a,b,r,z);
			end
			3'b011 : begin
				$display("cmd = sll\n");
				$display("a = %d\nb = %b\nr = %b\nz = %b\n",a[4:0],b,r,z);
			end
			3'b111 : begin
				if (aluc[3]==1'b0) begin
					$display("cmd = srl\n");
					$display("a = %d\nb = %b\nr = %b\nz = %b\n",a[4:0],b,r,z);
				end
				else begin
					$display("cmd = sra\n");
					$display("a = %d\nb = %b\nr = %b\nz = %b\n",a[4:0],b,r,z);
				end
			end
			default : /* default */;
		endcase
	endtask : check

	initial begin
		dc=new(200);
		repeat(100) begin
			req();
			check();
		end
	end

endmodule
