`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2016 03:15:56 PM
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
    
    reg clk;
    initial clk = 0;
    always begin
        #10 clk = !clk;
    end
    
    reg reset;
    initial begin
    reset=0;
    #50 reset=1;
    #50 reset=0;
    end
    
    oled_top oled_top(
        .clk(clk)
       
        
        );
endmodule
