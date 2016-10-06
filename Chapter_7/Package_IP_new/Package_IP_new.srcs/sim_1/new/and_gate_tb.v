`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2016 02:20:29 PM
// Design Name: 
// Module Name: and_gate_tb
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


module and_gate_tb(

    );
    reg [1:0]a,b;
    initial begin
    a=2'b10;b=2'b00;

    #40  a=2'b11;b=2'b10;
    end
    
    wire [1:0]c;
    and_gate and_gate
    (
        .a(a),
        .b(b),
        .c(c)
    );
    
endmodule
