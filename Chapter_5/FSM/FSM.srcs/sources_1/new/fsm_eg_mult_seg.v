`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:55:09 PM
// Design Name: 
// Module Name: fsm_eg_mult_seg
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


module fsm_eg_mult_seg
(
input clk,reset,
input a,b,
output y0,y1
);
// ×´Ì¬·ûºÅÉùÃ÷
localparam   s0 = 2'b00,
s1 = 2'b01,
s2 = 2'b10;
//ÐÅºÅÉùÃ÷
reg [1:0]  state_reg , state_next;
// ×´Ì¬ÇÐ»»
always @ (posedge clk , posedge reset )
if ( reset )
state_reg<= s0;
else
state_reg<= state_next ;
//  ´ÎÌ¬Âß¼­
always  @*
case ( state_reg )
 s0:  if ( a )
if ( b )
state_next = s2 ;
else
state_next = s1 ;
else
state_next = s0;
         s1:   if  ( a )
state_next = s0;
else
state_next = s1;
       s2:   state_next = s0;
default: state_next = s0;
endcase
   // MooreÐÍÂß¼­Êä³ö
assign  y1 = ( state_reg == s0 ) || ( state_reg == s1 ) ;
  // MealyÐÍÂß¼­Êä³ö
assign  y0 = ( state_reg == s0 ) & a & b ;

endmodule

