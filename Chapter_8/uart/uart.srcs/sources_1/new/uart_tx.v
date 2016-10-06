`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 06:03:57 PM
// Design Name: 
// Module Name: uart_tx
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


module uart_tx(
   input [7:0]data_o,
   output reg txd,
   input clk,
   input rst,
   input receive_ack
    );
    
    localparam IDLE=0,
               SEND_START=1,
               SEND_DATA=2,
               SEND_END=3;

    reg [3:0]cur_st,nxt_st;
    reg [4:0]count;
    reg [7:0]data_o_tmp;

    always@(posedge clk)
        cur_st<=nxt_st;
    
    always@(*)
     begin
      nxt_st=cur_st;
      case(cur_st)
         IDLE:if(receive_ack) nxt_st=SEND_START;
         SEND_START:  nxt_st=SEND_DATA;
         SEND_DATA:   if(count==7) nxt_st=SEND_END;	//计数从0到7
         SEND_END:   if(receive_ack) nxt_st=SEND_START; 
         default: nxt_st=IDLE;
      endcase
      end

      always@(posedge clk)
          if(cur_st==SEND_DATA)
             count<=count+1;
          else if(cur_st==IDLE | cur_st==SEND_END)
             count<=0;

      always@(posedge clk)	//发送低位到高位
          if(cur_st==SEND_START)
             data_o_tmp<=data_o; 
          else if(cur_st==SEND_DATA)
             data_o_tmp[6:0]<=data_o_tmp[7:1];
      
      always@(posedge clk)
         if(cur_st==SEND_START)
             txd<=0;
          else if(cur_st==SEND_DATA)
             txd<=data_o_tmp[0];
          else if(cur_st==SEND_END)
             txd<=1;
endmodule

