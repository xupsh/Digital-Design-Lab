`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2016 09:46:19 AM
// Design Name: 
// Module Name: tb
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

module tb(
    );
   reg reset,clk;
   initial //初始化reset
   begin reset=0;
       #20 reset=1;
       #20 reset=0;
   end
   //初始化时钟
   initial     clk=1;
   always
   begin
     #20 clk=~clk;
   end
   
   top top
   (
   .clk(clk),
   .reset(reset)
   
   );
endmodule

