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


// IP VLNV: dtysky:XUP:KEY2INST:1.0
// IP Revision: 2

(* X_CORE_INFO = "KEY2INST,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "MIPS_CPU_KEY2INST_0_0,KEY2INST,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module MIPS_CPU_KEY2INST_0_0 (
  clk,
  button,
  inst_a,
  inst_do,
  clrn
);

input wire clk;
input wire [15 : 0] button;
input wire [31 : 0] inst_a;
output wire [31 : 0] inst_do;
output wire clrn;

  KEY2INST #(
    .cmd_add(3'B000),
    .cmd_sub(3'B001),
    .cmd_and(3'B010),
    .cmd_or(3'B011),
    .cmd_xor(3'B100),
    .cmd_sll(3'B101),
    .cmd_srl(3'B110),
    .cmd_sra(3'B111),
    .sl_al(2'B00),
    .sl_ah(2'B01),
    .sl_bl(2'B10),
    .sl_bh(2'B11),
    .st_idle(5'B00001),
    .st_load(5'B00010),
    .st_run(5'B00100),
    .st_wrom(5'B01000),
    .st_reset(5'B10000),
    .func_add(6'B100000),
    .func_sub(6'B100010),
    .func_and(6'B100100),
    .func_or(6'B100101),
    .func_xor(6'B100110),
    .func_sll(6'B000000),
    .func_srl(6'B000010),
    .func_sra(6'B000011)
  ) inst (
    .clk(clk),
    .button(button),
    .inst_a(inst_a),
    .inst_do(inst_do),
    .clrn(clrn)
  );
endmodule
