//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Tue Aug 04 16:50:09 2015
//Host        : xshxup15 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1
   (OV7725_D,
    OV7725_HREF,
    OV7725_PCLK,
    OV7725_SIOC,
    OV7725_SIOD,
    OV7725_VSYNC,
    OV7725_XCLK,
    clk_in1,
    rst,
    vga_blue,
    vga_green,
    vga_hsync,
    vga_red,
    vga_vsync);
  input [7:0]OV7725_D;
  input OV7725_HREF;
  input OV7725_PCLK;
  output OV7725_SIOC;
  inout OV7725_SIOD;
  input OV7725_VSYNC;
  output OV7725_XCLK;
  input clk_in1;
  input rst;
  output [3:0]vga_blue;
  output [3:0]vga_green;
  output vga_hsync;
  output [3:0]vga_red;
  output vga_vsync;

  wire IICctrl_0_I2C_SCLK;
  wire [7:0]IICctrl_0_LUT_INDEX;
  wire Net;
  wire [15:0]blk_mem_gen_0_doutb;
  wire [16:0]cam_ov7670_ov7725_0_addr;
  wire [15:0]cam_ov7670_ov7725_0_dout;
  wire cam_ov7670_ov7725_0_wclk;
  wire cam_ov7670_ov7725_0_we;
  wire clk_in1_1;
  wire clk_wiz_0_clk_out1;
  wire [7:0]d_1;
  wire href_1;
  wire [15:0]ov7725_regData_0_LUT_DATA;
  wire [7:0]ov7725_regData_0_Slave_Addr;
  wire pclk_1;
  wire [16:0]ram_read_0_address;
  wire [3:0]ram_read_0_vga_blue;
  wire [3:0]ram_read_0_vga_green;
  wire [3:0]ram_read_0_vga_red;
  wire [10:0]vga_0_h_cnt;
  wire vga_0_hsync;
  wire [9:0]vga_0_v_cnt;
  wire vga_0_valid;
  wire vga_0_vsync;
  wire vga_rst_1;
  wire vsync_1;

  assign OV7725_SIOC = IICctrl_0_I2C_SCLK;
  assign OV7725_XCLK = clk_wiz_0_clk_out1;
  assign clk_in1_1 = clk_in1;
  assign d_1 = OV7725_D[7:0];
  assign href_1 = OV7725_HREF;
  assign pclk_1 = OV7725_PCLK;
  assign vga_blue[3:0] = ram_read_0_vga_blue;
  assign vga_green[3:0] = ram_read_0_vga_green;
  assign vga_hsync = vga_0_hsync;
  assign vga_red[3:0] = ram_read_0_vga_red;
  assign vga_rst_1 = rst;
  assign vga_vsync = vga_0_vsync;
  assign vsync_1 = OV7725_VSYNC;
 IICctrl_0 design_1_IICctrl_0_0
       (.I2C_SCLK(IICctrl_0_I2C_SCLK),
        .I2C_SDAT(OV7725_SIOD),
        .LUT_DATA(ov7725_regData_0_LUT_DATA),
        .LUT_INDEX(IICctrl_0_LUT_INDEX),
        .Slave_Addr(ov7725_regData_0_Slave_Addr),
        .iCLK(clk_wiz_0_clk_out1),
        .rst(vga_rst_1));
blk_mem_gen_0 design_1_blk_mem_gen_0_0 
       (.addra(cam_ov7670_ov7725_0_addr),
        .addrb(ram_read_0_address),
        .clka(cam_ov7670_ov7725_0_wclk),
        .clkb(clk_wiz_0_clk_out1),
        .dina(cam_ov7670_ov7725_0_dout),
        .doutb(blk_mem_gen_0_doutb),
        .wea(cam_ov7670_ov7725_0_we));
 cam_ov7670_ov7725_0 design_1_cam_ov7670_ov7725_0_0
       (.addr(cam_ov7670_ov7725_0_addr),
        .d(d_1),
        .dout(cam_ov7670_ov7725_0_dout),
        .href(href_1),
        .pclk(pclk_1),
        .vsync(vsync_1),
        .wclk(cam_ov7670_ov7725_0_wclk),
        .we(cam_ov7670_ov7725_0_we));
clk_wiz_0 design_1_clk_wiz_0_0 
       (.clk_in1(clk_in1_1),
        .clk_out1(clk_wiz_0_clk_out1));
 ov7725_regData_0 design_1_ov7725_regData_0_0
       (.LUT_DATA(ov7725_regData_0_LUT_DATA),
        .LUT_INDEX(IICctrl_0_LUT_INDEX),
        .Slave_Addr(ov7725_regData_0_Slave_Addr));
 ram_read_0 design_1_ram_read_0_0
       (.address(ram_read_0_address),
        .clk(clk_wiz_0_clk_out1),
        .din(blk_mem_gen_0_doutb),
        .valid(vga_0_valid),
        .vga_blue(ram_read_0_vga_blue),
        .vga_green(ram_read_0_vga_green),
        .vga_h_cnt(vga_0_h_cnt),
        .vga_red(ram_read_0_vga_red),
        .vga_v_cnt(vga_0_v_cnt));
vga_0 design_1_vga_0_1 
       (.h_cnt(vga_0_h_cnt),
        .hsync(vga_0_hsync),
        .pclk(clk_wiz_0_clk_out1),
        .reset(vga_rst_1),
        .v_cnt(vga_0_v_cnt),
        .valid(vga_0_valid),
        .vsync(vga_0_vsync));
endmodule
