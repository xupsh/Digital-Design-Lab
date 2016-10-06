`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:42:20 AM
// Design Name: 
// Module Name: prio_encoder_casez
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


  module prio_encoder_casez
        (
        input  [3:0]  r,
        output  reg  [2:0]  y
       );          
       always @*
             casez (r)
                4'b1???: y = 3'b100;
                4'b01??: y = 3'b011;
                4'b001?: y = 3'b010;
                4'b0001: y = 3'b001;
                4'b0000: y = 3'b000;     // 这里可以使用default
        endcase
   endmodule

