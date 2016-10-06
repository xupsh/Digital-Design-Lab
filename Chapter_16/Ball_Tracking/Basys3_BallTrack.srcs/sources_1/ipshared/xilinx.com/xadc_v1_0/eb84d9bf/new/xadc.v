`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2015 12:33:29 PM
// Design Name: 
// Module Name: xadc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module xadc(
   input clk100, // Clock input for DRP
 input rst,
 input vauxp6, vauxn6,  // Auxiliary analog channel inputs
 input vauxp7, vauxn7,  // Auxiliary analog channel inputs
 input vauxp14, vauxn14,  // Auxiliary analog channel inputs
 input vauxp15, vauxn15,  // Auxiliary analog channel inputs
 
 output  [15:0] temperature_out,
 output  [15:0] aux_out_6,aux_out_7,aux_out_14,aux_out_15
 );     
reg [15:0] MEASURED_TEMP;
reg [15:0] MEASURED_AUX0, MEASURED_AUX1; 
reg [15:0] MEASURED_AUX2, MEASURED_AUX3;
reg [15:0] MEASURED_VCCINT,MEASURED_VCCAUX,MEASURED_VCCBRAM;

assign aux_out_14 = MEASURED_AUX0;
assign aux_out_15 = MEASURED_AUX1;
assign aux_out_6 = MEASURED_AUX2;
assign aux_out_7 = MEASURED_AUX3;
assign temperature_out = MEASURED_TEMP;

 wire busy;
 wire [5:0] channel;
 wire drdy;
 wire eoc;
 wire eos;
 wire i2c_sclk_in;
 wire i2c_sclk_ts;
 wire i2c_sda_in;
 wire i2c_sda_ts;
 
 
 reg [6:0] daddr;
 reg [15:0] di_drp;
 wire [15:0] do_drp;
 wire [15:0] vauxp_active;
 wire [15:0] vauxn_active;
 wire dclk_bufg;

 reg [1:0]  den_reg;
 reg [1:0]  dwe_reg;
 
 reg [7:0]   state = init_read;
 parameter       init_read       = 8'h00,
                 read_waitdrdy   = 8'h01,
                 write_waitdrdy  = 8'h03,
                 read_reg00      = 8'h04,
                 reg00_waitdrdy  = 8'h05,
                 read_reg01      = 8'h06,
                 reg01_waitdrdy  = 8'h07,
                 read_reg02      = 8'h08,
                 reg02_waitdrdy  = 8'h09,
                 read_reg06      = 8'h0a,
                 reg06_waitdrdy  = 8'h0b,
                 read_reg10      = 8'h0c,
                 reg10_waitdrdy  = 8'h0d,
                 read_reg11      = 8'h0e,
                 reg11_waitdrdy  = 8'h0f,
                 read_reg12      = 8'h10,
                 reg12_waitdrdy  = 8'h11,
                 read_reg13      = 8'h12,
                 reg13_waitdrdy  = 8'h13;
 
 BUFG i_bufg (.I(clk100), .O(dclk_bufg));
always @(posedge dclk_bufg)
   if (rst) begin
      state   <= init_read;
      den_reg <= 2'h0;
      dwe_reg <= 2'h0;
      di_drp  <= 16'h0000;
   end
   else
      case (state)
      init_read : begin
         daddr <= 7'h40;
         den_reg <= 2'h2; // performing read
         if (busy == 0 ) state <= read_waitdrdy;
         end
      read_waitdrdy : 
         if (eos ==1)      begin
            di_drp <= do_drp  & 16'h03_FF; //Clearing AVG bits for Configreg0
            daddr <= 7'h40;
            den_reg <= 2'h2;
            dwe_reg <= 2'h2; // performing write
            state <= write_waitdrdy;
         end
         else begin
            den_reg <= { 1'b0, den_reg[1] } ;
            dwe_reg <= { 1'b0, dwe_reg[1] } ;
            state <= state;                
         end
      write_waitdrdy : 
         if (drdy ==1) begin
            state <= read_reg00;
            end
         else begin
            den_reg <= { 1'b0, den_reg[1] } ;
            dwe_reg <= { 1'b0, dwe_reg[1] } ;      
            state <= state;          
         end
      read_reg00 : begin
         daddr   <= 7'h00;
         den_reg <= 2'h2; // performing read
         if (eos == 1) state   <=reg00_waitdrdy;
         end
      reg00_waitdrdy : 
         if (drdy ==1)      begin
            MEASURED_TEMP <= do_drp; 
            state <=read_reg01;
            end
         else begin
            den_reg <= { 1'b0, den_reg[1] } ;
            dwe_reg <= { 1'b0, dwe_reg[1] } ;      
            state <= state;          
         end
      read_reg01 : begin
         daddr   <= 7'h01;
         den_reg <= 2'h2; // performing read
         state   <=reg01_waitdrdy;
         end
         reg01_waitdrdy : 
        if (drdy ==1)      begin
            MEASURED_VCCINT = do_drp; 
            state <=read_reg02;
            end
         else begin
            den_reg <= { 1'b0, den_reg[1] } ;
            dwe_reg <= { 1'b0, dwe_reg[1] } ;      
            state <= state;          
         end
      read_reg02 : begin
         daddr   <= 7'h02;
         den_reg <= 2'h2; // performing read
         state   <=reg02_waitdrdy;
         end
      reg02_waitdrdy : 
         if (drdy ==1)      begin
            MEASURED_VCCAUX <= do_drp; 
            state <=read_reg06;
            end
         else begin
            den_reg <= { 1'b0, den_reg[1] } ;
            dwe_reg <= { 1'b0, dwe_reg[1] } ;      
            state <= state;          
         end
      read_reg06 : begin
         daddr   <= 7'h06;
         den_reg <= 2'h2; // performing read
         state   <=reg06_waitdrdy;
         end
      reg06_waitdrdy : 
         if (drdy ==1)      begin
            MEASURED_VCCBRAM <= do_drp; 
            state <= read_reg10;
         end
         else begin
            den_reg <= { 1'b0, den_reg[1] } ;
            dwe_reg <= { 1'b0, dwe_reg[1] } ;      
            state <= state;          
         end
      read_reg10 : begin
            daddr   <= 7'h14;
            den_reg <= 2'h2; // performing read
            state   <= reg10_waitdrdy;
         end
      reg10_waitdrdy : 
         if (drdy ==1)      begin
            MEASURED_AUX0 <= do_drp; 
            state <= read_reg11;
         end
         else begin
            den_reg <= { 1'b0, den_reg[1] } ;
            dwe_reg <= { 1'b0, dwe_reg[1] } ;      
            state <= state;          
         end
      read_reg11 : begin
         daddr   <= 7'h15;
         den_reg <= 2'h2; // performing read
         state   <= reg11_waitdrdy;
         end
      reg11_waitdrdy : 
         if (drdy ==1)      begin
            MEASURED_AUX1 <= do_drp; 
            state <= read_reg12;
            end
         else begin
            den_reg <= { 1'b0, den_reg[1] } ;
            dwe_reg <= { 1'b0, dwe_reg[1] } ;      
            state <= state;          
         end
      read_reg12 : begin
         daddr   <= 7'h16;
         den_reg <= 2'h2; // performing read
         state   <= reg12_waitdrdy;
         end
      reg12_waitdrdy : 
         if (drdy ==1)      begin
            MEASURED_AUX2 <= do_drp; 
            state <= read_reg13;
            end
         else begin
            den_reg <= { 1'b0, den_reg[1] } ;
            dwe_reg <= { 1'b0, dwe_reg[1] } ;      
            state <= state;          
         end
      read_reg13 : begin
         daddr   <= 7'h17;
         den_reg <= 2'h2; // performing read
         state   <= reg13_waitdrdy;
         end
      reg13_waitdrdy :
         if (drdy ==1)      begin
            MEASURED_AUX3 <= do_drp; 
            state <=read_reg00;
            daddr   <= 7'h00;
         end
         else begin
            den_reg <= { 1'b0, den_reg[1] } ;
            dwe_reg <= { 1'b0, dwe_reg[1] } ;      
            state <= state;          
         end
      default : begin
         daddr <= 7'h40;
         den_reg <= 2'h2; // performing read
         state <= init_read;
         end
      endcase


xadc_wiz_0 u_xadc (
        .di_in(di_drp),              // input wire [15 : 0] di_in
        .daddr_in(daddr),        // input wire [6 : 0] daddr_in
        .den_in(den_reg[0]),            // input wire den_in
        .dwe_in(dwe_reg[0]),            // input wire dwe_in
        .drdy_out(drdy),        // output wire drdy_out
        .do_out(do_drp),            // output wire [15 : 0] do_out
        .dclk_in(dclk_bufg),          // input wire dclk_in
        .reset_in(rst),
        .vp_in(),              // input wire vp_in
        .vn_in(),              // input wire vn_in
        .vauxp6(vauxp6),            // input wire vauxp6
        .vauxn6(vauxn6),            // input wire vauxn6
        .vauxp7(vauxp7),            // input wire vauxp7
        .vauxn7(vauxn7),            // input wire vauxn7
        .vauxp14(vauxp14),          // input wire vauxp14
        .vauxn14(vauxn14),          // input wire vauxn14
        .vauxp15(vauxp15),          // input wire vauxp15
        .vauxn15(vauxn15),          // input wire vauxn15
        .channel_out(channel_out),  // output wire [4 : 0] channel_out
        .eoc_out(eoc),          // output wire eoc_out
        .alarm_out(alarm_out),      // output wire alarm_out
        .eos_out(eos),          // output wire eos_out
        .busy_out(busy)        // output wire busy_out
      );


endmodule
