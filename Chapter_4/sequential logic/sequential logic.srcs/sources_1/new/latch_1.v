`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:04:10 PM
// Design Name: 
// Module Name: latch_1
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


module latch_1  
      (
        input  clk,
         input  d,
        output  reg  q  
    );
      always @(clk,d) 
        if(clk)
		  q <= d;
     endmodule
