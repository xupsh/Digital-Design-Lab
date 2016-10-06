`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 12:04:06 PM
// Design Name: 
// Module Name: mult_while
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


module mult_while  
      (
        input [8:1] op0,
        input [8:1] op1,
		output reg [16:1] result 
     );
      integer i=1;
always @*  
begin
  result = 0;
  while(1)
  begin
	  if(op1[i])
        result = result + (op0 << (i-1));
    i = i +1;
  end
end
endmodule

