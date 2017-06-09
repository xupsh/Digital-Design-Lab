`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2015 01:23:16 PM
// Design Name: 
// Module Name: move_en
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


module move_en(
input Move_EN,
input pwm_i,
output pwm_o
    );
 assign   pwm_o = (Move_EN==1)? pwm_i:0;
 
endmodule
