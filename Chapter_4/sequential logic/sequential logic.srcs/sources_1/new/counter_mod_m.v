`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:33:04 PM
// Design Name: 
// Module Name: counter_mod_m
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

module counter_mod_m  
   #(parameter N = 4, //计数器位数
parameter M = 10) //模M0
   (
        input  clk,reset,
         output [N-1:0] qd,
         output  cout 
     );
       reg [N-1:0] regN;
        always @(posedge clk) 
         if(reset)
           regN <= 0;
         else if (regN < (M-1))
           regN <= regN + 1;
         else 
            regN <= 0;
        assign qd = regN;
         assign cout = (regN == (M-1))?1'b1:1'b0;
      endmodule

