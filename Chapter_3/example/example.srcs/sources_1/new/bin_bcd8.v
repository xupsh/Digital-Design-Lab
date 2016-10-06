`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 02:45:02 PM
// Design Name: 
// Module Name: bin_bcd8
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


module bin_bcd8
   (
        input [7:0] bin4,
		output  reg [9:0]  bcd 
     );
      //中间变量
      reg [17:0] x;
      integer i;
      always @* 
         begin 
           for(i=0;i<8;i=i+1)
			 x[i] = 0;
             x[10:3] = bin4;               //左移三位

           repeat(5)                  //重复5次
           begin
             if(x[11:8]>4)              //如果个位大于4
               x[11:8] = x[11:8] + 3;     //加3
             if(x[15:12]>4)             //如果十位大于4
               x[15:12] = x[15:12] + 3;   //加3
             x[17:1] = x[16:0];          //左移1位
           end
           bcd = x[17:8];              //BCD
      end
  endmodule

