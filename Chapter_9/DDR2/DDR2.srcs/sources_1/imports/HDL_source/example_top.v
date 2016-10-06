//*****************************************************************************
// (c) Copyright 2009 - 2011 Xilinx, Inc. All rights reserved.
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
//*****************************************************************************
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor             : Xilinx
// \   \   \/     Version            : 2.3
//  \   \         Application        : MIG
//  /   /         Filename           : example_top.v
// /___/   /\     Date Last Modified : $Date: 2011/06/02 08:35:03 $
// \   \  /  \    Date Created       : Fri Oct 14 2011
//  \___\/\___\
//
// Device           : 7 Series
// Design Name      : DDR2 SDRAM
// Purpose          :
//   Top-level  module. This module serves as an example,
//   and allows the user to synthesize a self-contained design,
//   which they can be used to test their hardware.
//   In addition to the memory controller, the module instantiates:
//     1. Synthesizable testbench - used to model user's backend logic
//        and generate different traffic patterns
// Reference        :
// Revision History :
//*****************************************************************************

`timescale 1ps/1ps

module example_top #
  (

   //***************************************************************************
   // Traffic Gen related parameters
   //***************************************************************************
   parameter PORT_MODE             = "BI_MODE",
   parameter DATA_MODE             = 4'b0010,
   parameter TST_MEM_INSTR_MODE    = "R_W_INSTR_MODE",
   parameter EYE_TEST              = "FALSE",
                                     // set EYE_TEST = "TRUE" to probe memory
                                     // signals. Traffic Generator will only
                                     // write to one single location and no
                                     // read transactions will be generated.
   parameter DATA_PATTERN          = "DGEN_ALL",
                                      // For small devices, choose one only.
                                      // For large device, choose "DGEN_ALL"
                                      // "DGEN_HAMMER", "DGEN_WALKING1",
                                      // "DGEN_WALKING0","DGEN_ADDR","
                                      // "DGEN_NEIGHBOR","DGEN_PRBS","DGEN_ALL"
   parameter CMD_PATTERN           = "CGEN_ALL",
                                      // "CGEN_PRBS","CGEN_FIXED","CGEN_BRAM",
                                      // "CGEN_SEQUENTIAL", "CGEN_ALL"
   parameter CMD_WDT               = 'h3FF,
   parameter WR_WDT                = 'h1FFF,
   parameter RD_WDT                = 'h3FF,
   parameter SEL_VICTIM_LINE       = 0,
   parameter BEGIN_ADDRESS         = 32'h00000000,
   parameter END_ADDRESS           = 32'h00ffffff,
   parameter PRBS_EADDR_MASK_POS   = 32'hff000000,

   //***************************************************************************
   // The following parameters refer to width of various ports
   //***************************************************************************
   parameter BANK_WIDTH            = 3,
                                     // # of memory Bank Address bits.
   parameter COL_WIDTH             = 10,
                                     // # of memory Column Address bits.
   parameter CS_WIDTH              = 1,
                                     // # of unique CS outputs to memory.
   parameter DQ_WIDTH              = 16,
                                     // # of DQ (data)
   parameter DQS_WIDTH             = 2,
   parameter DQS_CNT_WIDTH         = 1,
                                     // = ceil(log2(DQS_WIDTH))
   parameter DRAM_WIDTH            = 8,
                                     // # of DQ per DQS
   parameter ECC                   = "OFF",
   parameter ECC_TEST              = "OFF",
   parameter nBANK_MACHS           = 4,
   parameter RANKS                 = 1,
                                     // # of Ranks.
   parameter ROW_WIDTH             = 13,
                                     // # of memory Row Address bits.
   parameter ADDR_WIDTH            = 27,
                                     // # = RANK_WIDTH + BANK_WIDTH
                                     //     + ROW_WIDTH + COL_WIDTH;
                                     // Chip Select is always tied to low for
                                     // single rank devices
   //***************************************************************************
   // The following parameters are mode register settings
   //***************************************************************************
   parameter BURST_MODE            = "8",
                                     // DDR3 SDRAM:
                                     // Burst Length (Mode Register 0).
                                     // # = "8", "4", "OTF".
                                     // DDR2 SDRAM:
                                     // Burst Length (Mode Register).
                                     // # = "8", "4".

   //***************************************************************************
   // Simulation parameters
   //***************************************************************************
   parameter SIMULATION            = "FALSE",
                                     // Should be TRUE during design simulations and
                                     // FALSE during implementations

   //***************************************************************************
   // IODELAY and PHY related parameters
   //***************************************************************************
   parameter TCQ                   = 100,
   
   parameter DRAM_TYPE             = "DDR2",

   
   //***************************************************************************
   // System clock frequency parameters
   //***************************************************************************
   parameter nCK_PER_CLK           = 4,
                                     // # of memory CKs per fabric CLK

   

   //***************************************************************************
   // Debug parameters
   //***************************************************************************
   parameter DEBUG_PORT            ="ON"// "OFF"
                                     // # = "ON" Enable debug signals/controls.
                                     //   = "OFF" Disable debug signals/controls.
      
//   parameter RST_ACT_LOW           = 0
                                     // =1 for active low reset,
                                     // =0 for active high.
   )
  (

   // Inouts
(*mark_debug="true"*)   inout [15:0]                         ddr2_dq,
(*mark_debug="true"*)   inout [1:0]                        ddr2_dqs_n,
(*mark_debug="true"*)   inout [1:0]                        ddr2_dqs_p,

   // Outputs
   output [12:0]                       ddr2_addr,
   output [2:0]                      ddr2_ba,
   output                                       ddr2_ras_n,
   output                                       ddr2_cas_n,
   output                                       ddr2_we_n,
   output [0:0]                        ddr2_ck_p,
   output [0:0]                        ddr2_ck_n,
   output [0:0]                       ddr2_cke,
   output [0:0]           ddr2_cs_n,
   output [1:0]                        ddr2_dm,
   output [0:0]                       ddr2_odt,

   // Inputs
   // Single-ended system clock
   //input                                        sys_clk_i,
   // Single-ended iodelayctrl clk (reference clock)
   //input                                        clk_ref_i,
   
   //output                                       tg_compare_error,
   output                                       init_calib_complete,
   
      

   // System reset - Default polarity of sys_rst pin is Active Low.
   // System reset polarity will change based on the option 
   // selected in GUI.
   input                                        sys_rst,
   input clk_in
   );
   /*
(*mark_debug="true"*)   wire [15:0]                         ddr2_dq_reg=ddr2_dq;
(*mark_debug="true"*)   wire [1:0]                        ddr2_dqs_n_reg=ddr2_dqs_n;
(*mark_debug="true"*)  wire [1:0]                        ddr2_dqs_p_reg=ddr2_dqs_p;
*/
   // Outputs/
   /*
(*mark_debug="true"*)   reg [12:0]                       ddr2_addr_reg;
(*mark_debug="true"*)   reg [2:0]                      ddr2_ba_reg;
(*mark_debug="true"*)   reg                                       ddr2_ras_n_reg;
(*mark_debug="true"*)   reg                                       ddr2_cas_n_reg;
(*mark_debug="true"*)   reg                                       ddr2_we_n_reg;

   always@(posedge clk)
   begin
    ddr2_addr_reg<=ddr2_addr;
    ddr2_ba_reg<=ddr2_ba;
    ddr2_ras_n_reg<=ddr2_ras_n_reg;
    ddr2_cas_n_reg<=ddr2_cas_n;
    ddr2_we_n_reg<=ddr2_we_n;
    end
   */
   
   
   
   
   
   
function integer clogb2 (input integer size);
    begin
      size = size - 1;
      for (clogb2=1; size>1; clogb2=clogb2+1)
        size = size >> 1;
    end
  endfunction // clogb2

  function integer STR_TO_INT;
    input [7:0] in;
    begin
      if(in == "8")
        STR_TO_INT = 8;
      else if(in == "4")
        STR_TO_INT = 4;
      else
        STR_TO_INT = 0;
    end
  endfunction

  clk_wiz_0 clk_wiz_0
  (
 // Clock in ports
  .clk_in1(clk_in),
  // Clock out ports  
  .clk_out1(sys_clk_i),
  .clk_out2(clk_ref_i),
  // Status and control signals               
  .reset(sys_rst), 
  .locked()            
  );


  localparam DATA_WIDTH            = 16;
  localparam RANK_WIDTH = clogb2(RANKS);
  localparam PAYLOAD_WIDTH         = (ECC_TEST == "OFF") ? DATA_WIDTH : DQ_WIDTH;
  localparam BURST_LENGTH          = STR_TO_INT(BURST_MODE);
  localparam APP_DATA_WIDTH        = 2 * nCK_PER_CLK * PAYLOAD_WIDTH;
  localparam APP_MASK_WIDTH        = APP_DATA_WIDTH / 8;

  //***************************************************************************
  // Traffic Gen related parameters (derived)
  //***************************************************************************
  localparam  TG_ADDR_WIDTH = ((CS_WIDTH == 1) ? 0 : RANK_WIDTH)
                                 + BANK_WIDTH + ROW_WIDTH + COL_WIDTH;
  localparam MASK_SIZE             = DATA_WIDTH/8;
      

  // Wire declarations
      
  wire [(2*nCK_PER_CLK)-1:0]              app_ecc_multiple_err;
(*keep = "true"*) wire [ADDR_WIDTH-1:0]                 app_addr;
(*keep = "true"*) wire [2:0]                            app_cmd;
(*keep = "true"*) wire                                  app_en;
(*keep = "true"*) wire                                  app_rdy;
(*keep = "true"*) wire [APP_DATA_WIDTH-1:0]             app_rd_data;
(*keep = "true"*) wire                                  app_rd_data_end;
(*keep = "true"*) wire                                  app_rd_data_valid;
(*keep = "true"*) wire [APP_DATA_WIDTH-1:0]             app_wdf_data;
(*keep = "true"*) wire                                  app_wdf_end;
(*keep = "true"*) wire [APP_MASK_WIDTH-1:0]             app_wdf_mask;
(*keep = "true"*) wire                                  app_wdf_rdy;
(*keep = "true"*) wire                                  app_sr_active;
(*keep = "true"*) wire                                  app_ref_ack;
(*keep = "true"*) wire                                  app_zq_ack;
(*keep = "true"*) wire                                  app_wdf_wren;
  wire [(64 + (2*APP_DATA_WIDTH)-1):0]      error_status;
  wire [(PAYLOAD_WIDTH/8)-1:0] cumlative_dq_lane_error;
  wire                                  mem_pattern_init_done;
  wire [47:0]                           tg_wr_data_counts;
  wire [47:0]                           tg_rd_data_counts;
  wire                                  modify_enable_sel;
  wire [2:0]                            data_mode_manual_sel;
  wire [2:0]                            addr_mode_manual_sel;
  wire [APP_DATA_WIDTH-1:0]             cmp_data;
  reg [63:0]                            cmp_data_r;
  wire                                  cmp_data_valid;
  reg                                   cmp_data_valid_r;
  wire                                  cmp_error;
  wire [(PAYLOAD_WIDTH/8)-1:0]            dq_error_bytelane_cmp;

  wire                                  clk;
  wire                                  rst;

  wire                                  dbg_sel_pi_incdec;
  wire                                  dbg_pi_f_inc;
  wire                                  dbg_pi_f_dec;
  wire                                  dbg_sel_po_incdec;
  wire                                  dbg_po_f_inc;
  wire                                  dbg_po_f_stg23_sel;
  wire                                  dbg_po_f_dec;
  
  
  wire                                  vio_modify_enable;
  wire [3:0]                            vio_data_mode_value;
  wire                                  vio_pause_traffic;
  wire [2:0]                            vio_addr_mode_value;
  wire [3:0]                            vio_instr_mode_value;
  wire [1:0]                            vio_bl_mode_value;
  wire [9:0]                            vio_fixed_bl_value;
  wire [2:0]                            vio_fixed_instr_value;
  wire                                  vio_data_mask_gen;
  wire                                  vio_tg_rst;
  wire                                  vio_dbg_sel_pi_incdec;
  wire                                  vio_dbg_pi_f_inc;
  wire                                  vio_dbg_pi_f_dec;
  wire                                  vio_dbg_sel_po_incdec;
  wire                                  vio_dbg_po_f_inc;
  wire                                  vio_dbg_po_f_stg23_sel;
  wire                                  vio_dbg_po_f_dec;
     
  

//***************************************************************************






      
// Start of User Design top instance
//***************************************************************************
// The User design is instantiated below. The memory interface ports are
// connected to the top-level and the application interface ports are
// connected to the traffic generator module. This provides a reference
// for connecting the memory controller to system.
//***************************************************************************

  mig_7series_0 #
    (
//     #parameters_mapping_user_design_top_instance#
//     .RST_ACT_LOW                      (RST_ACT_LOW)
     )
    u_mig_7series_0
      (
       
       
// Memory interface ports
       .ddr2_addr                      (ddr2_addr),
       .ddr2_ba                        (ddr2_ba),
       .ddr2_cas_n                     (ddr2_cas_n),
       .ddr2_ck_n                      (ddr2_ck_n),
       .ddr2_ck_p                      (ddr2_ck_p),
       .ddr2_cke                       (ddr2_cke),
       .ddr2_ras_n                     (ddr2_ras_n),
       .ddr2_we_n                      (ddr2_we_n),
       .ddr2_dq                        (ddr2_dq),
       .ddr2_dqs_n                     (ddr2_dqs_n),
       .ddr2_dqs_p                     (ddr2_dqs_p),
       .init_calib_complete            (init_calib_complete),
      
       .ddr2_cs_n                      (ddr2_cs_n),
       .ddr2_dm                        (ddr2_dm),
       .ddr2_odt                       (ddr2_odt),
// Application interface ports
       .app_addr                       (app_addr),
       .app_cmd                        (app_cmd),
       .app_en                         (app_en),
       .app_wdf_data                   (app_wdf_data),
       .app_wdf_end                    (app_wdf_end),
       .app_wdf_wren                   (app_wdf_wren),
       .app_rd_data                    (app_rd_data),
       .app_rd_data_end                (app_rd_data_end),
       .app_rd_data_valid              (app_rd_data_valid),
       .app_rdy                        (app_rdy),
       .app_wdf_rdy                    (app_wdf_rdy),
       .app_sr_req                     (1'b0),
       .app_ref_req                    (1'b0),
       .app_zq_req                     (1'b0),
       .app_sr_active                  (app_sr_active),
       .app_ref_ack                    (app_ref_ack),
       .app_zq_ack                     (app_zq_ack),
       .ui_clk                         (clk),
       .ui_clk_sync_rst                (rst),
      
       .app_wdf_mask                   (app_wdf_mask),
      
       
// System Clock Ports
       .sys_clk_i                       (sys_clk_i),
// Reference Clock Ports
       .clk_ref_i                      (clk_ref_i),
      
       .sys_rst                        (sys_rst)
       );
// End of User Design top instance


//***************************************************************************
// The traffic generation module instantiated below drives traffic (patterns)
// on the application interface of the memory controller
//***************************************************************************
/*
  mig_7series_v2_3_traffic_gen_top #
    (
     .TCQ                 (TCQ),
     .SIMULATION          (SIMULATION),
     .FAMILY              ("VIRTEX7"),
     .MEM_TYPE            (DRAM_TYPE),
     .TST_MEM_INSTR_MODE  (TST_MEM_INSTR_MODE),
     //.BL_WIDTH            (BL_WIDTH),
     .nCK_PER_CLK         (nCK_PER_CLK),
     .NUM_DQ_PINS         (PAYLOAD_WIDTH),
     .MEM_BURST_LEN       (BURST_LENGTH),
     .MEM_COL_WIDTH       (COL_WIDTH),
     .PORT_MODE           (PORT_MODE),
     .DATA_PATTERN        (DATA_PATTERN),
     .CMD_PATTERN         (CMD_PATTERN),
     .DATA_WIDTH          (APP_DATA_WIDTH),
     .ADDR_WIDTH          (TG_ADDR_WIDTH),
     .MASK_SIZE           (MASK_SIZE),
     .BEGIN_ADDRESS       (BEGIN_ADDRESS),
     .DATA_MODE           (DATA_MODE),
     .END_ADDRESS         (END_ADDRESS),
     .PRBS_EADDR_MASK_POS (PRBS_EADDR_MASK_POS),
     .SEL_VICTIM_LINE     (SEL_VICTIM_LINE),
     .CMD_WDT             (CMD_WDT),
     .RD_WDT              (RD_WDT),
     .WR_WDT              (WR_WDT),
     .EYE_TEST            (EYE_TEST)
     )
    u_traffic_gen_top
      (
       .clk                  (clk),
       .rst                  (rst),
       .tg_only_rst          (po_win_tg_rst | vio_tg_rst),
       .manual_clear_error   (manual_clear_error),
       .memc_init_done       (init_calib_complete),
       .memc_cmd_full        (~app_rdy),
       .memc_cmd_en          (app_en),
       .memc_cmd_instr       (app_cmd),
       .memc_cmd_bl          (),
       .memc_cmd_addr        (app_addr),
       .memc_wr_en           (app_wdf_wren),
       .memc_wr_end          (app_wdf_end),
       .memc_wr_mask         (app_wdf_mask),
       .memc_wr_data         (app_wdf_data),
       .memc_wr_full         (~app_wdf_rdy),
       .memc_rd_en           (),
       .memc_rd_data         (app_rd_data),
       .memc_rd_empty        (~app_rd_data_valid),
       .qdr_wr_cmd_o         (),
       .qdr_rd_cmd_o         (),
       .vio_pause_traffic    (vio_pause_traffic),
       .vio_modify_enable    (vio_modify_enable),
       .vio_data_mode_value  (vio_data_mode_value),
       .vio_addr_mode_value  (vio_addr_mode_value),
       .vio_instr_mode_value (vio_instr_mode_value),
       .vio_bl_mode_value    (vio_bl_mode_value),
       .vio_fixed_bl_value   (vio_fixed_bl_value),
       .vio_fixed_instr_value(vio_fixed_instr_value),
       .vio_data_mask_gen    (vio_data_mask_gen),
       .fixed_addr_i         (32'b0),
       .fixed_data_i         (32'b0),
       .simple_data0         (32'b0),
       .simple_data1         (32'b0),
       .simple_data2         (32'b0),
       .simple_data3         (32'b0),
       .simple_data4         (32'b0),
       .simple_data5         (32'b0),
       .simple_data6         (32'b0),
       .simple_data7         (32'b0),
       .wdt_en_i             (wdt_en_w),
       .bram_cmd_i           (39'b0),
       .bram_valid_i         (1'b0),
       .bram_rdy_o           (),
       .cmp_data             (cmp_data),
       .cmp_data_valid       (cmp_data_valid),
       .cmp_error            (cmp_error),
       .wr_data_counts       (tg_wr_data_counts),
       .rd_data_counts       (tg_rd_data_counts),
       .dq_error_bytelane_cmp (dq_error_bytelane_cmp),
       .error                (tg_compare_error),
       .error_status         (error_status),
       .cumlative_dq_lane_error (cumlative_dq_lane_error),
       .cmd_wdt_err_o         (cmd_wdt_err_w),
       .wr_wdt_err_o          (wr_wdt_err_w),
       .rd_wdt_err_o          (rd_wdt_err_w),
       .mem_pattern_init_done   (mem_pattern_init_done)
       );


   //*****************************************************************
   // Default values are assigned to the debug inputs of the traffic
   // generator
   //*****************************************************************
   assign vio_modify_enable     = 1'b0;
   assign vio_data_mode_value   = 4'b0010;
   assign vio_addr_mode_value   = 3'b011;
   assign vio_instr_mode_value  = 4'b0010;
   assign vio_bl_mode_value     = 2'b10;
   assign vio_fixed_bl_value    = 8'd16;
   assign vio_data_mask_gen     = 1'b0;
   assign vio_pause_traffic     = 1'b0;
   assign vio_fixed_instr_value = 3'b001;
   assign dbg_clear_error       = 1'b0;
   assign po_win_tg_rst         = 1'b0;
   assign vio_tg_rst            = 1'b0;
   assign wdt_en_w              = 1'b1;

   assign dbg_sel_pi_incdec       = 'b0;
   assign dbg_sel_po_incdec       = 'b0;
   assign dbg_pi_f_inc            = 'b0;
   assign dbg_pi_f_dec            = 'b0;
   assign dbg_po_f_inc            = 'b0;
   assign dbg_po_f_dec            = 'b0;
   assign dbg_po_f_stg23_sel      = 'b0;
*/
user_ddr user_ddr(
  .app_addr                       (app_addr),
       .app_cmd                        (app_cmd),
       .app_en                         (app_en),
       .app_wdf_data                   (app_wdf_data),
       .app_wdf_end                    (app_wdf_end),
       .app_wdf_wren                   (app_wdf_wren),
       .app_rd_data                    (app_rd_data),
       .app_rd_data_end                (app_rd_data_end),
       .app_rd_data_valid              (app_rd_data_valid),
       .app_rdy                        (app_rdy),
       .app_wdf_rdy                    (app_wdf_rdy),
       .app_sr_req                     (),
       .app_ref_req                    (),
       .app_zq_req                     (),
       .app_sr_active                  (app_sr_active),
       .app_ref_ack                    (app_ref_ack),
       .app_zq_ack                     (app_zq_ack),
       .ui_clk                         (clk),
       .ui_clk_sync_rst                (sys_rst),
      
       .app_wdf_mask                   (app_wdf_mask),
       .init_calib_complete (init_calib_complete)
);
endmodule
