`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:41:24 AM
// Design Name: 
// Module Name: prio_encoder_case
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


    module prio_encoder_case
    (
    input  [3: 0]  r,
    output  reg  [2:0]  y
   );
    always @*
       case (r)
             4'b1000, 4'b1001, 4'b1010, 4'b1011,
                        4'b1100, 4'b1101, 4'b1110, 4'b1111:
                  y = 3'b100;
             4'b0100, 4'b0101, 4'b0110, 4'b0111:
                    y = 3'b011;
             4'b0010, 4'b0011:
                  y = 3'b010;
           4'b0001:
                    y = 3'b001;
             4 'b0000 :                   // 也可以使用default
                      y = 3'b000;
      endcase
endmodule          
