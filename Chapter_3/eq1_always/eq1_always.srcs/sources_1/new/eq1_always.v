`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:22:40 AM
// Design Name: 
// Module Name: eq1_always
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


module eq1_always  
      (
        input  i0, i1,
        output  reg  eq  // eq声明为reg类型
    );
      reg p0, p1;         // p0和p1 声明为reg类型
      always @(i0, i1)     // i0和i1必须在敏感信号列表中
begin
        //语句的顺序是很重要的 
        p0= ~i0 & ~i1;
        p1 = i0 & i1;
        eq = p0 | p1 ;
      end
  endmodule

