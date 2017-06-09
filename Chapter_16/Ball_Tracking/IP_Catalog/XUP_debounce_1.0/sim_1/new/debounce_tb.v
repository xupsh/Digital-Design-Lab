`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2015 04:24:50 PM
// Design Name: 
// Module Name: debounce_tb
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


module debounce_tb;
// Inputs
reg clk;
reg clr;
reg i;
// Outputs
wire o;

debounce u_debounce(
.clk(clk),
.clr(clr),
.i(i),
.o(o)
);
 initial begin
   clk = 0;
   i = 0;
   #100 
   i = 1;
    #5 
   i = 0;  
   clr = 0;
    #1 
  i = 1;  
      #1 
 i = 0;  
     #1 
i = 1;  
   #1 
i = 0;    
    #1 
i = 1;  
  #1 
i = 0; 
    #1 
i = 1;  
    #199999999
i = 0; 
   end
   
initial forever #1 clk= ~ clk;

endmodule
