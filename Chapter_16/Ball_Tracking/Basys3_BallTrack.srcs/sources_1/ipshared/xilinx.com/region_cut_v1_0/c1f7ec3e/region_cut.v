`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2015 11:46:00 PM
// Design Name: 
// Module Name: region_cut
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


module region_cut #(
parameter   SHOW_H_START = 160,
              SHOW_V_START = 120,
              SHOW_WIDTH = 320,
              SHOW_HEIGHT = 240
 )
 (
input [11:0]vga_h_cnt,
input [10:0]vga_v_cnt,
output  [11:0]valid_h_cnt,
output  [10:0]valid_v_cnt
    );
    
        wire [11:0] valid_h_cnt;
    wire [10:0] valid_v_cnt;
    assign valid_h_cnt = ((vga_h_cnt-SHOW_H_START)>=0 && (vga_h_cnt-SHOW_H_START) < SHOW_WIDTH)?(vga_h_cnt-SHOW_H_START):0;
    assign valid_v_cnt = ((vga_v_cnt-SHOW_V_START)>=0 && (vga_v_cnt-SHOW_V_START) < SHOW_HEIGHT)?(vga_v_cnt-SHOW_V_START):0;
    
endmodule
