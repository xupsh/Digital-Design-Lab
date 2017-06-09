`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2017 05:57:06 PM
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
    
    reg clk,reset;
    reg [4:0]data_in;
    wire [4:0]data_out;
    initial  clk=0;
    always #10 clk=!clk;
    
    
    initial begin
    reset=0;
    #40 reset=1;
    #40 reset=0;
    end
    
    always@(posedge clk or posedge reset)
    if(reset)
        data_in<=0;
    else
        data_in<=data_in+1;
    
    
    timing_analyze timing_analyze(
        .data_in(data_in),         
        .data_out(data_out),
        .clk(clk),
        .reset(reset)
        );
    
    
    
    
endmodule
