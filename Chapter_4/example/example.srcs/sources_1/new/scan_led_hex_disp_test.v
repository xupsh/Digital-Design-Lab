`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:44:14 PM
// Design Name: 
// Module Name: scan_led_hex_disp_test
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


module scan_led_hex_disp_test 
   (input  clk,
     input [7:0] sw,
     output [3:0] an,
          output [7:0] sseg        
     );
     wire [3:0] a,b;
     wire [7:0] sum;
     assign a = sw[3:0];
     assign b = sw[7:4];
     assign sum = {4'b0,a} + {4'b0,b};
      //实例化4位16进制数动态显示模块
     scan_led_hex_disp scan_led_disp_unit
      (.clk(clk), 
      .reset(1'b0),
    .hex3(sum[7:4]), 
    .hex2(sum[3:0]),
     .hex1(b),
      .hex0(a),
    .dp_in(4'b1011), 
    .an(an), .sseg(sseg));
      endmodule
