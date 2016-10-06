`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 02:44:10 PM
// Design Name: 
// Module Name: bin_bcd4
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


module bin_bcd4
   (
        input [3:0] bin4,
		output  reg [4:0]  bcd5 
     );
       always @* 
         begin 
          case (bin4)
              4'h0: bcd5 = 5'b00000;
              4'h1: bcd5 = 5'b00001;
              4'h2: bcd5 = 5'b00010;            
  4'h3: bcd5 = 5'b00011;
              4'h4: bcd5 = 5'b00100;             
 4'h5: bcd5 = 5'b00101;
              4'h6: bcd5 = 5'b00110;         
    4'h7: bcd5 = 5'b00111;
              4'h8 : bcd5 = 5'b01000;          
 4'h9: bcd5 = 5'b01001;
              4'ha: bcd5 = 5'b10000;          
    4'hb: bcd5 = 5'b10001;
              4'hc: bcd5 = 5'b10010;        
      4'hd: bcd5 = 5'b10011;
           4'he: bcd5 = 5'b10100;
              4'hf: bcd5 = 5'b10101;
   endcase
      end
  endmodule

