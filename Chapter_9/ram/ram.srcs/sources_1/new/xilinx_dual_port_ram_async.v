`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2016 09:59:53 AM
// Design Name: 
// Module Name: xilinx_dual_port_ram_async
// Project Name: 
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


module xilinx_dual_port_ram_async #(parameter Addr_Width=6,Data_Width=8) (
input wire clk,we,
input wire [Addr_Width-1:0] addr_a,addr_b,
input wire [Data_Width-1:0] din_a,
output wire [Data_Width-1:0] dout_a,dout_b
);

reg [Data_Width-1:0] ram [2**Addr_Width-1:0];

always@(posedge clk)
	if(we)
		ram[addr_a]<=din_a;

assign dout_a=ram[addr_a];
assign dout_b=ram[addr_b];

endmodule

