`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Zhenyu Li
// 
// Create Date: 02/07/2015 09:24:40 AM
// Design Name: Interface_IP
// Module Name: ram_read
// Project Name: ram_read
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


module ram_read #(
parameter   SHOW_H_START = 160,
              SHOW_V_START = 120,
              SHOW_WIDTH = 320,
              SHOW_HEIGHT = 240
 )(
input clk,
input valid,
input[15:0] din,
output reg[16:0] address,
input [11:0]vga_h_cnt,
input [10:0]vga_v_cnt,
output [3:0]vga_red,
output [3:0]vga_green,
output [3:0]vga_blue
    );
always@(posedge clk)begin
    if(vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)
        address <= address+1;
    else if(vga_v_cnt >=SHOW_V_START+SHOW_HEIGHT)
        address <= 17'b0;
end


assign     vga_red   = (valid==1 &&vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)?din[15:12]:4'b0;
assign     vga_green = (valid==1 && vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)?din[10:7]:4'b0;
assign     vga_blue  = (valid==1 &&vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)?din[4:1]:4'b0;

endmodule
