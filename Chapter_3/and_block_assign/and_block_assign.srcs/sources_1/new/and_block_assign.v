`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:24:17 AM
// Design Name: 
// Module Name: and_block_assign
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


    module and_block_assign
 (
  input   a , b , c,
  output reg  y
);
  always  @ *
  begin
    y = a ;
    y=y&b;
  y=y&c;
  end
endmodule    
