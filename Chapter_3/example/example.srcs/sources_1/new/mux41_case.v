`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 02:34:48 PM
// Design Name: 
// Module Name: mux41_case
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


 module mux41_case  
      (
        input  in0,in1,in2,in,
		input  s0,s1,
        output  reg  out  // out声明为reg类型
     );
      
      always @*  
begin
		case ({s1,s0})  
             2'b00:   out = in0;
		   2'b01:   out = in1; 
		   2'b10:   out = in2;
            default: out = in0;
         endcase
      end
  endmodule

