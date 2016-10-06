`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2016 11:25:42 AM
// Design Name: 
// Module Name: test
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


module test(

    );
    wire c;
    reg a,b;
    initial
    begin
        a=0;b=0;
        #40 a=1;b=1;
    end
    
    and_gate and_gate(
    .a(a),
    .b(b),
    .c(c)
    );
    
    
endmodule
