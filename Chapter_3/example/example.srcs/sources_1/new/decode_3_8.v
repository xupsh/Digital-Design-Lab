`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 02:40:52 PM
// Design Name: 
// Module Name: decode_3_8
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


module decode_3_8
   (
        input [2:0] in,
		output  reg [7:0]  y 
     );
       always @* 
        begin 
    case (in)
     3'b000 :  y = 8'b00000001;
     3'b001 :  y = 8'b00000010;
3'b010 :  y = 8'b00000100;
     3'b011 :  y = 8'b00001000;
3'b100 :  y = 8'b00010000;
     3'b101 :  y = 8'b00100000;
3'b110 :  y = 8'b01000000;
     3'b111 :  y = 8'b10000000;
          endcase
       end
  endmodule

