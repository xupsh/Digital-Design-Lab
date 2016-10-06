// (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: dtysky:XUP:DATAPATH:1.2
// IP Revision: 16

(* X_CORE_INFO = "DATAPATH,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "MIPS_CPU_DATAPATH_0_0,DATAPATH,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module MIPS_CPU_DATAPATH_0_0 (
  clk,
  clrn,
  alu_z,
  alu_r,
  alu_a,
  alu_b,
  alu_aluc,
  reg_we,
  reg_qa,
  reg_qb,
  reg_wn,
  reg_rna,
  reg_rnb,
  reg_d,
  con_wreg,
  con_regrt,
  con_jal,
  con_m2reg,
  con_shfit,
  con_aluimm,
  con_sext,
  con_wmem,
  con_aluc,
  con_pcsource,
  con_op,
  con_func,
  con_z,
  inst_do,
  inst_a,
  data_do,
  data_a,
  data_di,
  data_we,
  pc_out
);

input wire clk;
input wire clrn;
input wire alu_z;
input wire [31 : 0] alu_r;
output wire [31 : 0] alu_a;
output wire [31 : 0] alu_b;
output wire [31 : 0] alu_aluc;
output wire reg_we;
input wire [31 : 0] reg_qa;
input wire [31 : 0] reg_qb;
output wire [4 : 0] reg_wn;
output wire [4 : 0] reg_rna;
output wire [4 : 0] reg_rnb;
output wire [31 : 0] reg_d;
input wire con_wreg;
input wire con_regrt;
input wire con_jal;
input wire con_m2reg;
input wire con_shfit;
input wire con_aluimm;
input wire con_sext;
input wire con_wmem;
input wire [3 : 0] con_aluc;
input wire [1 : 0] con_pcsource;
output wire [5 : 0] con_op;
output wire [5 : 0] con_func;
output wire con_z;
input wire [31 : 0] inst_do;
output wire [31 : 0] inst_a;
input wire [31 : 0] data_do;
output wire [31 : 0] data_a;
output wire [31 : 0] data_di;
output wire data_we;
output wire [31 : 0] pc_out;

  DATAPATH inst (
    .clk(clk),
    .clrn(clrn),
    .alu_z(alu_z),
    .alu_r(alu_r),
    .alu_a(alu_a),
    .alu_b(alu_b),
    .alu_aluc(alu_aluc),
    .reg_we(reg_we),
    .reg_qa(reg_qa),
    .reg_qb(reg_qb),
    .reg_wn(reg_wn),
    .reg_rna(reg_rna),
    .reg_rnb(reg_rnb),
    .reg_d(reg_d),
    .con_wreg(con_wreg),
    .con_regrt(con_regrt),
    .con_jal(con_jal),
    .con_m2reg(con_m2reg),
    .con_shfit(con_shfit),
    .con_aluimm(con_aluimm),
    .con_sext(con_sext),
    .con_wmem(con_wmem),
    .con_aluc(con_aluc),
    .con_pcsource(con_pcsource),
    .con_op(con_op),
    .con_func(con_func),
    .con_z(con_z),
    .inst_do(inst_do),
    .inst_a(inst_a),
    .data_do(data_do),
    .data_a(data_a),
    .data_di(data_di),
    .data_we(data_we),
    .pc_out(pc_out)
  );
endmodule
