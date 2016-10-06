`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 04:23:58 PM
// Design Name: 
// Module Name: adc0809
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

module adc0809
   (
input  clk, reset,//状态机工作时钟和系统复位控制
input eoc,  //AADC转换启动信号和转换结束标志信号
output reg start,
input [7:0] data,//来自ADC的数据总线
output [2:0] addr,//ADC输入通道选择地址
output reg ale,//模拟通道地址输入锁存信号
output reg oe //ADC数据输出使能
   ) ;
localparam[ 1: 0 ]  //定义各状态
s0 = 2'b00 ,
s1 = 2'b01 ,
s2 = 2'b10 ,
s3 = 2'b11;
reg  [ 1:0 ]  state_reg , state_next ; //  状态声明
    // 状态转移
always  @ (posedge clk , posedge   reset )
if  ( reset )
state_reg <= s0 ;
else
state_reg <=  state_next ;
assign addr = 3'b001; //输入通道设定为通道0
    //  次态逻辑和输出逻辑
always  @*
begin
   case( state_reg )
s0 :
begin ale = 0; start = 0;oe = 0;
     state_next = s1; end
 s1 :
begin ale = 1; start = 1;oe = 0;
           state_next = s2; end
s2 :
begin ale = 0; start = 0;oe = 0;
   if (eoc == 1'b1) state_next = s3; //转换结束
   else state_next = s2;  //转换未结束，继续等待
        end
s3 :
begin ale = 0; start = 0;oe = 1; //使能转换数据输出
   state_next = s0;   
       end
endcase
end
endmodule

