`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:06:51 PM
// Design Name: 
// Module Name: reg_N
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


module reg_N   
  #(parameter N = 8)
      (
        input  clk,
         input  reset,
         input [N-1:0] in_data,
input   load,
        output  reg [N-1:0] out_data  
    );
     
      always @(posedge clk, posedge reset) 
        if(reset)
          out_data <= 0;
else if(load == 1)
		  out_data <= in_data;
     endmodule

