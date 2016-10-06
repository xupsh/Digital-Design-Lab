`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:09:48 AM
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


module Top;
reg A,B;
reg CIN;
wire SUM, COUT;

//实例化顺序连接
//信号按照端口列表中的次序连接，在本模块中把它命名为adder
fullAdder adder
(.a(A),
.b(B),
.cin(CIN),
.sum(SUM),
.cout(COUT)
);



endmodule
