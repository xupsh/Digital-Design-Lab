`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:55:51 AM
// Design Name: 
// Module Name: mult_for
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


 module mult_for  
      (
        input [8:1] op0,
        input [8:1] op1,
		output reg [16:1] result 
     );
      integer i;
      always @*  
begin
  result = 0;
  for(i=1;i<=8;i=i+1)
	  if(op1[i])
        result = result + (op0 << (i-1));
      end
  endmodule

