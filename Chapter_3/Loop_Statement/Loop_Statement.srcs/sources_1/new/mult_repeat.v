`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:58:25 AM
// Design Name: 
// Module Name: mult_repeat
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


module mult_repeat  
      (
        input [8:1] op0,
input [8:1] op1,
		output reg [16:1] result 
     );
      reg [16:1] tempa;
        reg [8:1] tempb;
      always @*  
begin
  result = 0;
  tempa = op0;
  tempb = op1;
  repeat(8)
    begin
      if(tempb[1])
        result =  result + tempa;
      tempa = tempa << 1;
      tempb =tempb >> 1;
    end
      end
  endmodule

