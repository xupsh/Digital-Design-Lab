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


// IP VLNV: xilinx.com:XUP:vga:1.0
// IP Revision: 3

(* X_CORE_INFO = "vga,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "vga_0,vga,{}" *)
(* CORE_GENERATION_INFO = "vga_0,vga,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=vga,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,HD=640,HF=48,HA=16,HB=96,HT=800,VD=480,VF=33,VA=10,VB=2,VT=525}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module vga_0 (
  vga_pclk,
  vga_rst,
  vga_hsync,
  vga_vsync,
  vga_valid,
  vga_h_cnt,
  vga_v_cnt
);

input wire vga_pclk;
input wire vga_rst;
output wire vga_hsync;
output wire vga_vsync;
output wire vga_valid;
output wire [11 : 0] vga_h_cnt;
output wire [10 : 0] vga_v_cnt;

  vga #(
    .HD(640),
    .HF(48),
    .HA(16),
    .HB(96),
    .HT(800),
    .VD(480),
    .VF(33),
    .VA(10),
    .VB(2),
    .VT(525)
  ) inst (
    .vga_pclk(vga_pclk),
    .vga_rst(vga_rst),
    .vga_hsync(vga_hsync),
    .vga_vsync(vga_vsync),
    .vga_valid(vga_valid),
    .vga_h_cnt(vga_h_cnt),
    .vga_v_cnt(vga_v_cnt)
  );
endmodule
