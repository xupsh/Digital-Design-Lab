`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:00:59 PM
// Design Name: 
// Module Name: dff_reset
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


module dff_reset  
      (
        input  clk,reset,
         input  d,
        output  reg  q  
    );
      always @(posedge clk,posedge reset) 
        begin   
          if (reset)	
q <= 1'b0;
	      else
		    q <= d; 
        end
     endmodule

