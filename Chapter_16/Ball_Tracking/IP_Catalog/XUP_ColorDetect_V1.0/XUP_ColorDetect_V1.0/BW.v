`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:29:45 01/15/2014 
// Design Name: 
// Module Name:    BW 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BW(
input [23:0] HSV24,
input [23:0] HSV_Detect,
output reg Binary_out
);

reg [7:0] H_diff;
reg [7:0] S_diff;
reg [7:0] V_diff;
reg [8:0] diff_sum;

always@(*) begin
	
	//different for each channel
	//Hue
	if(HSV24[23:16] > HSV_Detect[23:16])
		H_diff <= HSV24[23:16] - HSV_Detect[23:16];
	else
		H_diff <= HSV_Detect[23:16] - HSV24[23:16];
	//Saturation
	if(HSV24[15:8] > HSV_Detect[15:8])
		S_diff <= HSV24[15:8] - HSV_Detect[15:8];
	else
		S_diff <= HSV_Detect[15:8] - HSV24[15:8];
	//Value
	if(HSV24[7:0] > HSV_Detect[7:0])
		V_diff <= HSV24[7:0] - HSV_Detect[7:0];
	else
		V_diff <= HSV_Detect[7:0] - HSV24[7:0];
		

        diff_sum <= H_diff/2 + S_diff/4 + V_diff/4;
        
       //  threshold
        if(diff_sum > 24|| H_diff/2 > 9 ||  S_diff/4 > 15 || V_diff/4 >15)
            Binary_out <= 0;
        else
            Binary_out <= 1;


end

endmodule
