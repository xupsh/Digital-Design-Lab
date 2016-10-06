`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 04:22:03 PM
// Design Name: 
// Module Name: seg_det_moore
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


module  seq_det_moore
  (
input   clk , reset,
input   din,
output reg sout
) ;
//  ×´Ì¬ÉùÃ÷
localparam[ 2:0 ]
s0 = 3'b000 ,
s1 = 3'b001 ,
s2 = 3'b010 ,
s3 = 3'b011 ,
s4 = 3'b100;
reg[ 2:0 ] cs , nst ;
//×´Ì¬¼Ä´æÆ÷
always@ (posedge clk , posedge reset )
if ( reset )
cs <= s0 ;
else
cs <= nst ;
    //C1Ä£¿é
always  @*
begin
case  (cs )
s0:
if (din == 1'b1 ) nst = s1 ;
            else nst = s0 ;
s1:
if (din == 1'b1 ) nst = s2 ;
            else nst = s0 ;
s2:
if (din == 1'b0 ) nst = s3 ;
            else nst = s2 ;
s3:
if (din == 1'b1 ) nst = s4;
            else nst = s0 ;
s4:
if (din == 1'b0 ) nst = s1 ;
            else nst = s0;
default : nst = s0 ;
endcase
end
  //C2Ä£¿é
always  @*
begin
  if (cs == s4) sout = 1;
  else sout = 0;
end
endmodule

