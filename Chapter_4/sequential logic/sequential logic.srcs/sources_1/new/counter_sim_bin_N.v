`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:31:40 PM
// Design Name: 
// Module Name: counter_sim_bin_N
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


module counter_sim_bin_N  
   #(parameter N = 8)
   (
        input  clk,
         input  reset,
         output [N-1:0] qd,
        output  cout  
     );
       reg [N-1:0] regN;
        always @(posedge clk) 
         if(reset)
           regN <= 0;
         else
           regN <= regN + 1;
        assign qd = regN;
         assign cout = (regN == 2**N-1)?1'b1:1'b0;
     endmodule

