`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:04:44 PM
// Design Name: 
// Module Name: latch_reset_1
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


module latch_reset_1  
      (
        input  clk,reset,
         input  d,
        output  q  
    );
           assign q = (!reset)? 0:(clk?d:q);
     endmodule

