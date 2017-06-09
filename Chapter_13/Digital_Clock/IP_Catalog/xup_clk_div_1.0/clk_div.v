`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/10/10 21:49:35
// Design Name: 
// Module Name: clk_div
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


module clk_div #(parameter N = 100000000)(
    input clk_in,
    output reg clk_out
    );
    
    reg [31:0]count;
    always@(posedge clk_in)begin
        if(count < N)begin
            count <= count + 1'b1;
            clk_out <= 1'b0;
        end
        else begin
            count <= 0;
            clk_out <= 1'b1;
        end
    end
    
endmodule
