`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 02:38:59 PM
// Design Name: 
// Module Name: comp_N
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


module comp_N
  #(parameter N = 8)  
      (
        input [N-1:0] in0,in1,
		output  reg  gt,eq,lt 
     );
      always @*  
begin
   gt = 0;
   eq = 0;
   lt = 0;
		 if(in0>in1)
            gt = 1;
          if(in0==in1)
            eq = 1;
          if(in0<in1)
            lt = 1;
       end
  endmodule

