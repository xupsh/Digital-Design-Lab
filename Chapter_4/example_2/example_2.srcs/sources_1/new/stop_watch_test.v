`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:47:52 PM
// Design Name: 
// Module Name: stop_watch_test
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


module stop_watch_test 
   (input  clk,
     input [1:0] btn,
     output [3:0] an,
          output [7:0] sseg         
     );
     wire [3:0] d2,d1,d0;
     //实例化4位16进制数动态显示模块
     scan_led_hex_disp  scan_led_disp_unit
      (.clk(clk), .reset(1'b0),
.hex3(4'b0), .hex2(d2), .hex1(d1), .hex0(d0),
.dp_in(4'b1011), .an(an), .sseg(sseg));
//实例化秒表
stop_watch counter_unit
	 (.clk(clk), .go(btn[1]), .clr(btn[0]),
.d2(d2), .d1(d1), .d0(d0));
      endmodule

