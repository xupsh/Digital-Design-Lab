`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:40:38 AM
// Design Name: 
// Module Name: decoder_2_4_case
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


    module decoder_2_4_case
    (
    input   [1:0] a,
    input   en,
  output  reg  [3:0]  y
    );
    always @*
       case  ({en, a})
         3'b000, 3'b001, 3'b010, 3'b011: y = 4'b0000;
         3'b100: y = 4'b0001;
           3'b101: y = 4'b0010;
           3'b110: y = 4'b0100;
           3'b111: y = 4'b1000;           // 也可以使用default语句
   endcase
endmodule      
