`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2016 09:44:31 AM
// Design Name: 
// Module Name: top
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


module top(
input clk,
input reset
    );
    reg wr_en;
    reg rd_en;
    
    reg [7:0]din;
    wire [7:0]dout;
    fifo_generator_0 your_instance_name (
      .clk(clk),      // input wire clk
      .rst(reset),      // input wire rst
      .din(din),      // input wire [17 : 0] din
      .wr_en(wr_en),  // input wire wr_en
      .rd_en(rd_en),  // input wire rd_en
      .dout(dout),    // output wire [17 : 0] dout
      .full(full),    // output wire full
      .empty(empty)  // output wire empty
    );
    reg [2:0]cur_st,nxt_st;
    localparam  idle=0,	
                write=1,	//Ð´FIFO
                read=2;	//¶ÁFIFO
 
                
    always@(posedge clk or posedge reset)
        if(reset)
            cur_st<=0;
        else cur_st<=nxt_st;
    
    always@(*)
    begin
        nxt_st=cur_st;
        case(cur_st)
            idle:nxt_st=write;
            write:nxt_st=read;
            read:nxt_st=idle;
            default:nxt_st=idle;
        endcase
     end
     //Ð´Ê±Ðò
     always@(*)
        if(cur_st==write)
        begin
            wr_en=1;
            din=10;
        end
        else wr_en=0;
     //¶ÁÊ±Ðò
     always@(*)
        if(cur_st==read)
            rd_en=1;
        else rd_en=0;
endmodule

