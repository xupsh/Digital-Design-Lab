`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2015 01:14:49 PM
// Design Name: 
// Module Name: rgb888_rgb565
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


module rgb888_rgb565(
input [23:0]rgb888,
output [15:0]rgb565
    );
    assign rgb565[15:11] = rgb888[23:19];
    assign rgb565[10:5] = rgb888[15:10];
    assign rgb565[4:0] = rgb888[7:3];

endmodule
