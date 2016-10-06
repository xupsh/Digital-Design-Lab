`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 02:42:41 PM
// Design Name: 
// Module Name: prio_encode_8_3
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


module prio_encode_8_3
   (
        input [7:0] in,
		output  reg [2:0]  encode_out 
     );
      always @* 
        begin 
          casez (in)
      8'b1??????? :  encode_out = 3'b000;
      8'b01?????? :  encode_out = 3'b001;
8'b001????? :  encode_out = 3'b010;
      8'b0001???? :  encode_out = 3'b011;
8'b00001??? :  encode_out = 3'b100;
      8'b000001?? :  encode_out = 3'b101;
8'b0000001? :  encode_out = 3'b110;
      8'b10000001 :  encode_out = 3'b111;
   endcase
      end
  endmodule

