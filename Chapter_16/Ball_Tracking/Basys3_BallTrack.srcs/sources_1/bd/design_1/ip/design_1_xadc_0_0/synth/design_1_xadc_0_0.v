// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:XUP:xadc:1.0
// IP Revision: 3

(* X_CORE_INFO = "xadc,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "design_1_xadc_0_0,xadc,{}" *)
(* CORE_GENERATION_INFO = "design_1_xadc_0_0,xadc,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=xadc,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,init_read=00000000,read_waitdrdy=00000001,write_waitdrdy=00000011,read_reg00=00000100,reg00_waitdrdy=00000101,read_reg01=00000110,reg01_waitdrdy=00000111,read_reg02=00001000,reg02_waitdrdy=00001001,read_reg06=00001010,reg06_waitdrdy=00001011,read_reg10=00001100,reg10_waitdrdy=00001101,read_reg11=00001110,reg11_waitdrdy=00001111,read_reg12=00010000,reg12_waitdrdy=00010001,read_reg13=00010010,reg13_waitdrdy=00010011}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xadc_0_0 (
  clk100,
  rst,
  vauxp6,
  vauxn6,
  vauxp7,
  vauxn7,
  vauxp14,
  vauxn14,
  vauxp15,
  vauxn15,
  temperature_out,
  aux_out_6,
  aux_out_7,
  aux_out_14,
  aux_out_15
);

input wire clk100;
input wire rst;
input wire vauxp6;
input wire vauxn6;
input wire vauxp7;
input wire vauxn7;
input wire vauxp14;
input wire vauxn14;
input wire vauxp15;
input wire vauxn15;
output wire [15 : 0] temperature_out;
output wire [15 : 0] aux_out_6;
output wire [15 : 0] aux_out_7;
output wire [15 : 0] aux_out_14;
output wire [15 : 0] aux_out_15;

  xadc #(
    .init_read('B00000000),
    .read_waitdrdy('B00000001),
    .write_waitdrdy('B00000011),
    .read_reg00('B00000100),
    .reg00_waitdrdy('B00000101),
    .read_reg01('B00000110),
    .reg01_waitdrdy('B00000111),
    .read_reg02('B00001000),
    .reg02_waitdrdy('B00001001),
    .read_reg06('B00001010),
    .reg06_waitdrdy('B00001011),
    .read_reg10('B00001100),
    .reg10_waitdrdy('B00001101),
    .read_reg11('B00001110),
    .reg11_waitdrdy('B00001111),
    .read_reg12('B00010000),
    .reg12_waitdrdy('B00010001),
    .read_reg13('B00010010),
    .reg13_waitdrdy('B00010011)
  ) inst (
    .clk100(clk100),
    .rst(rst),
    .vauxp6(vauxp6),
    .vauxn6(vauxn6),
    .vauxp7(vauxp7),
    .vauxn7(vauxn7),
    .vauxp14(vauxp14),
    .vauxn14(vauxn14),
    .vauxp15(vauxp15),
    .vauxn15(vauxn15),
    .temperature_out(temperature_out),
    .aux_out_6(aux_out_6),
    .aux_out_7(aux_out_7),
    .aux_out_14(aux_out_14),
    .aux_out_15(aux_out_15)
  );
endmodule
