// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Wed Jan 27 18:31:28 2016
// Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/zhehengt/Desktop/XUP_drafts_V1.2/program/OLED/OLED.sim/sim_1/synth/func/tb_func_synth.v
// Design      : oled_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module oled_init
   (D,
    O1,
    spi_send,
    init_done,
    Q,
    cur_st,
    I1,
    I2,
    E,
    sck_reg_BUFG,
    reset_IBUF);
  output [6:0]D;
  output [0:0]O1;
  output spi_send;
  output init_done;
  input [6:0]Q;
  input [2:0]cur_st;
  input I1;
  input I2;
  input [0:0]E;
  input sck_reg_BUFG;
  input reset_IBUF;

  wire [6:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [0:0]O1;
  wire [6:0]Q;
  wire [2:0]cur_st;
  wire init_done;
  wire \n_0_FSM_sequential_cur_st[0]_i_1__0 ;
  wire \n_0_FSM_sequential_cur_st[1]_i_1 ;
  wire \n_0_FSM_sequential_cur_st[2]_i_1__0 ;
  wire \n_0_FSM_sequential_cur_st[3]_i_2 ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_sequential_cur_st_reg[0] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_sequential_cur_st_reg[1] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_sequential_cur_st_reg[2] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_sequential_cur_st_reg[3] ;
  wire reset_IBUF;
  wire sck_reg_BUFG;
  wire [6:0]spi_data_init;
  wire spi_send;

LUT4 #(
    .INIT(16'h001F)) 
     \FSM_sequential_cur_st[0]_i_1__0 
       (.I0(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[3] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[0] ),
        .O(\n_0_FSM_sequential_cur_st[0]_i_1__0 ));
LUT4 #(
    .INIT(16'h0770)) 
     \FSM_sequential_cur_st[1]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[3] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[0] ),
        .O(\n_0_FSM_sequential_cur_st[1]_i_1 ));
LUT4 #(
    .INIT(16'h006A)) 
     \FSM_sequential_cur_st[2]_i_1__0 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[3] ),
        .O(\n_0_FSM_sequential_cur_st[2]_i_1__0 ));
LUT4 #(
    .INIT(16'h0780)) 
     \FSM_sequential_cur_st[3]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[3] ),
        .O(\n_0_FSM_sequential_cur_st[3]_i_2 ));
(* KEEP = "yes" *) 
   FDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_cur_st_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\n_0_FSM_sequential_cur_st[0]_i_1__0 ),
        .Q(\n_0_FSM_sequential_cur_st_reg[0] ));
(* KEEP = "yes" *) 
   FDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_cur_st_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\n_0_FSM_sequential_cur_st[1]_i_1 ),
        .Q(\n_0_FSM_sequential_cur_st_reg[1] ));
(* KEEP = "yes" *) 
   FDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_cur_st_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\n_0_FSM_sequential_cur_st[2]_i_1__0 ),
        .Q(\n_0_FSM_sequential_cur_st_reg[2] ));
(* KEEP = "yes" *) 
   FDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_cur_st_reg[3] 
       (.C(sck_reg_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(\n_0_FSM_sequential_cur_st[3]_i_2 ),
        .Q(\n_0_FSM_sequential_cur_st_reg[3] ));
LUT4 #(
    .INIT(16'h1000)) 
     \cur_st[0]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[3] ),
        .O(init_done));
LUT5 #(
    .INIT(32'h0CCCCCCA)) 
     \spi_data_out[0]_i_1 
       (.I0(spi_data_init[0]),
        .I1(Q[0]),
        .I2(cur_st[2]),
        .I3(cur_st[0]),
        .I4(cur_st[1]),
        .O(D[0]));
LUT4 #(
    .INIT(16'h03EA)) 
     \spi_data_out[0]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[3] ),
        .O(spi_data_init[0]));
LUT5 #(
    .INIT(32'h0CCCCCCA)) 
     \spi_data_out[1]_i_1 
       (.I0(spi_data_init[1]),
        .I1(Q[1]),
        .I2(cur_st[2]),
        .I3(cur_st[0]),
        .I4(cur_st[1]),
        .O(D[1]));
LUT4 #(
    .INIT(16'h1009)) 
     \spi_data_out[1]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[3] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[1] ),
        .O(spi_data_init[1]));
LUT5 #(
    .INIT(32'h0CCCCCCA)) 
     \spi_data_out[2]_i_1 
       (.I0(spi_data_init[2]),
        .I1(Q[2]),
        .I2(cur_st[2]),
        .I3(cur_st[0]),
        .I4(cur_st[1]),
        .O(D[2]));
LUT4 #(
    .INIT(16'h150B)) 
     \spi_data_out[2]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[3] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[0] ),
        .O(spi_data_init[2]));
LUT5 #(
    .INIT(32'h0CCCCCCA)) 
     \spi_data_out[3]_i_1 
       (.I0(spi_data_init[3]),
        .I1(Q[3]),
        .I2(cur_st[2]),
        .I3(cur_st[0]),
        .I4(cur_st[1]),
        .O(D[3]));
LUT4 #(
    .INIT(16'h0E41)) 
     \spi_data_out[3]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[3] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[1] ),
        .O(spi_data_init[3]));
LUT5 #(
    .INIT(32'h0CCCCCCA)) 
     \spi_data_out[4]_i_1 
       (.I0(spi_data_init[4]),
        .I1(Q[4]),
        .I2(cur_st[2]),
        .I3(cur_st[0]),
        .I4(cur_st[1]),
        .O(D[4]));
LUT4 #(
    .INIT(16'h2016)) 
     \spi_data_out[4]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[3] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[1] ),
        .O(spi_data_init[4]));
LUT5 #(
    .INIT(32'h0CCCCCCA)) 
     \spi_data_out[5]_i_1 
       (.I0(spi_data_init[5]),
        .I1(Q[5]),
        .I2(cur_st[2]),
        .I3(cur_st[0]),
        .I4(cur_st[1]),
        .O(D[5]));
LUT4 #(
    .INIT(16'h0045)) 
     \spi_data_out[5]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[3] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[1] ),
        .O(spi_data_init[5]));
LUT5 #(
    .INIT(32'h0CCCCCCA)) 
     \spi_data_out[6]_i_1 
       (.I0(spi_data_init[6]),
        .I1(Q[6]),
        .I2(cur_st[2]),
        .I3(cur_st[0]),
        .I4(cur_st[1]),
        .O(D[6]));
LUT4 #(
    .INIT(16'h2214)) 
     \spi_data_out[6]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[3] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[2] ),
        .O(spi_data_init[6]));
LUT4 #(
    .INIT(16'h11FD)) 
     \spi_data_out[7]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[3] ),
        .O(O1));
LUT6 #(
    .INIT(64'hFFFFFFFF0000EFFF)) 
     spi_send_i_1
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[3] ),
        .I4(I1),
        .I5(I2),
        .O(spi_send));
endmodule

(* X = "48'b000000000110001100010100000010000001010001100011" *) (* I = "48'b000000000000000001000001011111110100000100000000" *) (* L = "48'b000000000111111101000000010000000100000001000000" *) 
(* N = "48'b000000000111111100000100000010000001000001111111" *) 
(* NotValidForBitStream *)
module oled_top
   (sck,
    miso,
    reset,
    reset_oled,
    clk,
    dc);
  output sck;
  output miso;
  input reset;
  output reset_oled;
  input clk;
  output dc;

  wire clear;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cur_st;
  wire dc;
  wire dc_OBUF;
  wire init_done;
  wire miso;
  wire miso_OBUF;
  wire n_0_dc_in_reg;
  wire n_0_oled_init;
  wire n_0_oled_write_data;
  wire \n_0_reset_count[0]_i_10 ;
  wire \n_0_reset_count[0]_i_11 ;
  wire \n_0_reset_count[0]_i_12 ;
  wire \n_0_reset_count[0]_i_13 ;
  wire \n_0_reset_count[0]_i_3 ;
  wire \n_0_reset_count[0]_i_4 ;
  wire \n_0_reset_count[0]_i_5 ;
  wire \n_0_reset_count[0]_i_6 ;
  wire \n_0_reset_count[0]_i_7 ;
  wire \n_0_reset_count[0]_i_8 ;
  wire \n_0_reset_count[0]_i_9 ;
  wire \n_0_reset_count[12]_i_2 ;
  wire \n_0_reset_count[12]_i_3 ;
  wire \n_0_reset_count[12]_i_4 ;
  wire \n_0_reset_count[12]_i_5 ;
  wire \n_0_reset_count[16]_i_2 ;
  wire \n_0_reset_count[16]_i_3 ;
  wire \n_0_reset_count[16]_i_4 ;
  wire \n_0_reset_count[16]_i_5 ;
  wire \n_0_reset_count[20]_i_2 ;
  wire \n_0_reset_count[20]_i_3 ;
  wire \n_0_reset_count[20]_i_4 ;
  wire \n_0_reset_count[20]_i_5 ;
  wire \n_0_reset_count[24]_i_2 ;
  wire \n_0_reset_count[24]_i_3 ;
  wire \n_0_reset_count[24]_i_4 ;
  wire \n_0_reset_count[24]_i_5 ;
  wire \n_0_reset_count[28]_i_2 ;
  wire \n_0_reset_count[28]_i_3 ;
  wire \n_0_reset_count[28]_i_4 ;
  wire \n_0_reset_count[28]_i_5 ;
  wire \n_0_reset_count[4]_i_2 ;
  wire \n_0_reset_count[4]_i_3 ;
  wire \n_0_reset_count[4]_i_4 ;
  wire \n_0_reset_count[4]_i_5 ;
  wire \n_0_reset_count[8]_i_2 ;
  wire \n_0_reset_count[8]_i_3 ;
  wire \n_0_reset_count[8]_i_4 ;
  wire \n_0_reset_count[8]_i_5 ;
  wire \n_0_reset_count_reg[0]_i_2 ;
  wire \n_0_reset_count_reg[12]_i_1 ;
  wire \n_0_reset_count_reg[16]_i_1 ;
  wire \n_0_reset_count_reg[20]_i_1 ;
  wire \n_0_reset_count_reg[24]_i_1 ;
  wire \n_0_reset_count_reg[4]_i_1 ;
  wire \n_0_reset_count_reg[8]_i_1 ;
  wire n_0_reset_oled_i_1;
  wire n_0_reset_oled_i_2;
  wire n_0_reset_oled_i_3;
  wire n_0_reset_oled_i_4;
  wire n_0_reset_oled_i_5;
  wire n_0_reset_oled_i_6;
  wire n_0_reset_oled_i_7;
  wire n_0_reset_oled_i_8;
  wire \n_0_set_pos_x[1]_i_1 ;
  wire \n_0_set_pos_x[2]_i_1 ;
  wire \n_0_set_pos_x[3]_i_1 ;
  wire \n_0_set_pos_x[5]_i_1 ;
  wire \n_0_set_pos_x[6]_i_1 ;
  wire \n_0_spi_data_out_reg[0] ;
  wire \n_0_spi_data_out_reg[1] ;
  wire \n_0_spi_data_out_reg[2] ;
  wire \n_0_spi_data_out_reg[3] ;
  wire \n_0_spi_data_out_reg[4] ;
  wire \n_0_spi_data_out_reg[5] ;
  wire \n_0_spi_data_out_reg[6] ;
  wire \n_0_spi_data_out_reg[7] ;
  wire n_0_spi_send_i_2;
  wire n_0_spi_send_reg;
  wire \n_0_write_data[14]_i_1 ;
  wire \n_0_write_data[19]_i_1 ;
  wire \n_0_write_data[21]_i_1 ;
  wire \n_0_write_data[28]_i_1 ;
  wire \n_0_write_data[36]_i_1 ;
  wire \n_0_write_data[4]_i_1 ;
  wire \n_0_write_data[5]_i_1 ;
  wire \n_0_write_data[6]_i_1 ;
  wire n_0_write_start_i_1;
  wire n_10_oled_write_data;
  wire n_11_oled_write_data;
  wire n_12_oled_write_data;
  wire n_1_oled_init;
  wire \n_1_reset_count_reg[0]_i_2 ;
  wire \n_1_reset_count_reg[12]_i_1 ;
  wire \n_1_reset_count_reg[16]_i_1 ;
  wire \n_1_reset_count_reg[20]_i_1 ;
  wire \n_1_reset_count_reg[24]_i_1 ;
  wire \n_1_reset_count_reg[28]_i_1 ;
  wire \n_1_reset_count_reg[4]_i_1 ;
  wire \n_1_reset_count_reg[8]_i_1 ;
  wire n_2_oled_init;
  wire \n_2_reset_count_reg[0]_i_2 ;
  wire \n_2_reset_count_reg[12]_i_1 ;
  wire \n_2_reset_count_reg[16]_i_1 ;
  wire \n_2_reset_count_reg[20]_i_1 ;
  wire \n_2_reset_count_reg[24]_i_1 ;
  wire \n_2_reset_count_reg[28]_i_1 ;
  wire \n_2_reset_count_reg[4]_i_1 ;
  wire \n_2_reset_count_reg[8]_i_1 ;
  wire n_2_spi_master;
  wire n_3_oled_init;
  wire \n_3_reset_count_reg[0]_i_2 ;
  wire \n_3_reset_count_reg[12]_i_1 ;
  wire \n_3_reset_count_reg[16]_i_1 ;
  wire \n_3_reset_count_reg[20]_i_1 ;
  wire \n_3_reset_count_reg[24]_i_1 ;
  wire \n_3_reset_count_reg[28]_i_1 ;
  wire \n_3_reset_count_reg[4]_i_1 ;
  wire \n_3_reset_count_reg[8]_i_1 ;
  wire n_4_oled_init;
  wire \n_4_reset_count_reg[0]_i_2 ;
  wire \n_4_reset_count_reg[12]_i_1 ;
  wire \n_4_reset_count_reg[16]_i_1 ;
  wire \n_4_reset_count_reg[20]_i_1 ;
  wire \n_4_reset_count_reg[24]_i_1 ;
  wire \n_4_reset_count_reg[28]_i_1 ;
  wire \n_4_reset_count_reg[4]_i_1 ;
  wire \n_4_reset_count_reg[8]_i_1 ;
  wire n_5_oled_init;
  wire \n_5_reset_count_reg[0]_i_2 ;
  wire \n_5_reset_count_reg[12]_i_1 ;
  wire \n_5_reset_count_reg[16]_i_1 ;
  wire \n_5_reset_count_reg[20]_i_1 ;
  wire \n_5_reset_count_reg[24]_i_1 ;
  wire \n_5_reset_count_reg[28]_i_1 ;
  wire \n_5_reset_count_reg[4]_i_1 ;
  wire \n_5_reset_count_reg[8]_i_1 ;
  wire n_6_oled_init;
  wire \n_6_reset_count_reg[0]_i_2 ;
  wire \n_6_reset_count_reg[12]_i_1 ;
  wire \n_6_reset_count_reg[16]_i_1 ;
  wire \n_6_reset_count_reg[20]_i_1 ;
  wire \n_6_reset_count_reg[24]_i_1 ;
  wire \n_6_reset_count_reg[28]_i_1 ;
  wire \n_6_reset_count_reg[4]_i_1 ;
  wire \n_6_reset_count_reg[8]_i_1 ;
  wire \n_7_reset_count_reg[0]_i_2 ;
  wire \n_7_reset_count_reg[12]_i_1 ;
  wire \n_7_reset_count_reg[16]_i_1 ;
  wire \n_7_reset_count_reg[20]_i_1 ;
  wire \n_7_reset_count_reg[24]_i_1 ;
  wire \n_7_reset_count_reg[28]_i_1 ;
  wire \n_7_reset_count_reg[4]_i_1 ;
  wire \n_7_reset_count_reg[8]_i_1 ;
  wire n_8_oled_write_data;
  wire n_9_oled_write_data;
  wire reset;
  wire reset_IBUF;
  wire [31:0]reset_count_reg;
  wire reset_oled;
  wire reset_oled_OBUF;
  wire sck;
  wire sck_OBUF;
  wire sck_reg;
  wire sck_reg_BUFG;
  wire [6:1]set_pos_x;
  wire [1:1]set_pos_y;
  wire [6:0]spi_data;
  wire [7:7]spi_data_init;
  wire spi_send;
  wire spi_send_done;
  wire [36:4]write_data;
  wire write_start;
  wire [3:3]\NLW_reset_count_reg[28]_i_1_CO_UNCONNECTED ;

BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \cur_st_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_12_oled_write_data),
        .Q(cur_st[0]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \cur_st_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_11_oled_write_data),
        .Q(cur_st[1]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \cur_st_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_10_oled_write_data),
        .Q(cur_st[2]),
        .R(reset_IBUF));
OBUF dc_OBUF_inst
       (.I(dc_OBUF),
        .O(dc));
FDRE #(
    .INIT(1'b0)) 
     dc_in_reg
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_8_oled_write_data),
        .Q(n_0_dc_in_reg),
        .R(reset_IBUF));
OBUF miso_OBUF_inst
       (.I(miso_OBUF),
        .O(miso));
oled_init oled_init
       (.D({n_0_oled_init,n_1_oled_init,n_2_oled_init,n_3_oled_init,n_4_oled_init,n_5_oled_init,n_6_oled_init}),
        .E(spi_send_done),
        .I1(n_0_spi_send_i_2),
        .I2(n_9_oled_write_data),
        .O1(spi_data_init),
        .Q(spi_data),
        .cur_st(cur_st),
        .init_done(init_done),
        .reset_IBUF(reset_IBUF),
        .sck_reg_BUFG(sck_reg_BUFG),
        .spi_send(spi_send));
oled_write_data oled_write_data
       (.D(n_0_oled_write_data),
        .E(spi_send_done),
        .I1({set_pos_x[6:5],set_pos_x[3:1]}),
        .O1(spi_data_init),
        .O2(n_8_oled_write_data),
        .O3(n_9_oled_write_data),
        .O4(n_10_oled_write_data),
        .O5(n_11_oled_write_data),
        .O6(n_12_oled_write_data),
        .Q(spi_data),
        .cur_st(cur_st),
        .init_done(init_done),
        .out0(n_2_spi_master),
        .reset_IBUF(reset_IBUF),
        .sck_reg_BUFG(sck_reg_BUFG),
        .set_pos_y(set_pos_y),
        .write_data({write_data[36],write_data[28],write_data[21],write_data[19],write_data[14],write_data[6:4]}),
        .write_start(write_start));
IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
LUT5 #(
    .INIT(32'hFFFEAAAA)) 
     \reset_count[0]_i_1 
       (.I0(\n_0_reset_count[0]_i_3 ),
        .I1(reset_count_reg[11]),
        .I2(reset_count_reg[12]),
        .I3(\n_0_reset_count[0]_i_4 ),
        .I4(reset_count_reg[13]),
        .O(clear));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \reset_count[0]_i_10 
       (.I0(reset_count_reg[31]),
        .I1(reset_count_reg[30]),
        .I2(reset_count_reg[24]),
        .I3(reset_count_reg[23]),
        .I4(reset_count_reg[26]),
        .I5(reset_count_reg[25]),
        .O(\n_0_reset_count[0]_i_10 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \reset_count[0]_i_11 
       (.I0(reset_count_reg[16]),
        .I1(reset_count_reg[14]),
        .I2(reset_count_reg[28]),
        .I3(reset_count_reg[29]),
        .I4(reset_count_reg[17]),
        .I5(reset_count_reg[27]),
        .O(\n_0_reset_count[0]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \reset_count[0]_i_12 
       (.I0(reset_count_reg[10]),
        .I1(reset_count_reg[8]),
        .I2(reset_count_reg[9]),
        .O(\n_0_reset_count[0]_i_12 ));
LUT5 #(
    .INIT(32'hAAAAAAA8)) 
     \reset_count[0]_i_13 
       (.I0(reset_count_reg[4]),
        .I1(reset_count_reg[3]),
        .I2(reset_count_reg[2]),
        .I3(reset_count_reg[0]),
        .I4(reset_count_reg[1]),
        .O(\n_0_reset_count[0]_i_13 ));
LUT3 #(
    .INIT(8'hFE)) 
     \reset_count[0]_i_3 
       (.I0(\n_0_reset_count[0]_i_9 ),
        .I1(\n_0_reset_count[0]_i_10 ),
        .I2(\n_0_reset_count[0]_i_11 ),
        .O(\n_0_reset_count[0]_i_3 ));
LUT5 #(
    .INIT(32'hAAAAAAA8)) 
     \reset_count[0]_i_4 
       (.I0(\n_0_reset_count[0]_i_12 ),
        .I1(\n_0_reset_count[0]_i_13 ),
        .I2(reset_count_reg[7]),
        .I3(reset_count_reg[6]),
        .I4(reset_count_reg[5]),
        .O(\n_0_reset_count[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[0]_i_5 
       (.I0(reset_count_reg[3]),
        .O(\n_0_reset_count[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[0]_i_6 
       (.I0(reset_count_reg[2]),
        .O(\n_0_reset_count[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[0]_i_7 
       (.I0(reset_count_reg[1]),
        .O(\n_0_reset_count[0]_i_7 ));
LUT1 #(
    .INIT(2'h1)) 
     \reset_count[0]_i_8 
       (.I0(reset_count_reg[0]),
        .O(\n_0_reset_count[0]_i_8 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \reset_count[0]_i_9 
       (.I0(reset_count_reg[18]),
        .I1(reset_count_reg[19]),
        .I2(reset_count_reg[21]),
        .I3(reset_count_reg[15]),
        .I4(reset_count_reg[20]),
        .I5(reset_count_reg[22]),
        .O(\n_0_reset_count[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[12]_i_2 
       (.I0(reset_count_reg[15]),
        .O(\n_0_reset_count[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[12]_i_3 
       (.I0(reset_count_reg[14]),
        .O(\n_0_reset_count[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[12]_i_4 
       (.I0(reset_count_reg[13]),
        .O(\n_0_reset_count[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[12]_i_5 
       (.I0(reset_count_reg[12]),
        .O(\n_0_reset_count[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[16]_i_2 
       (.I0(reset_count_reg[19]),
        .O(\n_0_reset_count[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[16]_i_3 
       (.I0(reset_count_reg[18]),
        .O(\n_0_reset_count[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[16]_i_4 
       (.I0(reset_count_reg[17]),
        .O(\n_0_reset_count[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[16]_i_5 
       (.I0(reset_count_reg[16]),
        .O(\n_0_reset_count[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[20]_i_2 
       (.I0(reset_count_reg[23]),
        .O(\n_0_reset_count[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[20]_i_3 
       (.I0(reset_count_reg[22]),
        .O(\n_0_reset_count[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[20]_i_4 
       (.I0(reset_count_reg[21]),
        .O(\n_0_reset_count[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[20]_i_5 
       (.I0(reset_count_reg[20]),
        .O(\n_0_reset_count[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[24]_i_2 
       (.I0(reset_count_reg[27]),
        .O(\n_0_reset_count[24]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[24]_i_3 
       (.I0(reset_count_reg[26]),
        .O(\n_0_reset_count[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[24]_i_4 
       (.I0(reset_count_reg[25]),
        .O(\n_0_reset_count[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[24]_i_5 
       (.I0(reset_count_reg[24]),
        .O(\n_0_reset_count[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[28]_i_2 
       (.I0(reset_count_reg[31]),
        .O(\n_0_reset_count[28]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[28]_i_3 
       (.I0(reset_count_reg[30]),
        .O(\n_0_reset_count[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[28]_i_4 
       (.I0(reset_count_reg[29]),
        .O(\n_0_reset_count[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[28]_i_5 
       (.I0(reset_count_reg[28]),
        .O(\n_0_reset_count[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[4]_i_2 
       (.I0(reset_count_reg[7]),
        .O(\n_0_reset_count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[4]_i_3 
       (.I0(reset_count_reg[6]),
        .O(\n_0_reset_count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[4]_i_4 
       (.I0(reset_count_reg[5]),
        .O(\n_0_reset_count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[4]_i_5 
       (.I0(reset_count_reg[4]),
        .O(\n_0_reset_count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[8]_i_2 
       (.I0(reset_count_reg[11]),
        .O(\n_0_reset_count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[8]_i_3 
       (.I0(reset_count_reg[10]),
        .O(\n_0_reset_count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[8]_i_4 
       (.I0(reset_count_reg[9]),
        .O(\n_0_reset_count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \reset_count[8]_i_5 
       (.I0(reset_count_reg[8]),
        .O(\n_0_reset_count[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_reset_count_reg[0]_i_2 ),
        .Q(reset_count_reg[0]),
        .R(clear));
CARRY4 \reset_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_reset_count_reg[0]_i_2 ,\n_1_reset_count_reg[0]_i_2 ,\n_2_reset_count_reg[0]_i_2 ,\n_3_reset_count_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_reset_count_reg[0]_i_2 ,\n_5_reset_count_reg[0]_i_2 ,\n_6_reset_count_reg[0]_i_2 ,\n_7_reset_count_reg[0]_i_2 }),
        .S({\n_0_reset_count[0]_i_5 ,\n_0_reset_count[0]_i_6 ,\n_0_reset_count[0]_i_7 ,\n_0_reset_count[0]_i_8 }));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_reset_count_reg[8]_i_1 ),
        .Q(reset_count_reg[10]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_reset_count_reg[8]_i_1 ),
        .Q(reset_count_reg[11]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_reset_count_reg[12]_i_1 ),
        .Q(reset_count_reg[12]),
        .R(clear));
CARRY4 \reset_count_reg[12]_i_1 
       (.CI(\n_0_reset_count_reg[8]_i_1 ),
        .CO({\n_0_reset_count_reg[12]_i_1 ,\n_1_reset_count_reg[12]_i_1 ,\n_2_reset_count_reg[12]_i_1 ,\n_3_reset_count_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_reset_count_reg[12]_i_1 ,\n_5_reset_count_reg[12]_i_1 ,\n_6_reset_count_reg[12]_i_1 ,\n_7_reset_count_reg[12]_i_1 }),
        .S({\n_0_reset_count[12]_i_2 ,\n_0_reset_count[12]_i_3 ,\n_0_reset_count[12]_i_4 ,\n_0_reset_count[12]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_reset_count_reg[12]_i_1 ),
        .Q(reset_count_reg[13]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_reset_count_reg[12]_i_1 ),
        .Q(reset_count_reg[14]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_reset_count_reg[12]_i_1 ),
        .Q(reset_count_reg[15]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_reset_count_reg[16]_i_1 ),
        .Q(reset_count_reg[16]),
        .R(clear));
CARRY4 \reset_count_reg[16]_i_1 
       (.CI(\n_0_reset_count_reg[12]_i_1 ),
        .CO({\n_0_reset_count_reg[16]_i_1 ,\n_1_reset_count_reg[16]_i_1 ,\n_2_reset_count_reg[16]_i_1 ,\n_3_reset_count_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_reset_count_reg[16]_i_1 ,\n_5_reset_count_reg[16]_i_1 ,\n_6_reset_count_reg[16]_i_1 ,\n_7_reset_count_reg[16]_i_1 }),
        .S({\n_0_reset_count[16]_i_2 ,\n_0_reset_count[16]_i_3 ,\n_0_reset_count[16]_i_4 ,\n_0_reset_count[16]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_reset_count_reg[16]_i_1 ),
        .Q(reset_count_reg[17]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_reset_count_reg[16]_i_1 ),
        .Q(reset_count_reg[18]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_reset_count_reg[16]_i_1 ),
        .Q(reset_count_reg[19]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_reset_count_reg[0]_i_2 ),
        .Q(reset_count_reg[1]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_reset_count_reg[20]_i_1 ),
        .Q(reset_count_reg[20]),
        .R(clear));
CARRY4 \reset_count_reg[20]_i_1 
       (.CI(\n_0_reset_count_reg[16]_i_1 ),
        .CO({\n_0_reset_count_reg[20]_i_1 ,\n_1_reset_count_reg[20]_i_1 ,\n_2_reset_count_reg[20]_i_1 ,\n_3_reset_count_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_reset_count_reg[20]_i_1 ,\n_5_reset_count_reg[20]_i_1 ,\n_6_reset_count_reg[20]_i_1 ,\n_7_reset_count_reg[20]_i_1 }),
        .S({\n_0_reset_count[20]_i_2 ,\n_0_reset_count[20]_i_3 ,\n_0_reset_count[20]_i_4 ,\n_0_reset_count[20]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_reset_count_reg[20]_i_1 ),
        .Q(reset_count_reg[21]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_reset_count_reg[20]_i_1 ),
        .Q(reset_count_reg[22]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_reset_count_reg[20]_i_1 ),
        .Q(reset_count_reg[23]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_reset_count_reg[24]_i_1 ),
        .Q(reset_count_reg[24]),
        .R(clear));
CARRY4 \reset_count_reg[24]_i_1 
       (.CI(\n_0_reset_count_reg[20]_i_1 ),
        .CO({\n_0_reset_count_reg[24]_i_1 ,\n_1_reset_count_reg[24]_i_1 ,\n_2_reset_count_reg[24]_i_1 ,\n_3_reset_count_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_reset_count_reg[24]_i_1 ,\n_5_reset_count_reg[24]_i_1 ,\n_6_reset_count_reg[24]_i_1 ,\n_7_reset_count_reg[24]_i_1 }),
        .S({\n_0_reset_count[24]_i_2 ,\n_0_reset_count[24]_i_3 ,\n_0_reset_count[24]_i_4 ,\n_0_reset_count[24]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_reset_count_reg[24]_i_1 ),
        .Q(reset_count_reg[25]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_reset_count_reg[24]_i_1 ),
        .Q(reset_count_reg[26]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_reset_count_reg[24]_i_1 ),
        .Q(reset_count_reg[27]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_reset_count_reg[28]_i_1 ),
        .Q(reset_count_reg[28]),
        .R(clear));
CARRY4 \reset_count_reg[28]_i_1 
       (.CI(\n_0_reset_count_reg[24]_i_1 ),
        .CO({\NLW_reset_count_reg[28]_i_1_CO_UNCONNECTED [3],\n_1_reset_count_reg[28]_i_1 ,\n_2_reset_count_reg[28]_i_1 ,\n_3_reset_count_reg[28]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_reset_count_reg[28]_i_1 ,\n_5_reset_count_reg[28]_i_1 ,\n_6_reset_count_reg[28]_i_1 ,\n_7_reset_count_reg[28]_i_1 }),
        .S({\n_0_reset_count[28]_i_2 ,\n_0_reset_count[28]_i_3 ,\n_0_reset_count[28]_i_4 ,\n_0_reset_count[28]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_reset_count_reg[28]_i_1 ),
        .Q(reset_count_reg[29]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_reset_count_reg[0]_i_2 ),
        .Q(reset_count_reg[2]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_reset_count_reg[28]_i_1 ),
        .Q(reset_count_reg[30]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_reset_count_reg[28]_i_1 ),
        .Q(reset_count_reg[31]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_reset_count_reg[0]_i_2 ),
        .Q(reset_count_reg[3]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_reset_count_reg[4]_i_1 ),
        .Q(reset_count_reg[4]),
        .R(clear));
CARRY4 \reset_count_reg[4]_i_1 
       (.CI(\n_0_reset_count_reg[0]_i_2 ),
        .CO({\n_0_reset_count_reg[4]_i_1 ,\n_1_reset_count_reg[4]_i_1 ,\n_2_reset_count_reg[4]_i_1 ,\n_3_reset_count_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_reset_count_reg[4]_i_1 ,\n_5_reset_count_reg[4]_i_1 ,\n_6_reset_count_reg[4]_i_1 ,\n_7_reset_count_reg[4]_i_1 }),
        .S({\n_0_reset_count[4]_i_2 ,\n_0_reset_count[4]_i_3 ,\n_0_reset_count[4]_i_4 ,\n_0_reset_count[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_reset_count_reg[4]_i_1 ),
        .Q(reset_count_reg[5]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_reset_count_reg[4]_i_1 ),
        .Q(reset_count_reg[6]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_reset_count_reg[4]_i_1 ),
        .Q(reset_count_reg[7]),
        .R(clear));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_reset_count_reg[8]_i_1 ),
        .Q(reset_count_reg[8]),
        .R(clear));
CARRY4 \reset_count_reg[8]_i_1 
       (.CI(\n_0_reset_count_reg[4]_i_1 ),
        .CO({\n_0_reset_count_reg[8]_i_1 ,\n_1_reset_count_reg[8]_i_1 ,\n_2_reset_count_reg[8]_i_1 ,\n_3_reset_count_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_reset_count_reg[8]_i_1 ,\n_5_reset_count_reg[8]_i_1 ,\n_6_reset_count_reg[8]_i_1 ,\n_7_reset_count_reg[8]_i_1 }),
        .S({\n_0_reset_count[8]_i_2 ,\n_0_reset_count[8]_i_3 ,\n_0_reset_count[8]_i_4 ,\n_0_reset_count[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \reset_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_reset_count_reg[8]_i_1 ),
        .Q(reset_count_reg[9]),
        .R(clear));
OBUF reset_oled_OBUF_inst
       (.I(reset_oled_OBUF),
        .O(reset_oled));
LUT6 #(
    .INIT(64'hFDFFFFFF0D000000)) 
     reset_oled_i_1
       (.I0(n_0_reset_oled_i_2),
        .I1(n_0_reset_oled_i_3),
        .I2(\n_0_reset_count[0]_i_3 ),
        .I3(n_0_reset_oled_i_4),
        .I4(n_0_reset_oled_i_5),
        .I5(reset_oled_OBUF),
        .O(n_0_reset_oled_i_1));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h1)) 
     reset_oled_i_2
       (.I0(reset_count_reg[0]),
        .I1(reset_count_reg[1]),
        .O(n_0_reset_oled_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
     reset_oled_i_3
       (.I0(n_0_reset_oled_i_6),
        .I1(reset_count_reg[3]),
        .I2(reset_count_reg[13]),
        .I3(reset_count_reg[9]),
        .I4(reset_count_reg[2]),
        .I5(n_0_reset_oled_i_7),
        .O(n_0_reset_oled_i_3));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h00801504)) 
     reset_oled_i_4
       (.I0(reset_count_reg[0]),
        .I1(reset_count_reg[1]),
        .I2(reset_count_reg[8]),
        .I3(reset_count_reg[7]),
        .I4(reset_count_reg[2]),
        .O(n_0_reset_oled_i_4));
LUT5 #(
    .INIT(32'h61000000)) 
     reset_oled_i_5
       (.I0(reset_count_reg[13]),
        .I1(reset_count_reg[12]),
        .I2(reset_count_reg[9]),
        .I3(n_0_reset_oled_i_8),
        .I4(n_0_reset_oled_i_6),
        .O(n_0_reset_oled_i_5));
LUT4 #(
    .INIT(16'h0001)) 
     reset_oled_i_6
       (.I0(reset_count_reg[4]),
        .I1(reset_count_reg[11]),
        .I2(reset_count_reg[6]),
        .I3(reset_count_reg[5]),
        .O(n_0_reset_oled_i_6));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'hFF7F)) 
     reset_oled_i_7
       (.I0(reset_count_reg[7]),
        .I1(reset_count_reg[12]),
        .I2(reset_count_reg[8]),
        .I3(reset_count_reg[10]),
        .O(n_0_reset_oled_i_7));
LUT6 #(
    .INIT(64'h0088000000008002)) 
     reset_oled_i_8
       (.I0(reset_count_reg[3]),
        .I1(reset_count_reg[8]),
        .I2(reset_count_reg[9]),
        .I3(reset_count_reg[10]),
        .I4(reset_count_reg[7]),
        .I5(reset_count_reg[12]),
        .O(n_0_reset_oled_i_8));
FDCE #(
    .INIT(1'b0)) 
     reset_oled_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(n_0_reset_oled_i_1),
        .Q(reset_oled_OBUF));
OBUF sck_OBUF_inst
       (.I(sck_OBUF),
        .O(sck));
BUFG sck_reg_BUFG_inst
       (.I(sck_reg),
        .O(sck_reg_BUFG));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'h8F)) 
     \set_pos_x[1]_i_1 
       (.I0(cur_st[2]),
        .I1(cur_st[1]),
        .I2(cur_st[0]),
        .O(\n_0_set_pos_x[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     \set_pos_x[2]_i_1 
       (.I0(cur_st[2]),
        .I1(cur_st[0]),
        .I2(cur_st[1]),
        .O(\n_0_set_pos_x[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hDB)) 
     \set_pos_x[3]_i_1 
       (.I0(cur_st[2]),
        .I1(cur_st[1]),
        .I2(cur_st[0]),
        .O(\n_0_set_pos_x[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \set_pos_x[5]_i_1 
       (.I0(cur_st[0]),
        .I1(cur_st[2]),
        .I2(cur_st[1]),
        .O(\n_0_set_pos_x[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hEF)) 
     \set_pos_x[6]_i_1 
       (.I0(cur_st[1]),
        .I1(cur_st[2]),
        .I2(cur_st[0]),
        .O(\n_0_set_pos_x[6]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \set_pos_x_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_set_pos_x[1]_i_1 ),
        .Q(set_pos_x[1]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \set_pos_x_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_set_pos_x[2]_i_1 ),
        .Q(set_pos_x[2]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \set_pos_x_reg[3] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_set_pos_x[3]_i_1 ),
        .Q(set_pos_x[3]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \set_pos_x_reg[5] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_set_pos_x[5]_i_1 ),
        .Q(set_pos_x[5]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \set_pos_x_reg[6] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_set_pos_x[6]_i_1 ),
        .Q(set_pos_x[6]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \set_pos_y_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(set_pos_y),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \spi_data_out_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_6_oled_init),
        .Q(\n_0_spi_data_out_reg[0] ),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \spi_data_out_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_5_oled_init),
        .Q(\n_0_spi_data_out_reg[1] ),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \spi_data_out_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_4_oled_init),
        .Q(\n_0_spi_data_out_reg[2] ),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \spi_data_out_reg[3] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_3_oled_init),
        .Q(\n_0_spi_data_out_reg[3] ),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \spi_data_out_reg[4] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_2_oled_init),
        .Q(\n_0_spi_data_out_reg[4] ),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \spi_data_out_reg[5] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_1_oled_init),
        .Q(\n_0_spi_data_out_reg[5] ),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \spi_data_out_reg[6] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_0_oled_init),
        .Q(\n_0_spi_data_out_reg[6] ),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \spi_data_out_reg[7] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_0_oled_write_data),
        .Q(\n_0_spi_data_out_reg[7] ),
        .R(reset_IBUF));
spi_master spi_master
       (.CLK(clk_IBUF_BUFG),
        .E(spi_send_done),
        .I1(n_0_spi_send_reg),
        .I2(n_0_dc_in_reg),
        .Q({\n_0_spi_data_out_reg[7] ,\n_0_spi_data_out_reg[6] ,\n_0_spi_data_out_reg[5] ,\n_0_spi_data_out_reg[4] ,\n_0_spi_data_out_reg[3] ,\n_0_spi_data_out_reg[2] ,\n_0_spi_data_out_reg[1] ,\n_0_spi_data_out_reg[0] }),
        .dc_OBUF(dc_OBUF),
        .miso_OBUF(miso_OBUF),
        .out0(n_2_spi_master),
        .reset_IBUF(reset_IBUF),
        .sck_OBUF(sck_OBUF),
        .sck_reg(sck_reg),
        .sck_reg_BUFG(sck_reg_BUFG));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     spi_send_i_2
       (.I0(cur_st[2]),
        .I1(cur_st[0]),
        .I2(cur_st[1]),
        .O(n_0_spi_send_i_2));
FDRE #(
    .INIT(1'b0)) 
     spi_send_reg
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(spi_send),
        .Q(n_0_spi_send_reg),
        .R(reset_IBUF));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h34)) 
     \write_data[14]_i_1 
       (.I0(cur_st[0]),
        .I1(cur_st[2]),
        .I2(cur_st[1]),
        .O(\n_0_write_data[14]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hDF)) 
     \write_data[19]_i_1 
       (.I0(cur_st[0]),
        .I1(cur_st[2]),
        .I2(cur_st[1]),
        .O(\n_0_write_data[19]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'h14)) 
     \write_data[21]_i_1 
       (.I0(cur_st[0]),
        .I1(cur_st[2]),
        .I2(cur_st[1]),
        .O(\n_0_write_data[21]_i_1 ));
LUT2 #(
    .INIT(4'h9)) 
     \write_data[28]_i_1 
       (.I0(cur_st[2]),
        .I1(cur_st[1]),
        .O(\n_0_write_data[28]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'h60)) 
     \write_data[36]_i_1 
       (.I0(cur_st[1]),
        .I1(cur_st[2]),
        .I2(cur_st[0]),
        .O(\n_0_write_data[36]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \write_data[4]_i_1 
       (.I0(cur_st[2]),
        .I1(cur_st[0]),
        .I2(cur_st[1]),
        .O(\n_0_write_data[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hE3)) 
     \write_data[5]_i_1 
       (.I0(cur_st[0]),
        .I1(cur_st[1]),
        .I2(cur_st[2]),
        .O(\n_0_write_data[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hF9)) 
     \write_data[6]_i_1 
       (.I0(cur_st[1]),
        .I1(cur_st[2]),
        .I2(cur_st[0]),
        .O(\n_0_write_data[6]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \write_data_reg[14] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_write_data[14]_i_1 ),
        .Q(write_data[14]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \write_data_reg[19] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_write_data[19]_i_1 ),
        .Q(write_data[19]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \write_data_reg[21] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_write_data[21]_i_1 ),
        .Q(write_data[21]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \write_data_reg[28] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_write_data[28]_i_1 ),
        .Q(write_data[28]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \write_data_reg[36] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_write_data[36]_i_1 ),
        .Q(write_data[36]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \write_data_reg[4] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_write_data[4]_i_1 ),
        .Q(write_data[4]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \write_data_reg[5] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_write_data[5]_i_1 ),
        .Q(write_data[5]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \write_data_reg[6] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_write_data[6]_i_1 ),
        .Q(write_data[6]),
        .R(reset_IBUF));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h7E02)) 
     write_start_i_1
       (.I0(cur_st[0]),
        .I1(cur_st[2]),
        .I2(cur_st[1]),
        .I3(write_start),
        .O(n_0_write_start_i_1));
FDRE #(
    .INIT(1'b0)) 
     write_start_reg
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_0_write_start_i_1),
        .Q(write_start),
        .R(reset_IBUF));
endmodule

module oled_write_data
   (D,
    Q,
    O2,
    O3,
    O4,
    O5,
    O6,
    sck_reg_BUFG,
    reset_IBUF,
    write_start,
    out0,
    cur_st,
    O1,
    set_pos_y,
    init_done,
    E,
    I1,
    write_data);
  output [0:0]D;
  output [6:0]Q;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  input sck_reg_BUFG;
  input reset_IBUF;
  input write_start;
  input out0;
  input [2:0]cur_st;
  input [0:0]O1;
  input [0:0]set_pos_y;
  input init_done;
  input [0:0]E;
  input [4:0]I1;
  input [7:0]write_data;

  wire [0:0]D;
  wire [0:0]E;
  wire [4:0]I1;
  wire [0:0]O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire [6:0]Q;
  wire [3:1]count;
  wire [2:0]cur_st;
  wire init_done;
  wire \n_0_FSM_sequential_cur_st[0]_i_1 ;
  wire \n_0_FSM_sequential_cur_st[1]_i_1 ;
  wire \n_0_FSM_sequential_cur_st[1]_i_2 ;
  wire \n_0_FSM_sequential_cur_st[1]_i_3 ;
  wire \n_0_FSM_sequential_cur_st[2]_i_1 ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_sequential_cur_st_reg[0] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_sequential_cur_st_reg[1] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_sequential_cur_st_reg[2] ;
  wire \n_0_count[0]_i_1__0 ;
  wire \n_0_count_reg[0] ;
  wire \n_0_count_reg[1] ;
  wire \n_0_count_reg[2] ;
  wire \n_0_count_reg[3] ;
  wire \n_0_cur_st[2]_i_2 ;
  wire \n_0_spi_data[0]_i_1 ;
  wire \n_0_spi_data[0]_i_2 ;
  wire \n_0_spi_data[1]_i_1 ;
  wire \n_0_spi_data[1]_i_2 ;
  wire \n_0_spi_data[2]_i_1 ;
  wire \n_0_spi_data[3]_i_1 ;
  wire \n_0_spi_data[4]_i_1 ;
  wire \n_0_spi_data[5]_i_1 ;
  wire \n_0_spi_data[6]_i_1 ;
  wire \n_0_spi_data[7]_i_1 ;
  wire \n_0_spi_data[7]_i_2 ;
  wire n_0_spi_send_i_1__0;
  wire \n_0_write_data_tmp_reg[0] ;
  wire \n_0_write_data_tmp_reg[10] ;
  wire \n_0_write_data_tmp_reg[11] ;
  wire \n_0_write_data_tmp_reg[12] ;
  wire \n_0_write_data_tmp_reg[13] ;
  wire \n_0_write_data_tmp_reg[14] ;
  wire \n_0_write_data_tmp_reg[16] ;
  wire \n_0_write_data_tmp_reg[18] ;
  wire \n_0_write_data_tmp_reg[19] ;
  wire \n_0_write_data_tmp_reg[20] ;
  wire \n_0_write_data_tmp_reg[21] ;
  wire \n_0_write_data_tmp_reg[22] ;
  wire \n_0_write_data_tmp_reg[24] ;
  wire \n_0_write_data_tmp_reg[26] ;
  wire \n_0_write_data_tmp_reg[27] ;
  wire \n_0_write_data_tmp_reg[28] ;
  wire \n_0_write_data_tmp_reg[29] ;
  wire \n_0_write_data_tmp_reg[2] ;
  wire \n_0_write_data_tmp_reg[30] ;
  wire \n_0_write_data_tmp_reg[36] ;
  wire \n_0_write_data_tmp_reg[38] ;
  wire \n_0_write_data_tmp_reg[3] ;
  wire \n_0_write_data_tmp_reg[4] ;
  wire \n_0_write_data_tmp_reg[5] ;
  wire \n_0_write_data_tmp_reg[6] ;
  wire \n_0_write_data_tmp_reg[8] ;
  wire \n_0_x_tmp[0]_i_1 ;
  wire \n_0_x_tmp[4]_i_2 ;
  wire \n_0_x_tmp[5]_i_2 ;
  wire \n_0_x_tmp[7]_i_1 ;
  wire \n_0_x_tmp[7]_i_3 ;
  wire \n_0_x_tmp_reg[0] ;
  wire \n_0_x_tmp_reg[1] ;
  wire \n_0_x_tmp_reg[2] ;
  wire \n_0_x_tmp_reg[3] ;
  wire \n_0_x_tmp_reg[4] ;
  wire \n_0_x_tmp_reg[5] ;
  wire \n_0_x_tmp_reg[6] ;
  wire \n_0_x_tmp_reg[7] ;
  wire \n_0_y_tmp[1]_i_1 ;
  wire \n_0_y_tmp_reg[1] ;
  wire out0;
  wire reset_IBUF;
  wire sck_reg_BUFG;
  wire [0:0]set_pos_y;
  wire [7:7]spi_data;
  wire spi_send_write;
  wire [7:0]write_data;
  wire [38:0]write_data_tmp;
  wire write_start;
  wire [7:1]x_tmp;

LUT6 #(
    .INIT(64'hF0330FFF00000CCA)) 
     \FSM_sequential_cur_st[0]_i_1 
       (.I0(write_start),
        .I1(E),
        .I2(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I4(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I5(\n_0_FSM_sequential_cur_st_reg[0] ),
        .O(\n_0_FSM_sequential_cur_st[0]_i_1 ));
LUT6 #(
    .INIT(64'hFF14FFFFFF140000)) 
     \FSM_sequential_cur_st[1]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I3(\n_0_FSM_sequential_cur_st[1]_i_2 ),
        .I4(\n_0_FSM_sequential_cur_st[1]_i_3 ),
        .I5(\n_0_FSM_sequential_cur_st_reg[1] ),
        .O(\n_0_FSM_sequential_cur_st[1]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000004000)) 
     \FSM_sequential_cur_st[1]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(\n_0_count_reg[0] ),
        .I3(\n_0_count_reg[2] ),
        .I4(\n_0_count_reg[1] ),
        .I5(\n_0_count_reg[3] ),
        .O(\n_0_FSM_sequential_cur_st[1]_i_2 ));
LUT6 #(
    .INIT(64'h00FF0C0CFF0C0CAA)) 
     \FSM_sequential_cur_st[1]_i_3 
       (.I0(write_start),
        .I1(out0),
        .I2(reset_IBUF),
        .I3(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I4(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I5(\n_0_FSM_sequential_cur_st_reg[0] ),
        .O(\n_0_FSM_sequential_cur_st[1]_i_3 ));
LUT6 #(
    .INIT(64'hFFF30F350FC00C00)) 
     \FSM_sequential_cur_st[2]_i_1 
       (.I0(write_start),
        .I1(E),
        .I2(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I4(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I5(\n_0_FSM_sequential_cur_st_reg[2] ),
        .O(\n_0_FSM_sequential_cur_st[2]_i_1 ));
(* KEEP = "yes" *) 
   FDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_cur_st_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_0_FSM_sequential_cur_st[0]_i_1 ),
        .Q(\n_0_FSM_sequential_cur_st_reg[0] ));
(* KEEP = "yes" *) 
   FDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_cur_st_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_0_FSM_sequential_cur_st[1]_i_1 ),
        .Q(\n_0_FSM_sequential_cur_st_reg[1] ));
(* KEEP = "yes" *) 
   FDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_cur_st_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_0_FSM_sequential_cur_st[2]_i_1 ),
        .Q(\n_0_FSM_sequential_cur_st_reg[2] ));
LUT2 #(
    .INIT(4'h2)) 
     \count[0]_i_1__0 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_count_reg[0] ),
        .O(\n_0_count[0]_i_1__0 ));
LUT3 #(
    .INIT(8'h28)) 
     \count[1]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_count_reg[1] ),
        .I2(\n_0_count_reg[0] ),
        .O(count[1]));
LUT4 #(
    .INIT(16'h2888)) 
     \count[2]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_count_reg[2] ),
        .I2(\n_0_count_reg[1] ),
        .I3(\n_0_count_reg[0] ),
        .O(count[2]));
LUT5 #(
    .INIT(32'h28888888)) 
     \count[3]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_count_reg[3] ),
        .I2(\n_0_count_reg[2] ),
        .I3(\n_0_count_reg[0] ),
        .I4(\n_0_count_reg[1] ),
        .O(count[3]));
FDCE #(
    .INIT(1'b0)) 
     \count_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(\n_0_count[0]_i_1__0 ),
        .Q(\n_0_count_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \count_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(count[1]),
        .Q(\n_0_count_reg[1] ));
FDCE #(
    .INIT(1'b0)) 
     \count_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(count[2]),
        .Q(\n_0_count_reg[2] ));
FDCE #(
    .INIT(1'b0)) 
     \count_reg[3] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(count[3]),
        .Q(\n_0_count_reg[3] ));
LUT6 #(
    .INIT(64'hFFFC0303FCFC03AA)) 
     \cur_st[0]_i_1 
       (.I0(init_done),
        .I1(\n_0_cur_st[2]_i_2 ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(cur_st[1]),
        .I4(cur_st[0]),
        .I5(cur_st[2]),
        .O(O6));
LUT5 #(
    .INIT(32'hF1F0E1F0)) 
     \cur_st[1]_i_1 
       (.I0(\n_0_cur_st[2]_i_2 ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(cur_st[1]),
        .I3(cur_st[0]),
        .I4(cur_st[2]),
        .O(O5));
LUT5 #(
    .INIT(32'hFFFF1000)) 
     \cur_st[2]_i_1 
       (.I0(\n_0_cur_st[2]_i_2 ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(cur_st[1]),
        .I3(cur_st[0]),
        .I4(cur_st[2]),
        .O(O4));
LUT2 #(
    .INIT(4'h7)) 
     \cur_st[2]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .O(\n_0_cur_st[2]_i_2 ));
LUT6 #(
    .INIT(64'h00000000007E0000)) 
     dc_in_i_1
       (.I0(cur_st[1]),
        .I1(cur_st[0]),
        .I2(cur_st[2]),
        .I3(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I4(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I5(\n_0_FSM_sequential_cur_st_reg[1] ),
        .O(O2));
LUT3 #(
    .INIT(8'hB8)) 
     \spi_data[0]_i_1 
       (.I0(\n_0_write_data_tmp_reg[0] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_spi_data[0]_i_2 ),
        .O(\n_0_spi_data[0]_i_1 ));
LUT5 #(
    .INIT(32'hAFC0A0C0)) 
     \spi_data[0]_i_2 
       (.I0(\n_0_x_tmp_reg[0] ),
        .I1(\n_0_x_tmp_reg[4] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I4(\n_0_y_tmp_reg[1] ),
        .O(\n_0_spi_data[0]_i_2 ));
LUT3 #(
    .INIT(8'hB8)) 
     \spi_data[1]_i_1 
       (.I0(\n_0_write_data_tmp_reg[5] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_spi_data[1]_i_2 ),
        .O(\n_0_spi_data[1]_i_1 ));
LUT5 #(
    .INIT(32'hAFC0A0C0)) 
     \spi_data[1]_i_2 
       (.I0(\n_0_x_tmp_reg[1] ),
        .I1(\n_0_x_tmp_reg[5] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I4(\n_0_y_tmp_reg[1] ),
        .O(\n_0_spi_data[1]_i_2 ));
LUT6 #(
    .INIT(64'hBBB888B888888888)) 
     \spi_data[2]_i_1 
       (.I0(\n_0_write_data_tmp_reg[2] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_x_tmp_reg[6] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I4(\n_0_x_tmp_reg[2] ),
        .I5(\n_0_FSM_sequential_cur_st_reg[1] ),
        .O(\n_0_spi_data[2]_i_1 ));
LUT6 #(
    .INIT(64'hBBB888B888888888)) 
     \spi_data[3]_i_1 
       (.I0(\n_0_write_data_tmp_reg[3] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_x_tmp_reg[7] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I4(\n_0_x_tmp_reg[3] ),
        .I5(\n_0_FSM_sequential_cur_st_reg[1] ),
        .O(\n_0_spi_data[3]_i_1 ));
LUT4 #(
    .INIT(16'h8BB8)) 
     \spi_data[4]_i_1 
       (.I0(\n_0_write_data_tmp_reg[4] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[1] ),
        .O(\n_0_spi_data[4]_i_1 ));
LUT4 #(
    .INIT(16'h88B8)) 
     \spi_data[5]_i_1 
       (.I0(\n_0_write_data_tmp_reg[5] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[1] ),
        .O(\n_0_spi_data[5]_i_1 ));
LUT2 #(
    .INIT(4'h8)) 
     \spi_data[6]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I1(\n_0_write_data_tmp_reg[6] ),
        .O(\n_0_spi_data[6]_i_1 ));
LUT4 #(
    .INIT(16'h01FF)) 
     \spi_data[7]_i_1 
       (.I0(reset_IBUF),
        .I1(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[2] ),
        .O(\n_0_spi_data[7]_i_1 ));
LUT3 #(
    .INIT(8'h04)) 
     \spi_data[7]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[2] ),
        .O(\n_0_spi_data[7]_i_2 ));
LUT5 #(
    .INIT(32'h2AAB2AA8)) 
     \spi_data_out[7]_i_1 
       (.I0(spi_data),
        .I1(cur_st[2]),
        .I2(cur_st[0]),
        .I3(cur_st[1]),
        .I4(O1),
        .O(D));
FDCE #(
    .INIT(1'b0)) 
     \spi_data_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_spi_data[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(\n_0_spi_data[0]_i_1 ),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \spi_data_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_spi_data[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(\n_0_spi_data[1]_i_1 ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \spi_data_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_spi_data[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(\n_0_spi_data[2]_i_1 ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \spi_data_reg[3] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_spi_data[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(\n_0_spi_data[3]_i_1 ),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \spi_data_reg[4] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_spi_data[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(\n_0_spi_data[4]_i_1 ),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \spi_data_reg[5] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_spi_data[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(\n_0_spi_data[5]_i_1 ),
        .Q(Q[5]));
FDCE #(
    .INIT(1'b0)) 
     \spi_data_reg[6] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_spi_data[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(\n_0_spi_data[6]_i_1 ),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \spi_data_reg[7] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_spi_data[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(\n_0_spi_data[7]_i_2 ),
        .Q(spi_data));
LUT4 #(
    .INIT(16'hDE1E)) 
     spi_send_i_1__0
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I3(spi_send_write),
        .O(n_0_spi_send_i_1__0));
LUT4 #(
    .INIT(16'h7E00)) 
     spi_send_i_3
       (.I0(cur_st[1]),
        .I1(cur_st[0]),
        .I2(cur_st[2]),
        .I3(spi_send_write),
        .O(O3));
FDCE #(
    .INIT(1'b0)) 
     spi_send_reg
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(n_0_spi_send_i_1__0),
        .Q(spi_send_write));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[0]_i_1 
       (.I0(\n_0_write_data_tmp_reg[8] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[1]),
        .O(write_data_tmp[0]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[10]_i_1 
       (.I0(\n_0_write_data_tmp_reg[18] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[6]),
        .O(write_data_tmp[10]));
LUT2 #(
    .INIT(4'h8)) 
     \write_data_tmp[11]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_write_data_tmp_reg[19] ),
        .O(write_data_tmp[11]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[12]_i_1 
       (.I0(\n_0_write_data_tmp_reg[20] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[1]),
        .O(write_data_tmp[12]));
LUT2 #(
    .INIT(4'h8)) 
     \write_data_tmp[13]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_write_data_tmp_reg[21] ),
        .O(write_data_tmp[13]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[14]_i_1 
       (.I0(\n_0_write_data_tmp_reg[22] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[3]),
        .O(write_data_tmp[14]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[16]_i_1 
       (.I0(\n_0_write_data_tmp_reg[24] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[5]),
        .O(write_data_tmp[16]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[18]_i_1 
       (.I0(\n_0_write_data_tmp_reg[26] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[5]),
        .O(write_data_tmp[18]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[19]_i_1 
       (.I0(\n_0_write_data_tmp_reg[27] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[4]),
        .O(write_data_tmp[19]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[20]_i_1 
       (.I0(\n_0_write_data_tmp_reg[28] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[5]),
        .O(write_data_tmp[20]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[21]_i_1 
       (.I0(\n_0_write_data_tmp_reg[29] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[5]),
        .O(write_data_tmp[21]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[22]_i_1 
       (.I0(\n_0_write_data_tmp_reg[30] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[3]),
        .O(write_data_tmp[22]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[24]_i_1 
       (.I0(\n_0_write_data_tmp_reg[38] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[5]),
        .O(write_data_tmp[24]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[26]_i_1 
       (.I0(\n_0_write_data_tmp_reg[36] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[1]),
        .O(write_data_tmp[26]));
LUT2 #(
    .INIT(4'h8)) 
     \write_data_tmp[27]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_write_data_tmp_reg[36] ),
        .O(write_data_tmp[27]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[28]_i_1 
       (.I0(\n_0_write_data_tmp_reg[36] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[6]),
        .O(write_data_tmp[28]));
LUT2 #(
    .INIT(4'h8)) 
     \write_data_tmp[29]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_write_data_tmp_reg[38] ),
        .O(write_data_tmp[29]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[2]_i_1 
       (.I0(\n_0_write_data_tmp_reg[10] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[0]),
        .O(write_data_tmp[2]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[30]_i_1 
       (.I0(\n_0_write_data_tmp_reg[38] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[3]),
        .O(write_data_tmp[30]));
LUT2 #(
    .INIT(4'h2)) 
     \write_data_tmp[36]_i_1 
       (.I0(write_data[7]),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .O(write_data_tmp[36]));
LUT2 #(
    .INIT(4'h2)) 
     \write_data_tmp[38]_i_1 
       (.I0(write_data[2]),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .O(write_data_tmp[38]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[3]_i_1 
       (.I0(\n_0_write_data_tmp_reg[11] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[0]),
        .O(write_data_tmp[3]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[4]_i_1 
       (.I0(\n_0_write_data_tmp_reg[12] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[0]),
        .O(write_data_tmp[4]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[5]_i_1 
       (.I0(\n_0_write_data_tmp_reg[13] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[1]),
        .O(write_data_tmp[5]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[6]_i_1 
       (.I0(\n_0_write_data_tmp_reg[14] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[2]),
        .O(write_data_tmp[6]));
LUT3 #(
    .INIT(8'hB8)) 
     \write_data_tmp[8]_i_1 
       (.I0(\n_0_write_data_tmp_reg[16] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I2(write_data[5]),
        .O(write_data_tmp[8]));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[0]),
        .Q(\n_0_write_data_tmp_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[10] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[10]),
        .Q(\n_0_write_data_tmp_reg[10] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[11] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[11]),
        .Q(\n_0_write_data_tmp_reg[11] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[12] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[12]),
        .Q(\n_0_write_data_tmp_reg[12] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[13] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[13]),
        .Q(\n_0_write_data_tmp_reg[13] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[14] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[14]),
        .Q(\n_0_write_data_tmp_reg[14] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[16] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[16]),
        .Q(\n_0_write_data_tmp_reg[16] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[18] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[18]),
        .Q(\n_0_write_data_tmp_reg[18] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[19] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[19]),
        .Q(\n_0_write_data_tmp_reg[19] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[20] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[20]),
        .Q(\n_0_write_data_tmp_reg[20] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[21] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[21]),
        .Q(\n_0_write_data_tmp_reg[21] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[22] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[22]),
        .Q(\n_0_write_data_tmp_reg[22] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[24] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[24]),
        .Q(\n_0_write_data_tmp_reg[24] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[26] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[26]),
        .Q(\n_0_write_data_tmp_reg[26] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[27] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[27]),
        .Q(\n_0_write_data_tmp_reg[27] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[28] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[28]),
        .Q(\n_0_write_data_tmp_reg[28] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[29] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[29]),
        .Q(\n_0_write_data_tmp_reg[29] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[2]),
        .Q(\n_0_write_data_tmp_reg[2] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[30] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[30]),
        .Q(\n_0_write_data_tmp_reg[30] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[36] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[36]),
        .Q(\n_0_write_data_tmp_reg[36] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[38] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[38]),
        .Q(\n_0_write_data_tmp_reg[38] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[3] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[3]),
        .Q(\n_0_write_data_tmp_reg[3] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[4] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[4]),
        .Q(\n_0_write_data_tmp_reg[4] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[5] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[5]),
        .Q(\n_0_write_data_tmp_reg[5] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[6] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[6]),
        .Q(\n_0_write_data_tmp_reg[6] ));
FDCE #(
    .INIT(1'b0)) 
     \write_data_tmp_reg[8] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(write_data_tmp[8]),
        .Q(\n_0_write_data_tmp_reg[8] ));
LUT2 #(
    .INIT(4'h2)) 
     \x_tmp[0]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_x_tmp_reg[0] ),
        .O(\n_0_x_tmp[0]_i_1 ));
LUT4 #(
    .INIT(16'h6F60)) 
     \x_tmp[1]_i_1 
       (.I0(\n_0_x_tmp_reg[0] ),
        .I1(\n_0_x_tmp_reg[1] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(I1[0]),
        .O(x_tmp[1]));
LUT5 #(
    .INIT(32'h78FF7800)) 
     \x_tmp[2]_i_1 
       (.I0(\n_0_x_tmp_reg[0] ),
        .I1(\n_0_x_tmp_reg[1] ),
        .I2(\n_0_x_tmp_reg[2] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I4(I1[1]),
        .O(x_tmp[2]));
LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
     \x_tmp[3]_i_1 
       (.I0(\n_0_x_tmp_reg[1] ),
        .I1(\n_0_x_tmp_reg[0] ),
        .I2(\n_0_x_tmp_reg[2] ),
        .I3(\n_0_x_tmp_reg[3] ),
        .I4(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I5(I1[2]),
        .O(x_tmp[3]));
LUT4 #(
    .INIT(16'h6F60)) 
     \x_tmp[4]_i_1 
       (.I0(\n_0_x_tmp[4]_i_2 ),
        .I1(\n_0_x_tmp_reg[4] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(write_data[1]),
        .O(x_tmp[4]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \x_tmp[4]_i_2 
       (.I0(\n_0_x_tmp_reg[3] ),
        .I1(\n_0_x_tmp_reg[1] ),
        .I2(\n_0_x_tmp_reg[0] ),
        .I3(\n_0_x_tmp_reg[2] ),
        .O(\n_0_x_tmp[4]_i_2 ));
LUT4 #(
    .INIT(16'h6F60)) 
     \x_tmp[5]_i_1 
       (.I0(\n_0_x_tmp[5]_i_2 ),
        .I1(\n_0_x_tmp_reg[5] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(I1[3]),
        .O(x_tmp[5]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \x_tmp[5]_i_2 
       (.I0(\n_0_x_tmp_reg[4] ),
        .I1(\n_0_x_tmp_reg[2] ),
        .I2(\n_0_x_tmp_reg[0] ),
        .I3(\n_0_x_tmp_reg[1] ),
        .I4(\n_0_x_tmp_reg[3] ),
        .O(\n_0_x_tmp[5]_i_2 ));
LUT4 #(
    .INIT(16'h6F60)) 
     \x_tmp[6]_i_1 
       (.I0(\n_0_x_tmp[7]_i_3 ),
        .I1(\n_0_x_tmp_reg[6] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I3(I1[4]),
        .O(x_tmp[6]));
LUT3 #(
    .INIT(8'h41)) 
     \x_tmp[7]_i_1 
       (.I0(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I1(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[0] ),
        .O(\n_0_x_tmp[7]_i_1 ));
LUT4 #(
    .INIT(16'h2888)) 
     \x_tmp[7]_i_2 
       (.I0(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I1(\n_0_x_tmp_reg[7] ),
        .I2(\n_0_x_tmp_reg[6] ),
        .I3(\n_0_x_tmp[7]_i_3 ),
        .O(x_tmp[7]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \x_tmp[7]_i_3 
       (.I0(\n_0_x_tmp_reg[5] ),
        .I1(\n_0_x_tmp_reg[3] ),
        .I2(\n_0_x_tmp_reg[1] ),
        .I3(\n_0_x_tmp_reg[0] ),
        .I4(\n_0_x_tmp_reg[2] ),
        .I5(\n_0_x_tmp_reg[4] ),
        .O(\n_0_x_tmp[7]_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \x_tmp_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(\n_0_x_tmp[0]_i_1 ),
        .Q(\n_0_x_tmp_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \x_tmp_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(x_tmp[1]),
        .Q(\n_0_x_tmp_reg[1] ));
FDCE #(
    .INIT(1'b0)) 
     \x_tmp_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(x_tmp[2]),
        .Q(\n_0_x_tmp_reg[2] ));
FDCE #(
    .INIT(1'b0)) 
     \x_tmp_reg[3] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(x_tmp[3]),
        .Q(\n_0_x_tmp_reg[3] ));
FDCE #(
    .INIT(1'b0)) 
     \x_tmp_reg[4] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(x_tmp[4]),
        .Q(\n_0_x_tmp_reg[4] ));
FDCE #(
    .INIT(1'b0)) 
     \x_tmp_reg[5] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(x_tmp[5]),
        .Q(\n_0_x_tmp_reg[5] ));
FDCE #(
    .INIT(1'b0)) 
     \x_tmp_reg[6] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(x_tmp[6]),
        .Q(\n_0_x_tmp_reg[6] ));
FDCE #(
    .INIT(1'b0)) 
     \x_tmp_reg[7] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_x_tmp[7]_i_1 ),
        .CLR(reset_IBUF),
        .D(x_tmp[7]),
        .Q(\n_0_x_tmp_reg[7] ));
LUT5 #(
    .INIT(32'hFFFE0002)) 
     \y_tmp[1]_i_1 
       (.I0(set_pos_y),
        .I1(\n_0_FSM_sequential_cur_st_reg[1] ),
        .I2(\n_0_FSM_sequential_cur_st_reg[2] ),
        .I3(\n_0_FSM_sequential_cur_st_reg[0] ),
        .I4(\n_0_y_tmp_reg[1] ),
        .O(\n_0_y_tmp[1]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \y_tmp_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_0_y_tmp[1]_i_1 ),
        .Q(\n_0_y_tmp_reg[1] ));
endmodule

module spi_master
   (miso_OBUF,
    sck_reg,
    out0,
    E,
    sck_OBUF,
    dc_OBUF,
    sck_reg_BUFG,
    reset_IBUF,
    CLK,
    I1,
    I2,
    Q);
  output miso_OBUF;
  output sck_reg;
  output out0;
  output [0:0]E;
  output sck_OBUF;
  output dc_OBUF;
  input sck_reg_BUFG;
  input reset_IBUF;
  input CLK;
  input I1;
  input I2;
  input [7:0]Q;

  wire CLK;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [7:0]Q;
  wire [3:0]count_reg;
(* RTL_KEEP = "yes" *)   wire [4:0]cur_st;
  wire dc_OBUF;
  wire [8:0]delay_count;
  wire [8:1]delay_count_1;
  wire miso_OBUF;
  wire \n_0_FSM_onehot_cur_st[4]_i_1 ;
  wire \n_0_FSM_onehot_cur_st[4]_i_2 ;
  wire \n_0_count[0]_i_1 ;
  wire \n_0_count[1]_i_1__0 ;
  wire \n_0_count[2]_i_1__0 ;
  wire \n_0_count[3]_i_1__0 ;
  wire \n_0_count[3]_i_2 ;
  wire n_0_cs_i_1;
  wire n_0_cs_reg;
  wire \n_0_delay_count[0]_i_1 ;
  wire \n_0_delay_count[2]_i_3 ;
  wire \n_0_delay_count[6]_i_2 ;
  wire \n_0_delay_count[6]_i_3 ;
  wire \n_0_delay_count[8]_i_2 ;
  wire \n_0_reg_data[0]_i_1 ;
  wire \n_0_reg_data[1]_i_1 ;
  wire \n_0_reg_data[2]_i_1 ;
  wire \n_0_reg_data[3]_i_1 ;
  wire \n_0_reg_data[4]_i_1 ;
  wire \n_0_reg_data[5]_i_1 ;
  wire \n_0_reg_data[6]_i_1 ;
  wire \n_0_reg_data[7]_i_1 ;
  wire \n_0_reg_data[7]_i_2 ;
  wire n_0_sck_reg_i_1;
  wire [7:0]reg_data;
  wire reset_IBUF;
  wire sck_OBUF;
  wire sck_reg;
  wire sck_reg_0;
  wire sck_reg_BUFG;

  assign out0 = cur_st[4];
LUT5 #(
    .INIT(32'hFFFFFEEE)) 
     \FSM_onehot_cur_st[4]_i_1 
       (.I0(cur_st[2]),
        .I1(cur_st[4]),
        .I2(cur_st[1]),
        .I3(I1),
        .I4(\n_0_FSM_onehot_cur_st[4]_i_2 ),
        .O(\n_0_FSM_onehot_cur_st[4]_i_1 ));
LUT5 #(
    .INIT(32'h20000000)) 
     \FSM_onehot_cur_st[4]_i_2 
       (.I0(cur_st[3]),
        .I1(count_reg[3]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(count_reg[0]),
        .O(\n_0_FSM_onehot_cur_st[4]_i_2 ));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_cur_st_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_FSM_onehot_cur_st[4]_i_1 ),
        .D(1'b0),
        .Q(cur_st[0]),
        .R(reset_IBUF));
(* KEEP = "yes" *) 
   FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_cur_st_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_FSM_onehot_cur_st[4]_i_1 ),
        .D(cur_st[4]),
        .Q(cur_st[1]),
        .S(reset_IBUF));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_cur_st_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_FSM_onehot_cur_st[4]_i_1 ),
        .D(cur_st[1]),
        .Q(cur_st[2]),
        .R(reset_IBUF));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_cur_st_reg[3] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_FSM_onehot_cur_st[4]_i_1 ),
        .D(cur_st[2]),
        .Q(cur_st[3]),
        .R(reset_IBUF));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_cur_st_reg[4] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_FSM_onehot_cur_st[4]_i_1 ),
        .D(cur_st[3]),
        .Q(cur_st[4]),
        .R(reset_IBUF));
LUT2 #(
    .INIT(4'h2)) 
     \FSM_sequential_cur_st[3]_i_1 
       (.I0(cur_st[4]),
        .I1(reset_IBUF),
        .O(E));
LUT2 #(
    .INIT(4'h6)) 
     \count[0]_i_1 
       (.I0(count_reg[0]),
        .I1(cur_st[3]),
        .O(\n_0_count[0]_i_1 ));
LUT3 #(
    .INIT(8'h6A)) 
     \count[1]_i_1__0 
       (.I0(count_reg[1]),
        .I1(cur_st[3]),
        .I2(count_reg[0]),
        .O(\n_0_count[1]_i_1__0 ));
LUT4 #(
    .INIT(16'h6AAA)) 
     \count[2]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(cur_st[3]),
        .I3(count_reg[1]),
        .O(\n_0_count[2]_i_1__0 ));
LUT4 #(
    .INIT(16'hAAFB)) 
     \count[3]_i_1__0 
       (.I0(reset_IBUF),
        .I1(cur_st[2]),
        .I2(cur_st[4]),
        .I3(cur_st[3]),
        .O(\n_0_count[3]_i_1__0 ));
LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \count[3]_i_2 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(cur_st[3]),
        .I3(count_reg[0]),
        .I4(count_reg[2]),
        .O(\n_0_count[3]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \count_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_count[0]_i_1 ),
        .Q(count_reg[0]),
        .R(\n_0_count[3]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \count_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_count[1]_i_1__0 ),
        .Q(count_reg[1]),
        .R(\n_0_count[3]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \count_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_count[2]_i_1__0 ),
        .Q(count_reg[2]),
        .R(\n_0_count[3]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \count_reg[3] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_count[3]_i_2 ),
        .Q(count_reg[3]),
        .R(\n_0_count[3]_i_1__0 ));
LUT3 #(
    .INIT(8'hAB)) 
     cs_i_1
       (.I0(reset_IBUF),
        .I1(cur_st[3]),
        .I2(cur_st[2]),
        .O(n_0_cs_i_1));
FDRE #(
    .INIT(1'b0)) 
     cs_reg
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(n_0_cs_i_1),
        .Q(n_0_cs_reg),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     dc_OBUF_inst_i_1
       (.I0(I2),
        .I1(n_0_cs_reg),
        .O(dc_OBUF));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \delay_count[0]_i_1 
       (.I0(delay_count[0]),
        .I1(sck_reg_0),
        .O(\n_0_delay_count[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \delay_count[1]_i_1 
       (.I0(delay_count[0]),
        .I1(delay_count[1]),
        .O(delay_count_1[1]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h0078)) 
     \delay_count[2]_i_1 
       (.I0(delay_count[0]),
        .I1(delay_count[1]),
        .I2(delay_count[2]),
        .I3(sck_reg_0),
        .O(delay_count_1[2]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h0400)) 
     \delay_count[2]_i_2 
       (.I0(delay_count[8]),
        .I1(delay_count[6]),
        .I2(delay_count[7]),
        .I3(\n_0_delay_count[2]_i_3 ),
        .O(sck_reg_0));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \delay_count[2]_i_3 
       (.I0(delay_count[3]),
        .I1(delay_count[4]),
        .I2(delay_count[2]),
        .I3(delay_count[5]),
        .I4(delay_count[0]),
        .I5(delay_count[1]),
        .O(\n_0_delay_count[2]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \delay_count[3]_i_1 
       (.I0(delay_count[1]),
        .I1(delay_count[0]),
        .I2(delay_count[2]),
        .I3(delay_count[3]),
        .O(delay_count_1[3]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \delay_count[4]_i_1 
       (.I0(delay_count[4]),
        .I1(delay_count[1]),
        .I2(delay_count[0]),
        .I3(delay_count[2]),
        .I4(delay_count[3]),
        .O(delay_count_1[4]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h2A80)) 
     \delay_count[5]_i_1 
       (.I0(\n_0_delay_count[6]_i_2 ),
        .I1(delay_count[4]),
        .I2(\n_0_delay_count[8]_i_2 ),
        .I3(delay_count[5]),
        .O(delay_count_1[5]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h2AAA8000)) 
     \delay_count[6]_i_1 
       (.I0(\n_0_delay_count[6]_i_2 ),
        .I1(\n_0_delay_count[8]_i_2 ),
        .I2(delay_count[4]),
        .I3(delay_count[5]),
        .I4(delay_count[6]),
        .O(delay_count_1[6]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'hFFFB)) 
     \delay_count[6]_i_2 
       (.I0(delay_count[7]),
        .I1(delay_count[6]),
        .I2(delay_count[8]),
        .I3(\n_0_delay_count[6]_i_3 ),
        .O(\n_0_delay_count[6]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
     \delay_count[6]_i_3 
       (.I0(delay_count[4]),
        .I1(delay_count[3]),
        .I2(delay_count[5]),
        .I3(delay_count[2]),
        .I4(delay_count[1]),
        .I5(delay_count[0]),
        .O(\n_0_delay_count[6]_i_3 ));
LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \delay_count[7]_i_1 
       (.I0(delay_count[7]),
        .I1(\n_0_delay_count[8]_i_2 ),
        .I2(delay_count[4]),
        .I3(delay_count[5]),
        .I4(delay_count[6]),
        .O(delay_count_1[7]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \delay_count[8]_i_1 
       (.I0(delay_count[8]),
        .I1(delay_count[6]),
        .I2(delay_count[5]),
        .I3(delay_count[4]),
        .I4(\n_0_delay_count[8]_i_2 ),
        .I5(delay_count[7]),
        .O(delay_count_1[8]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \delay_count[8]_i_2 
       (.I0(delay_count[3]),
        .I1(delay_count[2]),
        .I2(delay_count[0]),
        .I3(delay_count[1]),
        .O(\n_0_delay_count[8]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \delay_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_0_delay_count[0]_i_1 ),
        .Q(delay_count[0]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \delay_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(delay_count_1[1]),
        .Q(delay_count[1]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \delay_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(delay_count_1[2]),
        .Q(delay_count[2]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \delay_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(delay_count_1[3]),
        .Q(delay_count[3]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \delay_count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(delay_count_1[4]),
        .Q(delay_count[4]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \delay_count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(delay_count_1[5]),
        .Q(delay_count[5]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \delay_count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(delay_count_1[6]),
        .Q(delay_count[6]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \delay_count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(delay_count_1[7]),
        .Q(delay_count[7]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \delay_count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(delay_count_1[8]),
        .Q(delay_count[8]),
        .R(reset_IBUF));
FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
     miso_reg
       (.C(sck_reg_BUFG),
        .CE(cur_st[3]),
        .CLR(reset_IBUF),
        .D(reg_data[7]),
        .Q(miso_OBUF));
LUT5 #(
    .INIT(32'hFFEF0020)) 
     \reg_data[0]_i_1 
       (.I0(Q[0]),
        .I1(cur_st[3]),
        .I2(I1),
        .I3(reset_IBUF),
        .I4(reg_data[0]),
        .O(\n_0_reg_data[0]_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \reg_data[1]_i_1 
       (.I0(reg_data[0]),
        .I1(cur_st[3]),
        .I2(Q[1]),
        .O(\n_0_reg_data[1]_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \reg_data[2]_i_1 
       (.I0(reg_data[1]),
        .I1(cur_st[3]),
        .I2(Q[2]),
        .O(\n_0_reg_data[2]_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \reg_data[3]_i_1 
       (.I0(reg_data[2]),
        .I1(cur_st[3]),
        .I2(Q[3]),
        .O(\n_0_reg_data[3]_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \reg_data[4]_i_1 
       (.I0(reg_data[3]),
        .I1(cur_st[3]),
        .I2(Q[4]),
        .O(\n_0_reg_data[4]_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \reg_data[5]_i_1 
       (.I0(reg_data[4]),
        .I1(cur_st[3]),
        .I2(Q[5]),
        .O(\n_0_reg_data[5]_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \reg_data[6]_i_1 
       (.I0(reg_data[5]),
        .I1(cur_st[3]),
        .I2(Q[6]),
        .O(\n_0_reg_data[6]_i_1 ));
LUT3 #(
    .INIT(8'h0E)) 
     \reg_data[7]_i_1 
       (.I0(I1),
        .I1(cur_st[3]),
        .I2(reset_IBUF),
        .O(\n_0_reg_data[7]_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \reg_data[7]_i_2 
       (.I0(reg_data[6]),
        .I1(cur_st[3]),
        .I2(Q[7]),
        .O(\n_0_reg_data[7]_i_2 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
     \reg_data_reg[0] 
       (.C(sck_reg_BUFG),
        .CE(1'b1),
        .D(\n_0_reg_data[0]_i_1 ),
        .Q(reg_data[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
     \reg_data_reg[1] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_reg_data[7]_i_1 ),
        .D(\n_0_reg_data[1]_i_1 ),
        .Q(reg_data[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
     \reg_data_reg[2] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_reg_data[7]_i_1 ),
        .D(\n_0_reg_data[2]_i_1 ),
        .Q(reg_data[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
     \reg_data_reg[3] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_reg_data[7]_i_1 ),
        .D(\n_0_reg_data[3]_i_1 ),
        .Q(reg_data[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
     \reg_data_reg[4] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_reg_data[7]_i_1 ),
        .D(\n_0_reg_data[4]_i_1 ),
        .Q(reg_data[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
     \reg_data_reg[5] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_reg_data[7]_i_1 ),
        .D(\n_0_reg_data[5]_i_1 ),
        .Q(reg_data[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
     \reg_data_reg[6] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_reg_data[7]_i_1 ),
        .D(\n_0_reg_data[6]_i_1 ),
        .Q(reg_data[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
     \reg_data_reg[7] 
       (.C(sck_reg_BUFG),
        .CE(\n_0_reg_data[7]_i_1 ),
        .D(\n_0_reg_data[7]_i_2 ),
        .Q(reg_data[7]),
        .R(1'b0));
LUT3 #(
    .INIT(8'hFE)) 
     sck_OBUF_inst_i_1
       (.I0(n_0_cs_reg),
        .I1(sck_reg),
        .I2(cur_st[4]),
        .O(sck_OBUF));
LUT2 #(
    .INIT(4'h6)) 
     sck_reg_i_1
       (.I0(sck_reg_0),
        .I1(sck_reg),
        .O(n_0_sck_reg_i_1));
FDRE #(
    .INIT(1'b0)) 
     sck_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(n_0_sck_reg_i_1),
        .Q(sck_reg),
        .R(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
