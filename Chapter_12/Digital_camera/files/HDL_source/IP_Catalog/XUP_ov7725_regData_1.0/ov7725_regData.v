`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2015 11:18:17 PM
// Design Name: 
// Module Name: ov7725_regData
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


module ov7725_regData(
input		[7:0]	LUT_INDEX,
	output	reg	[15:0]	LUT_DATA,
	output [7:0] Slave_Addr)
;
assign Slave_Addr = 8'h42;

parameter	Read_DATA	=	0;		
parameter	SET_OV7725	=	2;			

always@(*)
begin
	case(LUT_INDEX)
	
   SET_OV7725 +  0     :LUT_DATA = 16'h1280; /*QVGA RGB565 */
 
         SET_OV7725 +     1  :LUT_DATA = 16'h0cd0; /*clock config*/    
      SET_OV7725 +     2  :LUT_DATA = 16'h1100; /*clock config*/    
     SET_OV7725 +  3     :LUT_DATA = 16'h1246; /*QVGA RGB565 */
     
    
 

	default		 :	LUT_DATA	=	0;
	endcase
end

endmodule

