`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 06:03:37 PM
// Design Name: 
// Module Name: uart_rx
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


module uart_rx(
   input rxd,
   input clk,
   output receive_ack,
   output reg [7:0]data_i
    );
    
    localparam IDLE=0,
               RECEIVE=1,
               RECEIVE_END=2;

    reg [3:0]cur_st,nxt_st;
    reg [4:0]count;
    reg [7:0]data_o_tmp;
    
    always@(posedge clk)
        cur_st<=nxt_st;
    
     always@(*)
     begin
        nxt_st=cur_st;
        case(cur_st)
           IDLE: if(!rxd) nxt_st=RECEIVE;
           RECEIVE: if(count==7) nxt_st=RECEIVE_END;	//计数从0到7
           RECEIVE_END: nxt_st=IDLE;
           default: nxt_st=IDLE;
      endcase
      end
      
      always@(posedge clk)
          if(cur_st==RECEIVE)
             count<=count+1;
          else if(cur_st==IDLE | cur_st==RECEIVE_END)
             count<=0;
         
      always@(posedge clk)
          if(cur_st==RECEIVE)  //从高到低发送数据
          begin
             data_i[6:0]<=data_i[7:1];
             data_i[7]<=rxd;
          end
          
      assign receive_ack=(cur_st==RECEIVE_END)?1:0;
endmodule

