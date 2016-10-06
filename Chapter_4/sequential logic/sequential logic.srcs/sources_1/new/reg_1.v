`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:05:56 PM
// Design Name: 
// Module Name: reg_1
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


module reg_1   
      (
        input  clk,reset,
         input  in_data,
input  load,
        output  reg  out_data  
    );
      always @(posedge clk,posedge reset) 
        if(reset)
          out_data <= 0;
        else if(load == 1)
		  out_data <= in_data;
     endmodule

