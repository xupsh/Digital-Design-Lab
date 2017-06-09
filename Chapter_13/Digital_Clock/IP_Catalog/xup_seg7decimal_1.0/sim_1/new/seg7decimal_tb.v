`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2015 08:46:53 PM
// Design Name: 
// Module Name: seg7decimal_tb
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


module seg7decimal_tb;
// Inputs
reg clk;
reg clr;
reg [15:0]x;

// Outputs
wire[6:0] a_to_g;
wire[3:0] an;
wire dp;

seg7decimal u_seg(
.x(x),
.clk(clk),
.clr(clr),
.a_to_g(a_to_g),
.an(an),
.dp(dp)
);
initial begin
   clk = 0;
   clr = 0;
   #100 
   clr = 1;
    #5 
   clr = 0;  
 x = 16'h1234;
   end
   
initial forever #1 clk= ~ clk;

endmodule
