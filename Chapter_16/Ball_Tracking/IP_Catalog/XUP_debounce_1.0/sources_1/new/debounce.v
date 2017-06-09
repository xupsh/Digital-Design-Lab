`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Zhenyu Li
// 
// Create Date: 02/07/2015 12:11:40 PM
// Design Name: Interface IP
// Module Name: debounce
// Project Name: debounce
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


module debounce(
input clk,clr,
input i,
output  o
);
reg[3:0] delay1;
reg[3:0] delay2;
reg[3:0] delay3;
reg cclk;
reg[5:0] cnt;
always@(posedge clk )begin
    if(cnt >=19)begin
        cnt <= 0;
        cclk <= ~cclk;
    end
    else
        cnt <= cnt+1;
end

always@(posedge cclk or posedge clr)
 begin
  if(clr==1)
   begin
	 delay1<=4'b0000;
	 delay2<=4'b0000;
	 delay3<=4'b0000;

   end
  else
   begin
	 delay1<=i;
	 delay2<=delay1;
	 delay3<=delay2;

	end
end
assign o=delay1&delay2&delay3;

endmodule
