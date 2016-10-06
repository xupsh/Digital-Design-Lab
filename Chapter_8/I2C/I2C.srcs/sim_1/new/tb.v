`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 06:13:05 PM
// Design Name: 
// Module Name: tb
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


module tb(
    );

    reg rst;
    initial	//产生复位信号
    begin
        rst=0;
        #40 rst=1;
        #40 rst=0;
    end
    
    reg clk;	//自定义时钟
    reg scl,sda;	//I2C信号
    
    initial clk=0;
    always #20 clk=~clk;
    
    localparam  idle=0,
                start=1,
                data=2,
                eop=3,
                stop=4;
                
    reg [2:0]cur_st,nxt_st;
    reg [3:0]count;    
    always@(posedge clk)
        if(rst)
            cur_st<=0;
        else cur_st<=nxt_st;
    
    always@(*)
    begin
        nxt_st=cur_st;
        case(cur_st)
            idle:nxt_st=start;
            start:nxt_st=data;
            data:if(count==7) nxt_st=eop;	//计8个数
            eop:nxt_st=stop;
            stop:nxt_st=stop;
            default:nxt_st=idle;
         endcase
     end
     //产生SDA
     always@(negedge clk)
        if(cur_st==idle)
            sda<=1;
        else if(cur_st==start)
            sda<=0;
        else if(cur_st==data)
            sda<=!sda;
        else if(cur_st==eop)
            sda<=0;
        else if(cur_st==stop)
            sda<=1;
      //产生SCL
      always@(*)
        if(rst)
            scl=1;
        else if(cur_st==data)
            scl=clk;
        else scl=1;
        
      always@(posedge clk)
        if(rst)
            count<=0;
        else if(cur_st==data)
            count<=count+1;
        
endmodule

