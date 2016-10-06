`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 04:22:31 PM
// Design Name: 
// Module Name: seq_det_mealy
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


module  seq_det_mealy
  (
input   clk , reset,
input   din,
output reg sout
) ;
//  ×´Ì¬ÉùÃ÷
localparam[ 1:0 ]
s0 = 2'b00 ,
s1 = 2'b01 ,
s2 = 2'b10 ,
s3 = 2'b11;
reg[ 1:0 ] cs , nst ;
//×´Ì¬×ªÒÆ
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
s3: nst = s0 ;
default : nst = s0 ;
endcase
end
  //C2Ä£¿é
always  @*
begin
  if(reset == 0)   sout = 0;
if ((cs == s3) &&(din==1'b1)) sout = 1;
    else sout = 0;
end
endmodule

