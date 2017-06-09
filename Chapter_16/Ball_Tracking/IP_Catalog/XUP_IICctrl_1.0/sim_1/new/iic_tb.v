`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2015 05:25:07 PM
// Design Name: 
// Module Name: iic_tb
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


module iic_tb;
// Inputs
	reg clk_25;
	reg reset;
reg[15:0] LUT_DATA;
	// Outputs
	wire I2C_SCLK;
   wire I2C_SDAT;

	
IICctrl u_iic
(
	.iCLK(clk_25),	
    .rst(reset),		
	.I2C_SCLK(I2C_SCLK),	
	.I2C_SDAT(I2C_SDAT)	,
	.LUT_INDEX(), 
    .LUT_DATA(LUT_DATA),    
    .Slave_Addr(8'h42)
);

initial begin
clk_25 = 0;
reset = 0;
#100
reset= 1;
#10
reset= 0;

#1000
LUT_DATA= 16'h1280;

end

 initial forever #4 clk_25= ~ clk_25;
 
endmodule
