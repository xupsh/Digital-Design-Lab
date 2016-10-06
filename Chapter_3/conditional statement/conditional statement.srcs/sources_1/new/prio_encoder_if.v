`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:35:56 AM
// Design Name: 
// Module Name: prio_encoder_if
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


module prio_encoder_if
       (
       input [3:0] r,
       output reg [2:0]  y
       );
       always @*
         if (r[3]==1'b1)      // 可以写成 (r[3])
            y = 3'b100;
       else if (r[2]==1'b1)   // 可以写成 (r[2])
            y = 3'b011;
         else if (r[1]==1'b1)   // 可以写成 (r[1])
            y = 3'b010;
         else if (r[0]==1'b1)   // 可以写成 (r[0])
            y = 3'b001;
         else
            y = 3'b000;
    endmodule         

