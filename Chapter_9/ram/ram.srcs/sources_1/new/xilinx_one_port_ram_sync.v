`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2016 09:57:30 AM
// Design Name: 
// Module Name: xilinx_one_port_ram_sync
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


module xilinx_one_port_ram_sync #(parameter Addr_Width=12,Data_Width=8) (
input wire clk,we,
input wire [Addr_Width-1:0]addr,
input wire [Data_Width-1:0]din,
output wire [Data_Width-1:0]dout
);

reg [Data_Width-1:0] ram[2**Addr_Width-1:0];
reg [Addr_Width-1:0] addr_reg;

always@(posedge clk) begin
	if(we)
		ram[addr]<=din;
		addr_reg<=addr;
end

assign dout=ram[addr_reg];

endmodule

