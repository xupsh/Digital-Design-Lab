`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 12:39:35 PM
// Design Name: 
// Module Name: adder_carry_loacl_par
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


module adder_carry_local_par
        (
        input [3:0] a, b,
        output [3:0] sum,
      output cout      
        );
        // ³£ÊýÉùÃ÷
        localparam  N = 4 ,
                 N1 = N-1;
        wire [N:0] sum_ext;
        assign  sum_ext = {1'b0, a} + {1'b0, b};
        assign  sum = sum_ext [N1:0] ;
        assign  cout= sum_ext [N] ;
    endmodule            

