`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/16 10:52:52
// Design Name: 
// Module Name: timing_analyze
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


module timing_analyze(
    input [4:0]data_in,         
    output reg [4:0]data_out,
    input clk,
    input reset
    );
    reg [4:0]data_tmp_in;
    wire [4:0]data_tmp_out;
    wire [4:0]data_tmp2,data_tmp3,data_tmp4,data_tmp5,data_cal_out;
    always@(posedge clk)
        if(reset)
            data_tmp_in<=0;
        else data_tmp_in<=data_in;  
//为了增加经过逻辑门的数量，我们做连续的乘法
    assign data_tmp2=data_tmp_in*3;
    assign data_tmp3=data_tmp2*data_tmp_in;
    assign data_tmp4=data_tmp3*data_tmp2;
    assign data_tmp5=data_tmp4*data_tmp3;
    assign data_cal_out=data_tmp5;
    always@(posedge clk)
        if(reset)
            data_out<=0;
        else data_out<= data_cal_out; 
endmodule

