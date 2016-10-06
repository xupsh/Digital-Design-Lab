`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:05:10 PM
// Design Name: 
// Module Name: latch_reset_2
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


 module latch_reset_2   
      (
        input  clk,reset,
         input  d,
        output  reg  q  
    );
      always @(clk,d,reset) 
        if(!reset)
          q <= 0;
else if(clk)
		  q <= d;
     endmodule

