//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Sun Mar 27 20:36:08 2016
//Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Config_Done,
    Move_EN,
    OV7725_D,
    OV7725_HREF,
    OV7725_PCLK,
    OV7725_SIOC,
    OV7725_SIOD,
    OV7725_VSYNC,
    OV7725_XCLK,
    btn_ColorExtract,
    clk100,
    pwm_out_x,
    pwm_out_y,
    rst,
    sw_ColorClear,
    vauxn14,
    vauxn15,
    vauxn6,
    vauxn7,
    vauxp14,
    vauxp15,
    vauxp6,
    vauxp7,
    vga_blue,
    vga_green,
    vga_hsync,
    vga_red,
    vga_vsync);
  output Config_Done;
  input Move_EN;
  input [7:0]OV7725_D;
  input OV7725_HREF;
  input OV7725_PCLK;
  output OV7725_SIOC;
  inout OV7725_SIOD;
  input OV7725_VSYNC;
  output OV7725_XCLK;
  input btn_ColorExtract;
  input clk100;
  output pwm_out_x;
  output pwm_out_y;
  input rst;
  input sw_ColorClear;
  input vauxn14;
  input vauxn15;
  input vauxn6;
  input vauxn7;
  input vauxp14;
  input vauxp15;
  input vauxp6;
  input vauxp7;
  output [3:0]vga_blue;
  output [3:0]vga_green;
  output vga_hsync;
  output [3:0]vga_red;
  output vga_vsync;

  wire Config_Done;
  wire Move_EN;
  wire [7:0]OV7725_D;
  wire OV7725_HREF;
  wire OV7725_PCLK;
  wire OV7725_SIOC;
  wire OV7725_SIOD;
  wire OV7725_VSYNC;
  wire OV7725_XCLK;
  wire btn_ColorExtract;
  wire clk100;
  wire pwm_out_x;
  wire pwm_out_y;
  wire rst;
  wire sw_ColorClear;
  wire vauxn14;
  wire vauxn15;
  wire vauxn6;
  wire vauxn7;
  wire vauxp14;
  wire vauxp15;
  wire vauxp6;
  wire vauxp7;
  wire [3:0]vga_blue;
  wire [3:0]vga_green;
  wire vga_hsync;
  wire [3:0]vga_red;
  wire vga_vsync;

design_1 design_1_i
       (.Config_Done(Config_Done),
        .Move_EN(Move_EN),
        .OV7725_D(OV7725_D),
        .OV7725_HREF(OV7725_HREF),
        .OV7725_PCLK(OV7725_PCLK),
        .OV7725_SIOC(OV7725_SIOC),
        .OV7725_SIOD(OV7725_SIOD),
        .OV7725_VSYNC(OV7725_VSYNC),
        .OV7725_XCLK(OV7725_XCLK),
        .btn_ColorExtract(btn_ColorExtract),
        .clk100(clk100),
        .pwm_out_x(pwm_out_x),
        .pwm_out_y(pwm_out_y),
        .rst(rst),
        .sw_ColorClear(sw_ColorClear),
        .vauxn14(vauxn14),
        .vauxn15(vauxn15),
        .vauxn6(vauxn6),
        .vauxn7(vauxn7),
        .vauxp14(vauxp14),
        .vauxp15(vauxp15),
        .vauxp6(vauxp6),
        .vauxp7(vauxp7),
        .vga_blue(vga_blue),
        .vga_green(vga_green),
        .vga_hsync(vga_hsync),
        .vga_red(vga_red),
        .vga_vsync(vga_vsync));
endmodule
