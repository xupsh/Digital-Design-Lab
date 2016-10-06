`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 04:17:36 PM
// Design Name: 
// Module Name: fsm_eg_2_seg
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


module fsm_eg_2_seg
   (
input  clk , reset,
input  a , b,
output reg y0 , y1
   );
   //  ×´Ì¬·ûºÅÉùÃ÷
localparam [ 1:0 ]  s0 = 2'b00 ,
                    s1 = 2'b01 ,
                    s2 = 2'b10 ;
//  ÐÅºÅÉùÃ÷
reg[ 1:0 ]  state_reg , state_next;
//  ×´Ì¬ÇÐ»»
always  @ ( posedge clk , posedge reset )
if  ( reset )
state_reg <= s0 ;
else
state_reg <= state_next ;
//  ÏÂÒ»×´Ì¬ºÍÊä³öÂß¼­
always  @*
begin
        state_next = state_reg ;  
        y1 = 1'b0;               
        y0 = 1'b0;             
case  (state_reg )
s0 :begin
y1 = 1'b1 ;
if  ( a )
if  ( b )
begin
state_next = s2 ;
                  y0 = 1'b1 ;
end
else
state_next = s1 ;
end
         s1: begin
              y1 = 1'b1;
if  ( a )
state_next = s0;
end
    s2: state_next = s0 ;
default :state_next = s0 ;
endcase
end
endmodule

