`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 12:38:38 PM
// Design Name: 
// Module Name: adder_carry_hard_lit
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


 module adder_carry_hard_lit
       (
       input wire [3:0] a, b,
       output wire [3:0] sum,
     output wire cout     // ½øÎ»
        );
       wire [4:0] sum_ext ;
       assign sum_ext = {1'b0, a} + {1'b0, b};
       assign sum = sum_ext [3:0] ;
       assign  cout= sum_ext [4] ;
 endmodule 
