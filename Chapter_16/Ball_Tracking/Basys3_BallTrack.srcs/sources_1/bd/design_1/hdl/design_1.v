//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Sun Mar 27 20:36:08 2016
//Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1
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

  wire IICctrl_0_I2C_SCLK;
  wire [7:0]IICctrl_0_LUT_INDEX;
  wire Move_EN_2;
  wire Net;
  wire [7:0]OV7725_D_1;
  wire OV7725_HREF_1;
  wire PWM_gen_0_PWM;
  wire PWM_gen_1_PWM;
  wire [15:0]blk_mem_gen_0_doutb;
  wire btn_ColorExtract_1;
  wire [16:0]cam_ov7670_ov7725_0_addr;
  wire [15:0]cam_ov7670_ov7725_0_dout;
  wire cam_ov7670_ov7725_0_wclk;
  wire cam_ov7670_ov7725_0_we;
  wire clk_in1_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire colorDetect_0_Binary_PreProcess;
  wire [23:0]colorDetect_0_RGB24_dis;
  wire [11:0]colorDetect_0_center_h;
  wire [10:0]colorDetect_0_center_v;
  wire debounce_0_o;
  wire dilate_0_pix_o;
  wire erode_0_pix_o;
  wire move_en_0_pwm_o;
  wire move_en_1_pwm_o;
  wire [15:0]ov7725_regData_0_LUT_DATA;
  wire [7:0]ov7725_regData_0_Slave_Addr;
  wire pclk_1;
  wire [16:0]ram_read_0_address;
  wire [3:0]ram_read_0_vga_blue;
  wire [3:0]ram_read_0_vga_green;
  wire [3:0]ram_read_0_vga_red;
  wire [23:0]rgb2hsv_top_0_HSV24;
  wire [23:0]rgb565_rgb888_0_rgb888;
  wire [15:0]rgb888_rgb565_0_rgb565;
  wire rst_1;
  wire [14:0]servo_ctrl_0_duty_x;
  wire [14:0]servo_ctrl_0_duty_y;
  wire sw_ColorClear_1;
  wire vauxn14_1;
  wire vauxn15_1;
  wire vauxn6_1;
  wire vauxn7_1;
  wire vauxp14_1;
  wire vauxp15_1;
  wire vauxp6_1;
  wire vauxp7_1;
  wire [11:0]vga_0_Hcnt_signal;
  wire [10:0]vga_0_Vcnt_signal;
  wire [11:0]vga_0_vga_h_cnt;
  wire vga_0_vga_hsync;
  wire [10:0]vga_0_vga_v_cnt;
  wire vga_0_vga_valid;
  wire vga_0_vga_vsync;
  wire vsync_1;
  wire [15:0]xadc_0_aux_out_6;
  wire [15:0]xadc_0_aux_out_7;
  wire [0:0]xlconstant_0_dout;

  assign Move_EN_2 = Move_EN;
  assign OV7725_D_1 = OV7725_D[7:0];
  assign OV7725_HREF_1 = OV7725_HREF;
  assign OV7725_SIOC = IICctrl_0_I2C_SCLK;
  assign OV7725_XCLK = clk_wiz_0_clk_out2;
  assign btn_ColorExtract_1 = btn_ColorExtract;
  assign clk_in1_1 = clk100;
  assign pclk_1 = OV7725_PCLK;
  assign pwm_out_x = move_en_0_pwm_o;
  assign pwm_out_y = move_en_1_pwm_o;
  assign rst_1 = rst;
  assign sw_ColorClear_1 = sw_ColorClear;
  assign vauxn14_1 = vauxn14;
  assign vauxn15_1 = vauxn15;
  assign vauxn6_1 = vauxn6;
  assign vauxn7_1 = vauxn7;
  assign vauxp14_1 = vauxp14;
  assign vauxp15_1 = vauxp15;
  assign vauxp6_1 = vauxp6;
  assign vauxp7_1 = vauxp7;
  assign vga_blue[3:0] = ram_read_0_vga_blue;
  assign vga_green[3:0] = ram_read_0_vga_green;
  assign vga_hsync = vga_0_vga_hsync;
  assign vga_red[3:0] = ram_read_0_vga_red;
  assign vga_vsync = vga_0_vga_vsync;
  assign vsync_1 = OV7725_VSYNC;
design_1_IICctrl_0_0 IICctrl_0
       (.I2C_SCLK(IICctrl_0_I2C_SCLK),
        .I2C_SDAT(OV7725_SIOD),
        .LUT_DATA(ov7725_regData_0_LUT_DATA),
        .LUT_INDEX(IICctrl_0_LUT_INDEX),
        .Slave_Addr(ov7725_regData_0_Slave_Addr),
        .iCLK(clk_wiz_0_clk_out2),
        .rst(debounce_0_o));
design_1_PWM_gen_0_0 PWM_gen_0
       (.PWM(PWM_gen_0_PWM),
        .clk_pwm(clk_wiz_0_clk_out1),
        .clr_pwm(debounce_0_o),
        .duty(servo_ctrl_0_duty_x));
design_1_PWM_gen_1_0 PWM_gen_1
       (.PWM(PWM_gen_1_PWM),
        .clk_pwm(clk_wiz_0_clk_out1),
        .clr_pwm(debounce_0_o),
        .duty(servo_ctrl_0_duty_y));
design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(cam_ov7670_ov7725_0_addr),
        .addrb(ram_read_0_address),
        .clka(cam_ov7670_ov7725_0_wclk),
        .clkb(clk_wiz_0_clk_out2),
        .dina(cam_ov7670_ov7725_0_dout),
        .doutb(blk_mem_gen_0_doutb),
        .wea(cam_ov7670_ov7725_0_we));
design_1_cam_ov7670_ov7725_0_0 cam_ov7670_ov7725_0
       (.addr(cam_ov7670_ov7725_0_addr),
        .d(OV7725_D_1),
        .dout(cam_ov7670_ov7725_0_dout),
        .href(OV7725_HREF_1),
        .pclk(pclk_1),
        .vsync(vsync_1),
        .wclk(cam_ov7670_ov7725_0_wclk),
        .we(cam_ov7670_ov7725_0_we));
design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2));
design_1_colorDetect_0_0 colorDetect_0
       (.Binary_PostProcess(dilate_0_pix_o),
        .Binary_PreProcess(colorDetect_0_Binary_PreProcess),
        .HSV24(rgb2hsv_top_0_HSV24),
        .PClk(clk_wiz_0_clk_out2),
        .RGB24(rgb565_rgb888_0_rgb888),
        .RGB24_dis(colorDetect_0_RGB24_dis),
        .VtcHCnt(vga_0_Hcnt_signal),
        .VtcVCnt(vga_0_Vcnt_signal),
        .btn_ColorExtract(btn_ColorExtract_1),
        .center_h(colorDetect_0_center_h),
        .center_v(colorDetect_0_center_v),
        .sw_ColorClear(sw_ColorClear_1));
design_1_debounce_0_0 debounce_0
       (.clk(clk_wiz_0_clk_out2),
        .clr(xlconstant_0_dout),
        .i(rst_1),
        .o(debounce_0_o));
design_1_dilate_0_0 dilate_0
       (.PCLK(clk_wiz_0_clk_out2),
        .VtcHCnt(vga_0_Hcnt_signal),
        .VtcVCnt(vga_0_Vcnt_signal),
        .pix_i(erode_0_pix_o),
        .pix_o(dilate_0_pix_o));
design_1_erode_0_0 erode_0
       (.PCLK(clk_wiz_0_clk_out2),
        .VtcHCnt(vga_0_Hcnt_signal),
        .VtcVCnt(vga_0_Vcnt_signal),
        .pix_i(colorDetect_0_Binary_PreProcess),
        .pix_o(erode_0_pix_o));
design_1_move_en_0_0 move_en_0
       (.Move_EN(Move_EN_2),
        .pwm_i(PWM_gen_0_PWM),
        .pwm_o(move_en_0_pwm_o));
design_1_move_en_1_0 move_en_1
       (.Move_EN(Move_EN_2),
        .pwm_i(PWM_gen_1_PWM),
        .pwm_o(move_en_1_pwm_o));
design_1_ov7725_regData_0_0 ov7725_regData_0
       (.LUT_DATA(ov7725_regData_0_LUT_DATA),
        .LUT_INDEX(IICctrl_0_LUT_INDEX),
        .Slave_Addr(ov7725_regData_0_Slave_Addr));
design_1_ram_read_0_0 ram_read_0
       (.address(ram_read_0_address),
        .clk(clk_wiz_0_clk_out2),
        .din(rgb888_rgb565_0_rgb565),
        .valid(vga_0_vga_valid),
        .vga_blue(ram_read_0_vga_blue),
        .vga_green(ram_read_0_vga_green),
        .vga_h_cnt(vga_0_vga_h_cnt),
        .vga_red(ram_read_0_vga_red),
        .vga_v_cnt(vga_0_vga_v_cnt));
design_1_region_cut_0_0 region_cut_0
       (.valid_h_cnt(vga_0_Hcnt_signal),
        .valid_v_cnt(vga_0_Vcnt_signal),
        .vga_h_cnt(vga_0_vga_h_cnt),
        .vga_v_cnt(vga_0_vga_v_cnt));
design_1_rgb2hsv_top_0_0 rgb2hsv_top_0
       (.HSV24(rgb2hsv_top_0_HSV24),
        .RGB24(rgb565_rgb888_0_rgb888),
        .pclk(clk_wiz_0_clk_out2));
design_1_rgb565_rgb888_0_0 rgb565_rgb888_0
       (.rgb565(blk_mem_gen_0_doutb),
        .rgb888(rgb565_rgb888_0_rgb888));
design_1_rgb888_rgb565_0_0 rgb888_rgb565_0
       (.rgb565(rgb888_rgb565_0_rgb565),
        .rgb888(colorDetect_0_RGB24_dis));
design_1_servo_ctrl_0_0 servo_ctrl_0
       (.ad_data_x(xadc_0_aux_out_7),
        .ad_data_y(xadc_0_aux_out_6),
        .duty_x(servo_ctrl_0_duty_x),
        .duty_y(servo_ctrl_0_duty_y),
        .vsync_in(vsync_1),
        .x(colorDetect_0_center_h),
        .y(colorDetect_0_center_v));
design_1_vga_0_0 vga_0
       (.vga_h_cnt(vga_0_vga_h_cnt),
        .vga_hsync(vga_0_vga_hsync),
        .vga_pclk(clk_wiz_0_clk_out2),
        .vga_rst(debounce_0_o),
        .vga_v_cnt(vga_0_vga_v_cnt),
        .vga_valid(vga_0_vga_valid),
        .vga_vsync(vga_0_vga_vsync));
design_1_xadc_0_0 xadc_0
       (.aux_out_6(xadc_0_aux_out_6),
        .aux_out_7(xadc_0_aux_out_7),
        .clk100(clk_wiz_0_clk_out1),
        .rst(debounce_0_o),
        .vauxn14(vauxn14_1),
        .vauxn15(vauxn15_1),
        .vauxn6(vauxn6_1),
        .vauxn7(vauxn7_1),
        .vauxp14(vauxp14_1),
        .vauxp15(vauxp15_1),
        .vauxp6(vauxp6_1),
        .vauxp7(vauxp7_1));
design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
