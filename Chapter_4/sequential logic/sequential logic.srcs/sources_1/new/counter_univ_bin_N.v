`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:32:19 PM
// Design Name: 
// Module Name: counter_univ_bin_N
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


module counter_univ_bin_N  
   #(parameter N = 8)
   (
        input  clk,reset,load,up_down,
         input [N-1:0] d,
         output [N-1:0] qd  
     );
       reg [N-1:0] regN;
        always @(posedge clk) 
         if (reset)
           regN <= 0;
         else if (load) 
regN <= d;
         else if (up_down)
           regN <= regN + 1;
         else regN <= regN - 1;
        assign qd = regN;
      endmodule

