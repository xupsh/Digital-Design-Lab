//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Thu Dec 17 17:22:32 2015
//Host        : XSHZHEHENGT30 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target MIPS_CPU.bd
//Design      : MIPS_CPU
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MIPS_CPU
   (inclk,
    key,
    led);
  input inclk;
  input [15:0]key;
  output [15:0]led;

  wire [31:0]ALU32_0_r;
  wire ALU32_0_z;
  wire [3:0]CONTROL_UNIT_0_aluc;
  wire CONTROL_UNIT_0_aluimm;
  wire CONTROL_UNIT_0_jal;
  wire CONTROL_UNIT_0_m2reg;
  wire [1:0]CONTROL_UNIT_0_pcsource;
  wire CONTROL_UNIT_0_regrt;
  wire CONTROL_UNIT_0_sext;
  wire CONTROL_UNIT_0_shfit;
  wire CONTROL_UNIT_0_wmem;
  wire CONTROL_UNIT_0_wreg;
  wire [31:0]DATAPATH_0_alu_a;
  wire [31:0]DATAPATH_0_alu_aluc;
  wire [31:0]DATAPATH_0_alu_b;
  wire [5:0]DATAPATH_0_con_func;
  wire [5:0]DATAPATH_0_con_op;
  wire DATAPATH_0_con_z;
  wire [31:0]DATAPATH_0_data_a;
  wire [31:0]DATAPATH_0_data_di;
  wire DATAPATH_0_data_we;
  wire [31:0]DATAPATH_0_inst_a;
  wire [31:0]DATAPATH_0_reg_d;
  wire [4:0]DATAPATH_0_reg_rna;
  wire [4:0]DATAPATH_0_reg_rnb;
  wire DATAPATH_0_reg_we;
  wire [4:0]DATAPATH_0_reg_wn;
  wire [31:0]DATA_MEM_0_data_out;
  wire GND_1;
  wire KEY2INST_0_clrn;
  wire [31:0]KEY2INST_0_inst_do;
  wire [31:0]REGFILE_0_qa;
  wire [31:0]REGFILE_0_qb;
  wire [15:0]SHOW_ON_LED_0_led;
  wire [15:0]button_1;
  wire clk_wiz_0_clk_out1;
  wire inclk_1;

  assign button_1 = key[15:0];
  assign inclk_1 = inclk;
  assign led[15:0] = SHOW_ON_LED_0_led;
MIPS_CPU_ALU32_0_0 ALU32_0
       (.a(DATAPATH_0_alu_a),
        .aluc(DATAPATH_0_alu_aluc),
        .b(DATAPATH_0_alu_b),
        .r(ALU32_0_r),
        .z(ALU32_0_z));
MIPS_CPU_CONTROL_UNIT_0_0 CONTROL_UNIT_0
       (.aluc(CONTROL_UNIT_0_aluc),
        .aluimm(CONTROL_UNIT_0_aluimm),
        .func(DATAPATH_0_con_func),
        .jal(CONTROL_UNIT_0_jal),
        .m2reg(CONTROL_UNIT_0_m2reg),
        .op(DATAPATH_0_con_op),
        .pcsource(CONTROL_UNIT_0_pcsource),
        .regrt(CONTROL_UNIT_0_regrt),
        .sext(CONTROL_UNIT_0_sext),
        .shfit(CONTROL_UNIT_0_shfit),
        .wmem(CONTROL_UNIT_0_wmem),
        .wreg(CONTROL_UNIT_0_wreg),
        .z(DATAPATH_0_con_z));
MIPS_CPU_DATAPATH_0_0 DATAPATH_0
       (.alu_a(DATAPATH_0_alu_a),
        .alu_aluc(DATAPATH_0_alu_aluc),
        .alu_b(DATAPATH_0_alu_b),
        .alu_r(ALU32_0_r),
        .alu_z(ALU32_0_z),
        .clk(clk_wiz_0_clk_out1),
        .clrn(KEY2INST_0_clrn),
        .con_aluc(CONTROL_UNIT_0_aluc),
        .con_aluimm(CONTROL_UNIT_0_aluimm),
        .con_func(DATAPATH_0_con_func),
        .con_jal(CONTROL_UNIT_0_jal),
        .con_m2reg(CONTROL_UNIT_0_m2reg),
        .con_op(DATAPATH_0_con_op),
        .con_pcsource(CONTROL_UNIT_0_pcsource),
        .con_regrt(CONTROL_UNIT_0_regrt),
        .con_sext(CONTROL_UNIT_0_sext),
        .con_shfit(CONTROL_UNIT_0_shfit),
        .con_wmem(CONTROL_UNIT_0_wmem),
        .con_wreg(CONTROL_UNIT_0_wreg),
        .con_z(DATAPATH_0_con_z),
        .data_a(DATAPATH_0_data_a),
        .data_di(DATAPATH_0_data_di),
        .data_do(DATA_MEM_0_data_out),
        .data_we(DATAPATH_0_data_we),
        .inst_a(DATAPATH_0_inst_a),
        .inst_do(KEY2INST_0_inst_do),
        .reg_d(DATAPATH_0_reg_d),
        .reg_qa(REGFILE_0_qa),
        .reg_qb(REGFILE_0_qb),
        .reg_rna(DATAPATH_0_reg_rna),
        .reg_rnb(DATAPATH_0_reg_rnb),
        .reg_we(DATAPATH_0_reg_we),
        .reg_wn(DATAPATH_0_reg_wn));
MIPS_CPU_DATA_MEM_0_0 DATA_MEM_0
       (.addr(DATAPATH_0_data_a),
        .clk(clk_wiz_0_clk_out1),
        .data_in(DATAPATH_0_data_di),
        .data_out(DATA_MEM_0_data_out),
        .we(DATAPATH_0_data_we));
GND GND
       (.G(GND_1));
MIPS_CPU_KEY2INST_0_0 KEY2INST_0
       (.button(button_1),
        .clk(clk_wiz_0_clk_out1),
        .clrn(KEY2INST_0_clrn),
        .inst_a(DATAPATH_0_inst_a),
        .inst_do(KEY2INST_0_inst_do));
MIPS_CPU_REGFILE_0_0 REGFILE_0
       (.clk(clk_wiz_0_clk_out1),
        .clrn(KEY2INST_0_clrn),
        .d(DATAPATH_0_reg_d),
        .qa(REGFILE_0_qa),
        .qb(REGFILE_0_qb),
        .rna(DATAPATH_0_reg_rna),
        .rnb(DATAPATH_0_reg_rnb),
        .we(DATAPATH_0_reg_we),
        .wn(DATAPATH_0_reg_wn));
MIPS_CPU_SHOW_ON_LED_0_0 SHOW_ON_LED_0
       (.alu_r(ALU32_0_r),
        .button(button_1),
        .clk(clk_wiz_0_clk_out1),
        .inst_op(DATAPATH_0_con_op),
        .led(SHOW_ON_LED_0_led));
MIPS_CPU_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(inclk_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(GND_1));
endmodule
