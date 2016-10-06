`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 02:21:17 PM
// Design Name: 
// Module Name: adder_insta
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


module adder_insta
        (
        input   [3:0] a4, b4,
        output  [3:0] sum4,
       output  c4,
        input  [7:0] a8, b8,
        output  [7:0] sum8,
        output   c8
        );
 
        // 实例化8位加法器
        adder_carry_para #(. N(8)) unit1
           (. a(a8), . b(b8), . sum(sum8), . cout (c8)) ;
        //实例化8位加法器
        adder_carry_para unit2
           (.a(a4), .b(b4),.sum(sum4),.cout(c4));
endmodule	

