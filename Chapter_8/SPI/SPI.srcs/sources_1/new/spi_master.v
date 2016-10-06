`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 06:11:20 PM
// Design Name: 
// Module Name: spi_master
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


module spi_master
(
	output reg sck,         //1MHz clk
	input mosi,
	output reg miso,
	output reg cs,
	input busy,
	input rst,
	
	input spi_send,
	input[7:0] spi_data_out,
	output reg spi_send_done,
	input clk
);

   reg [3:0]count;
   localparam IDLE=0,
   	      CS_L=1,
   	      DATA=2,
   	      FINISH=3;
   
   reg [4:0]cur_st,nxt_st;
   reg [7:0] reg_data;
   reg sck_reg;
   reg [8:0]delay_count;
   always@(posedge clk)
   if(~rst)
      delay_count<=0;
   else if(delay_count==49)
      delay_count<=0;
   else delay_count<=delay_count+1;
   
   always@(posedge clk)
   if(~rst)
      sck_reg<=0;
   else if(delay_count==50)
      sck_reg<=!sck_reg;
  //产生SCK
	always@(*)
	if(cs) sck=1;
	else if(cur_st==FINISH) sck=1;
	else if(!cs) sck=sck_reg;
	else sck=1;
   
   always@(posedge sck_reg)
   if(~rst)
   	cur_st<=0;
   else cur_st<=nxt_st;
   
   always@(*)
   begin
   	nxt_st=cur_st;
   	case(cur_st)
   		IDLE:if(spi_send) nxt_st=CS_L;
   		CS_L:nxt_st=DATA;
   		DATA:if(count==7) nxt_st=FINISH;
   		FINISH:if(busy) nxt_st=IDLE;
   	  default:nxt_st=IDLE;
   	endcase
   end
   //产生发送结束标志
   always@(*)
   if(~rst)
      spi_send_done=0;
   else if(cur_st==FINISH)
      spi_send_done=1;
   else spi_send_done=0;
//产生CS
   always@(posedge sck_reg)
   	if(~rst) cs<=1;
   	else if(cur_st==CS_L) cs<=0;
   	else if(cur_st==DATA) cs<=0;
   	else cs<=1;
   
   
   always@(posedge sck_reg)
   	if(~rst)
   		count<=0;
   	else if(cur_st==DATA)
   		count<=count+1;
   	else if(cur_st==IDLE | cur_st==FINISH)
   		count<=0;
   //MISO数据
   always@(negedge sck_reg or negedge rst)
   	if(~rst)
   		miso<=0;	
   	else if(cur_st==DATA)
   	begin
   		reg_data[7:1]<=reg_data[6:0];
   		miso<=reg_data[7];
      end
      else if(spi_send)
         reg_data<=spi_data_out;
endmodule

