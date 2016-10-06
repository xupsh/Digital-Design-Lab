`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 02:41:57 PM
// Design Name: 
// Module Name: encode_8_3
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


module encode_8_3
   (
        input [7:0] in,
		output  reg [2:0]  encode_out,
        output  reg  valid 
     );
      always @* 
        begin 
          valid = 1;
    case (in)
      8'b00000001 :  encode_out = 3'b000;
      8'b00000010 :  encode_out = 3'b001;
8'b00000100 :  encode_out = 3'b010;
      8'b00001000 :  encode_out = 3'b011;
8'b00010000 :  encode_out = 3'b100;
      8'b00100000 :  encode_out = 3'b101;
8'b01000000 :  encode_out = 3'b110;
      8'b10000000 :  encode_out = 3'b111;
      default     :  valid = 0;
          endcase
      end
  endmodule

