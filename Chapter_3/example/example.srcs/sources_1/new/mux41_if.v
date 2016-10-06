`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 02:33:45 PM
// Design Name: 
// Module Name: mux41_if
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


    module mux41_if  
      (
        input  in0,in1,in2,in3,
		input  s0,s1,
        output  reg  out  // out声明为reg类型
     );
      
      always @*  
begin
		if ({s1,s0} == 2'b00)       out = in0;
		else if({s1,s0} == 2'b01)  out = in1; 
		else if({s1,s0} == 2'b10)  out = in2;
         else                     out = in3;
      end
  endmodule
