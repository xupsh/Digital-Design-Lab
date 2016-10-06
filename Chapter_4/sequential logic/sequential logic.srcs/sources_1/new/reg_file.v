`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:25:46 PM
// Design Name: 
// Module Name: reg_file
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


module reg_file   
  #(
parameter N = 8,//比特数
W = 2) //地址比特数
      (
        input  clk,
         input  wr_en,
         input [W-1:0] w_addr,r_addr,
input [N-1:0]  w_data,
        output  [N-1:0]  r_data  
    );
      reg [N-1:0] array_reg[2**W-1:0];
      always @(posedge clk) 
        if(wr_en)
          array_reg[w_addr] <= w_data;
       assign r_data = array_reg[r_addr];
     endmodule

