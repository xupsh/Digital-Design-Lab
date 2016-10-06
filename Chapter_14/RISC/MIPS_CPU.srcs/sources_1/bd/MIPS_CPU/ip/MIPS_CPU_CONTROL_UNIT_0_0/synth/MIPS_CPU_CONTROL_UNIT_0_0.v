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


// IP VLNV: dtysky:XUP:CONTROL_UNIT:1.0
// IP Revision: 2

(* X_CORE_INFO = "CONTROL_UNIT,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "MIPS_CPU_CONTROL_UNIT_0_0,CONTROL_UNIT,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module MIPS_CPU_CONTROL_UNIT_0_0 (
  op,
  func,
  z,
  wreg,
  regrt,
  jal,
  m2reg,
  shfit,
  aluimm,
  sext,
  wmem,
  aluc,
  pcsource
);

input wire [5 : 0] op;
input wire [5 : 0] func;
input wire z;
output wire wreg;
output wire regrt;
output wire jal;
output wire m2reg;
output wire shfit;
output wire aluimm;
output wire sext;
output wire wmem;
output wire [3 : 0] aluc;
output wire [1 : 0] pcsource;

  CONTROL_UNIT #(
    .cmd_add(6'B100000),
    .cmd_sub(6'B100010),
    .cmd_and(6'B100100),
    .cmd_or(6'B100101),
    .cmd_xor(6'B100110),
    .cmd_sll(6'B000000),
    .cmd_srl(6'B000010),
    .cmd_sra(6'B000011),
    .cmd_jr(6'B001000),
    .cmd_addi(6'B001000),
    .cmd_andi(6'B001100),
    .cmd_ori(6'B001101),
    .cmd_xori(6'B001110),
    .cmd_lw(6'B100011),
    .cmd_sw(6'B101011),
    .cmd_beq(6'B000100),
    .cmd_bne(6'B000101),
    .cmd_lui(6'B001111),
    .cmd_j(6'B000010),
    .cmd_jal(6'B000011)
  ) inst (
    .op(op),
    .func(func),
    .z(z),
    .wreg(wreg),
    .regrt(regrt),
    .jal(jal),
    .m2reg(m2reg),
    .shfit(shfit),
    .aluimm(aluimm),
    .sext(sext),
    .wmem(wmem),
    .aluc(aluc),
    .pcsource(pcsource)
  );
endmodule
