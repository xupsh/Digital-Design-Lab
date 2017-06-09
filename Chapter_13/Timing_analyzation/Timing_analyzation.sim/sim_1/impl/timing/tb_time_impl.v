// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Fri May 12 18:02:24 2017
// Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/Github/xupsh/Digital_Design_lab/Chapter_13/Timing_analyzation/Timing_analyzation.sim/sim_1/impl/timing/tb_time_impl.v
// Design      : timing_analyze
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "8b628777" *) 
(* NotValidForBitStream *)
module timing_analyze
   (data_in,
    data_out,
    clk,
    reset);
  input [4:0]data_in;
  output [4:0]data_out;
  input clk;
  input reset;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [4:0]data_in;
  wire [4:0]data_in_IBUF;
  wire [4:0]data_out;
  wire [4:0]data_out_OBUF;
  wire [4:0]data_tmp_in;
  wire \n_0_data_out[1]_i_11 ;
  wire \n_0_data_out[1]_i_12 ;
  wire \n_0_data_out[1]_i_14 ;
  wire \n_0_data_out[1]_i_15 ;
  wire \n_0_data_out[1]_i_16 ;
  wire \n_0_data_out[1]_i_17 ;
  wire \n_0_data_out[1]_i_18 ;
  wire \n_0_data_out[1]_i_2 ;
  wire \n_0_data_out[1]_i_22 ;
  wire \n_0_data_out[1]_i_23 ;
  wire \n_0_data_out[1]_i_24 ;
  wire \n_0_data_out[1]_i_25 ;
  wire \n_0_data_out[1]_i_26 ;
  wire \n_0_data_out[1]_i_3 ;
  wire \n_0_data_out[1]_i_4 ;
  wire \n_0_data_out[1]_i_5 ;
  wire \n_0_data_out[1]_i_6 ;
  wire \n_0_data_out[1]_i_7 ;
  wire \n_0_data_out[1]_i_8 ;
  wire \n_0_data_out[4]_i_10 ;
  wire \n_0_data_out[4]_i_11 ;
  wire \n_0_data_out[4]_i_12 ;
  wire \n_0_data_out[4]_i_13 ;
  wire \n_0_data_out[4]_i_14 ;
  wire \n_0_data_out[4]_i_15 ;
  wire \n_0_data_out[4]_i_16 ;
  wire \n_0_data_out[4]_i_17 ;
  wire \n_0_data_out[4]_i_19 ;
  wire \n_0_data_out[4]_i_2 ;
  wire \n_0_data_out[4]_i_20 ;
  wire \n_0_data_out[4]_i_22 ;
  wire \n_0_data_out[4]_i_3 ;
  wire \n_0_data_out[4]_i_8 ;
  wire \n_0_data_out[4]_i_9 ;
  wire \n_0_data_out_reg[1]_i_1 ;
  wire \n_0_data_out_reg[1]_i_10 ;
  wire \n_0_data_out_reg[4]_i_6 ;
  wire \n_4_data_out_reg[1]_i_1 ;
  wire \n_4_data_out_reg[1]_i_10 ;
  wire \n_4_data_out_reg[4]_i_6 ;
  wire \n_5_data_out_reg[1]_i_1 ;
  wire \n_5_data_out_reg[1]_i_10 ;
  wire \n_5_data_out_reg[1]_i_9 ;
  wire \n_5_data_out_reg[4]_i_1 ;
  wire \n_5_data_out_reg[4]_i_6 ;
  wire \n_5_data_out_reg[4]_i_7 ;
  wire \n_6_data_out_reg[1]_i_1 ;
  wire \n_6_data_out_reg[1]_i_10 ;
  wire \n_6_data_out_reg[1]_i_9 ;
  wire \n_6_data_out_reg[4]_i_1 ;
  wire \n_6_data_out_reg[4]_i_6 ;
  wire \n_6_data_out_reg[4]_i_7 ;
  wire \n_7_data_out_reg[1]_i_1 ;
  wire \n_7_data_out_reg[1]_i_10 ;
  wire \n_7_data_out_reg[1]_i_21 ;
  wire \n_7_data_out_reg[1]_i_9 ;
  wire \n_7_data_out_reg[4]_i_1 ;
  wire \n_7_data_out_reg[4]_i_21 ;
  wire \n_7_data_out_reg[4]_i_5 ;
  wire \n_7_data_out_reg[4]_i_6 ;
  wire \n_7_data_out_reg[4]_i_7 ;
  wire reset;
  wire reset_IBUF;
  wire [2:0]\NLW_data_out_reg[1]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_data_out_reg[1]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_out_reg[1]_i_21_CO_UNCONNECTED ;
  wire [3:1]\NLW_data_out_reg[1]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_data_out_reg[1]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_out_reg[1]_i_9_O_UNCONNECTED ;
  wire [3:0]\NLW_data_out_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_out_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_data_out_reg[4]_i_21_CO_UNCONNECTED ;
  wire [3:1]\NLW_data_out_reg[4]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_data_out_reg[4]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_data_out_reg[4]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_data_out_reg[4]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_out_reg[4]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_out_reg[4]_i_7_O_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_time_impl.sdf",,,,"tool_control");
end
BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
LUT4 #(
    .INIT(16'h6966)) 
     \data_out[1]_i_11 
       (.I0(\n_7_data_out_reg[1]_i_21 ),
        .I1(\n_0_data_out[1]_i_22 ),
        .I2(\n_0_data_out[1]_i_23 ),
        .I3(\n_6_data_out_reg[1]_i_10 ),
        .O(\n_0_data_out[1]_i_11 ));
LUT6 #(
    .INIT(64'h69699666AAAAAAAA)) 
     \data_out[1]_i_12 
       (.I0(\n_4_data_out_reg[4]_i_6 ),
        .I1(data_tmp_in[3]),
        .I2(data_tmp_in[1]),
        .I3(data_tmp_in[0]),
        .I4(data_tmp_in[2]),
        .I5(\n_7_data_out_reg[1]_i_10 ),
        .O(\n_0_data_out[1]_i_12 ));
LUT3 #(
    .INIT(8'h78)) 
     \data_out[1]_i_14 
       (.I0(data_tmp_in[3]),
        .I1(data_tmp_in[0]),
        .I2(data_tmp_in[1]),
        .O(\n_0_data_out[1]_i_14 ));
LUT3 #(
    .INIT(8'hCA)) 
     \data_out[1]_i_15 
       (.I0(data_tmp_in[1]),
        .I1(data_tmp_in[2]),
        .I2(data_tmp_in[0]),
        .O(\n_0_data_out[1]_i_15 ));
LUT2 #(
    .INIT(4'h2)) 
     \data_out[1]_i_16 
       (.I0(data_tmp_in[0]),
        .I1(data_tmp_in[1]),
        .O(\n_0_data_out[1]_i_16 ));
LUT3 #(
    .INIT(8'h78)) 
     \data_out[1]_i_17 
       (.I0(data_tmp_in[3]),
        .I1(data_tmp_in[0]),
        .I2(data_tmp_in[1]),
        .O(\n_0_data_out[1]_i_17 ));
LUT2 #(
    .INIT(4'h2)) 
     \data_out[1]_i_18 
       (.I0(data_tmp_in[1]),
        .I1(data_tmp_in[0]),
        .O(\n_0_data_out[1]_i_18 ));
LUT6 #(
    .INIT(64'h8777788878887888)) 
     \data_out[1]_i_2 
       (.I0(\n_6_data_out_reg[1]_i_9 ),
        .I1(\n_7_data_out_reg[1]_i_10 ),
        .I2(\n_6_data_out_reg[1]_i_10 ),
        .I3(\n_7_data_out_reg[1]_i_9 ),
        .I4(\n_7_data_out_reg[4]_i_7 ),
        .I5(\n_6_data_out_reg[4]_i_6 ),
        .O(\n_0_data_out[1]_i_2 ));
LUT6 #(
    .INIT(64'hA08282822828A0A0)) 
     \data_out[1]_i_22 
       (.I0(\n_7_data_out_reg[1]_i_10 ),
        .I1(data_tmp_in[2]),
        .I2(data_tmp_in[4]),
        .I3(data_tmp_in[0]),
        .I4(data_tmp_in[1]),
        .I5(data_tmp_in[3]),
        .O(\n_0_data_out[1]_i_22 ));
LUT4 #(
    .INIT(16'h6695)) 
     \data_out[1]_i_23 
       (.I0(data_tmp_in[3]),
        .I1(data_tmp_in[1]),
        .I2(data_tmp_in[0]),
        .I3(data_tmp_in[2]),
        .O(\n_0_data_out[1]_i_23 ));
LUT6 #(
    .INIT(64'hDDCF4DFF2230B200)) 
     \data_out[1]_i_24 
       (.I0(\n_6_data_out_reg[4]_i_7 ),
        .I1(\n_0_data_out[1]_i_25 ),
        .I2(\n_7_data_out_reg[4]_i_7 ),
        .I3(data_tmp_in[0]),
        .I4(data_tmp_in[1]),
        .I5(\n_0_data_out[1]_i_26 ),
        .O(\n_0_data_out[1]_i_24 ));
LUT4 #(
    .INIT(16'h63FF)) 
     \data_out[1]_i_25 
       (.I0(data_tmp_in[0]),
        .I1(data_tmp_in[2]),
        .I2(data_tmp_in[1]),
        .I3(\n_6_data_out_reg[1]_i_10 ),
        .O(\n_0_data_out[1]_i_25 ));
LUT6 #(
    .INIT(64'h59CFA630A6C0A6C0)) 
     \data_out[1]_i_26 
       (.I0(\n_5_data_out_reg[4]_i_7 ),
        .I1(\n_6_data_out_reg[4]_i_7 ),
        .I2(data_tmp_in[1]),
        .I3(data_tmp_in[0]),
        .I4(data_tmp_in[2]),
        .I5(\n_7_data_out_reg[4]_i_7 ),
        .O(\n_0_data_out[1]_i_26 ));
LUT4 #(
    .INIT(16'h7888)) 
     \data_out[1]_i_3 
       (.I0(\n_6_data_out_reg[4]_i_6 ),
        .I1(\n_6_data_out_reg[1]_i_10 ),
        .I2(\n_7_data_out_reg[4]_i_6 ),
        .I3(\n_7_data_out_reg[4]_i_7 ),
        .O(\n_0_data_out[1]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \data_out[1]_i_4 
       (.I0(\n_7_data_out_reg[1]_i_10 ),
        .I1(\n_6_data_out_reg[4]_i_6 ),
        .O(\n_0_data_out[1]_i_4 ));
LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \data_out[1]_i_5 
       (.I0(\n_0_data_out[1]_i_2 ),
        .I1(\n_7_data_out_reg[4]_i_7 ),
        .I2(\n_7_data_out_reg[4]_i_6 ),
        .I3(\n_6_data_out_reg[1]_i_10 ),
        .I4(\n_6_data_out_reg[4]_i_6 ),
        .O(\n_0_data_out[1]_i_5 ));
LUT6 #(
    .INIT(64'h8777788878887888)) 
     \data_out[1]_i_6 
       (.I0(\n_7_data_out_reg[4]_i_7 ),
        .I1(\n_7_data_out_reg[4]_i_6 ),
        .I2(\n_6_data_out_reg[1]_i_10 ),
        .I3(\n_6_data_out_reg[4]_i_6 ),
        .I4(\n_7_data_out_reg[1]_i_9 ),
        .I5(\n_7_data_out_reg[1]_i_10 ),
        .O(\n_0_data_out[1]_i_6 ));
LUT4 #(
    .INIT(16'h7888)) 
     \data_out[1]_i_7 
       (.I0(\n_6_data_out_reg[4]_i_6 ),
        .I1(\n_7_data_out_reg[1]_i_10 ),
        .I2(\n_7_data_out_reg[4]_i_6 ),
        .I3(\n_6_data_out_reg[1]_i_10 ),
        .O(\n_0_data_out[1]_i_7 ));
LUT2 #(
    .INIT(4'h8)) 
     \data_out[1]_i_8 
       (.I0(\n_7_data_out_reg[1]_i_10 ),
        .I1(\n_7_data_out_reg[4]_i_6 ),
        .O(\n_0_data_out[1]_i_8 ));
LUT5 #(
    .INIT(32'hC60AAC60)) 
     \data_out[4]_i_10 
       (.I0(\n_6_data_out_reg[1]_i_10 ),
        .I1(\n_7_data_out_reg[1]_i_10 ),
        .I2(data_tmp_in[1]),
        .I3(data_tmp_in[2]),
        .I4(data_tmp_in[0]),
        .O(\n_0_data_out[4]_i_10 ));
LUT2 #(
    .INIT(4'h8)) 
     \data_out[4]_i_11 
       (.I0(data_tmp_in[0]),
        .I1(\n_6_data_out_reg[1]_i_10 ),
        .O(\n_0_data_out[4]_i_11 ));
LUT6 #(
    .INIT(64'hA96AAAAAAAAAAAAA)) 
     \data_out[4]_i_12 
       (.I0(\n_0_data_out[4]_i_9 ),
        .I1(data_tmp_in[0]),
        .I2(data_tmp_in[2]),
        .I3(data_tmp_in[1]),
        .I4(\n_7_data_out_reg[1]_i_10 ),
        .I5(\n_6_data_out_reg[1]_i_10 ),
        .O(\n_0_data_out[4]_i_12 ));
LUT6 #(
    .INIT(64'h6C5F93A0AC60AC60)) 
     \data_out[4]_i_13 
       (.I0(data_tmp_in[2]),
        .I1(data_tmp_in[1]),
        .I2(\n_7_data_out_reg[1]_i_10 ),
        .I3(\n_6_data_out_reg[1]_i_10 ),
        .I4(\n_7_data_out_reg[4]_i_7 ),
        .I5(data_tmp_in[0]),
        .O(\n_0_data_out[4]_i_13 ));
LUT4 #(
    .INIT(16'hB488)) 
     \data_out[4]_i_14 
       (.I0(\n_6_data_out_reg[1]_i_10 ),
        .I1(data_tmp_in[0]),
        .I2(data_tmp_in[1]),
        .I3(\n_7_data_out_reg[1]_i_10 ),
        .O(\n_0_data_out[4]_i_14 ));
LUT2 #(
    .INIT(4'h8)) 
     \data_out[4]_i_15 
       (.I0(data_tmp_in[0]),
        .I1(\n_7_data_out_reg[1]_i_10 ),
        .O(\n_0_data_out[4]_i_15 ));
LUT5 #(
    .INIT(32'h665A96AA)) 
     \data_out[4]_i_16 
       (.I0(\n_7_data_out_reg[4]_i_21 ),
        .I1(data_tmp_in[4]),
        .I2(data_tmp_in[3]),
        .I3(data_tmp_in[0]),
        .I4(data_tmp_in[1]),
        .O(\n_0_data_out[4]_i_16 ));
LUT3 #(
    .INIT(8'h6A)) 
     \data_out[4]_i_17 
       (.I0(\n_4_data_out_reg[1]_i_10 ),
        .I1(data_tmp_in[3]),
        .I2(data_tmp_in[0]),
        .O(\n_0_data_out[4]_i_17 ));
LUT2 #(
    .INIT(4'h7)) 
     \data_out[4]_i_19 
       (.I0(\n_7_data_out_reg[4]_i_7 ),
        .I1(\n_6_data_out_reg[4]_i_6 ),
        .O(\n_0_data_out[4]_i_19 ));
LUT5 #(
    .INIT(32'h956A6A6A)) 
     \data_out[4]_i_2 
       (.I0(\n_7_data_out_reg[4]_i_5 ),
        .I1(\n_7_data_out_reg[4]_i_6 ),
        .I2(\n_5_data_out_reg[4]_i_7 ),
        .I3(\n_6_data_out_reg[4]_i_6 ),
        .I4(\n_6_data_out_reg[4]_i_7 ),
        .O(\n_0_data_out[4]_i_2 ));
LUT6 #(
    .INIT(64'h8777788878887888)) 
     \data_out[4]_i_20 
       (.I0(\n_5_data_out_reg[1]_i_9 ),
        .I1(\n_7_data_out_reg[1]_i_10 ),
        .I2(\n_6_data_out_reg[1]_i_10 ),
        .I3(\n_6_data_out_reg[1]_i_9 ),
        .I4(\n_7_data_out_reg[4]_i_7 ),
        .I5(\n_7_data_out_reg[1]_i_9 ),
        .O(\n_0_data_out[4]_i_20 ));
LUT5 #(
    .INIT(32'h66CF96C0)) 
     \data_out[4]_i_22 
       (.I0(data_tmp_in[4]),
        .I1(data_tmp_in[3]),
        .I2(data_tmp_in[1]),
        .I3(data_tmp_in[0]),
        .I4(data_tmp_in[2]),
        .O(\n_0_data_out[4]_i_22 ));
LUT3 #(
    .INIT(8'h6A)) 
     \data_out[4]_i_3 
       (.I0(\n_4_data_out_reg[1]_i_1 ),
        .I1(\n_7_data_out_reg[4]_i_6 ),
        .I2(\n_6_data_out_reg[4]_i_7 ),
        .O(\n_0_data_out[4]_i_3 ));
LUT6 #(
    .INIT(64'h70F7F7F78F080808)) 
     \data_out[4]_i_8 
       (.I0(\n_6_data_out_reg[1]_i_9 ),
        .I1(\n_7_data_out_reg[1]_i_10 ),
        .I2(\n_0_data_out[4]_i_19 ),
        .I3(\n_7_data_out_reg[1]_i_9 ),
        .I4(\n_6_data_out_reg[1]_i_10 ),
        .I5(\n_0_data_out[4]_i_20 ),
        .O(\n_0_data_out[4]_i_8 ));
LUT6 #(
    .INIT(64'h5CA39F60ACAC6060)) 
     \data_out[4]_i_9 
       (.I0(\n_6_data_out_reg[4]_i_7 ),
        .I1(\n_7_data_out_reg[4]_i_7 ),
        .I2(data_tmp_in[0]),
        .I3(data_tmp_in[2]),
        .I4(data_tmp_in[1]),
        .I5(\n_6_data_out_reg[1]_i_10 ),
        .O(\n_0_data_out[4]_i_9 ));
OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
FDRE #(
    .INIT(1'b0)) 
     \data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_data_out_reg[1]_i_1 ),
        .Q(data_out_OBUF[0]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_data_out_reg[1]_i_1 ),
        .Q(data_out_OBUF[1]),
        .R(reset_IBUF));
CARRY4 \data_out_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\n_0_data_out_reg[1]_i_1 ,\NLW_data_out_reg[1]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\n_0_data_out[1]_i_2 ,\n_0_data_out[1]_i_3 ,\n_0_data_out[1]_i_4 ,1'b0}),
        .O({\n_4_data_out_reg[1]_i_1 ,\n_5_data_out_reg[1]_i_1 ,\n_6_data_out_reg[1]_i_1 ,\n_7_data_out_reg[1]_i_1 }),
        .S({\n_0_data_out[1]_i_5 ,\n_0_data_out[1]_i_6 ,\n_0_data_out[1]_i_7 ,\n_0_data_out[1]_i_8 }));
CARRY4 \data_out_reg[1]_i_10 
       (.CI(1'b0),
        .CO({\n_0_data_out_reg[1]_i_10 ,\NLW_data_out_reg[1]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\n_0_data_out[1]_i_14 ,\n_0_data_out[1]_i_15 ,\n_0_data_out[1]_i_16 ,1'b0}),
        .O({\n_4_data_out_reg[1]_i_10 ,\n_5_data_out_reg[1]_i_10 ,\n_6_data_out_reg[1]_i_10 ,\n_7_data_out_reg[1]_i_10 }),
        .S({\n_0_data_out[1]_i_17 ,\n_0_data_out[1]_i_18 ,data_tmp_in[0],data_tmp_in[0]}));
CARRY4 \data_out_reg[1]_i_21 
       (.CI(\n_0_data_out_reg[4]_i_6 ),
        .CO(\NLW_data_out_reg[1]_i_21_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_out_reg[1]_i_21_O_UNCONNECTED [3:1],\n_7_data_out_reg[1]_i_21 }),
        .S({1'b0,1'b0,1'b0,\n_0_data_out[1]_i_24 }));
CARRY4 \data_out_reg[1]_i_9 
       (.CI(1'b0),
        .CO(\NLW_data_out_reg[1]_i_9_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\n_4_data_out_reg[4]_i_6 ,1'b0}),
        .O({\NLW_data_out_reg[1]_i_9_O_UNCONNECTED [3],\n_5_data_out_reg[1]_i_9 ,\n_6_data_out_reg[1]_i_9 ,\n_7_data_out_reg[1]_i_9 }),
        .S({1'b0,\n_0_data_out[1]_i_11 ,\n_0_data_out[1]_i_12 ,\n_5_data_out_reg[4]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_data_out_reg[4]_i_1 ),
        .Q(data_out_OBUF[2]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_data_out_reg[4]_i_1 ),
        .Q(data_out_OBUF[3]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_data_out_reg[4]_i_1 ),
        .Q(data_out_OBUF[4]),
        .R(reset_IBUF));
CARRY4 \data_out_reg[4]_i_1 
       (.CI(1'b0),
        .CO(\NLW_data_out_reg[4]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\n_4_data_out_reg[1]_i_1 ,1'b0}),
        .O({\NLW_data_out_reg[4]_i_1_O_UNCONNECTED [3],\n_5_data_out_reg[4]_i_1 ,\n_6_data_out_reg[4]_i_1 ,\n_7_data_out_reg[4]_i_1 }),
        .S({1'b0,\n_0_data_out[4]_i_2 ,\n_0_data_out[4]_i_3 ,\n_5_data_out_reg[1]_i_1 }));
CARRY4 \data_out_reg[4]_i_21 
       (.CI(\n_0_data_out_reg[1]_i_10 ),
        .CO(\NLW_data_out_reg[4]_i_21_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_out_reg[4]_i_21_O_UNCONNECTED [3:1],\n_7_data_out_reg[4]_i_21 }),
        .S({1'b0,1'b0,1'b0,\n_0_data_out[4]_i_22 }));
CARRY4 \data_out_reg[4]_i_5 
       (.CI(\n_0_data_out_reg[1]_i_1 ),
        .CO(\NLW_data_out_reg[4]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_out_reg[4]_i_5_O_UNCONNECTED [3:1],\n_7_data_out_reg[4]_i_5 }),
        .S({1'b0,1'b0,1'b0,\n_0_data_out[4]_i_8 }));
CARRY4 \data_out_reg[4]_i_6 
       (.CI(1'b0),
        .CO({\n_0_data_out_reg[4]_i_6 ,\NLW_data_out_reg[4]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\n_0_data_out[4]_i_9 ,\n_0_data_out[4]_i_10 ,\n_0_data_out[4]_i_11 ,1'b0}),
        .O({\n_4_data_out_reg[4]_i_6 ,\n_5_data_out_reg[4]_i_6 ,\n_6_data_out_reg[4]_i_6 ,\n_7_data_out_reg[4]_i_6 }),
        .S({\n_0_data_out[4]_i_12 ,\n_0_data_out[4]_i_13 ,\n_0_data_out[4]_i_14 ,\n_0_data_out[4]_i_15 }));
CARRY4 \data_out_reg[4]_i_7 
       (.CI(1'b0),
        .CO(\NLW_data_out_reg[4]_i_7_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\n_4_data_out_reg[1]_i_10 ,1'b0}),
        .O({\NLW_data_out_reg[4]_i_7_O_UNCONNECTED [3],\n_5_data_out_reg[4]_i_7 ,\n_6_data_out_reg[4]_i_7 ,\n_7_data_out_reg[4]_i_7 }),
        .S({1'b0,\n_0_data_out[4]_i_16 ,\n_0_data_out[4]_i_17 ,\n_5_data_out_reg[1]_i_10 }));
FDRE #(
    .INIT(1'b0)) 
     \data_tmp_in_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_in_IBUF[0]),
        .Q(data_tmp_in[0]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \data_tmp_in_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_in_IBUF[1]),
        .Q(data_tmp_in[1]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \data_tmp_in_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_in_IBUF[2]),
        .Q(data_tmp_in[2]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \data_tmp_in_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_in_IBUF[3]),
        .Q(data_tmp_in[3]),
        .R(reset_IBUF));
FDRE #(
    .INIT(1'b0)) 
     \data_tmp_in_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_in_IBUF[4]),
        .Q(data_tmp_in[4]),
        .R(reset_IBUF));
IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
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
