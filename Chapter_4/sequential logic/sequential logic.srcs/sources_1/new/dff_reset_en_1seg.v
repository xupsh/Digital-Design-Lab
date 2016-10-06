`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:01:43 PM
// Design Name: 
// Module Name: dff_reset_en_1seg
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



module dff_reset_en_1seg  
      (
        input  clk,reset,
         input  en,
         input  d,
        output  reg  q  
    );
      
      always @(posedge clk,posedge reset) 
        begin   
          if (reset)	
q <= 1'b0;
	      else if(en)
		    q <= d; 
        end
     endmodule
