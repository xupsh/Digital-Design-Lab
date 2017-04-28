`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Cui Hongyu
// 
// Create Date: 2014/10/08 19:53:53
// Design Name: digital_base_IP
// Module Name: decimal_counter
// Project Name: 74LS90
// Target Devices: Basys3
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


module decimal_counter(
    input CP1_n,CP2_n,
    input R0_1,R0_2,
    input R9_1,R9_2,
    output Qa,Qb,Qc,Qd
    );
    reg [2:0]count;
    reg a;
    
    initial begin
        count = 3'b0;
        a = 0;
    end
    
    always@(negedge CP1_n,posedge R0_1,posedge R0_2,posedge R9_1,posedge R9_2)begin
        if(R9_1 && R9_2)
            a <= 1'b1;
        else if(R0_1 && R0_2)
            a <= 1'b0;
        else
            a <= ~a;
    end
    
    always@(negedge CP2_n,posedge R0_1,posedge R0_2,posedge R9_1,posedge R9_2)begin
        if(R9_1 && R9_2)
            count <= 3'b100;
        else if(R0_1 && R0_2)
            count <= 3'b0;
        else begin
            if(count < 3'd4)
                count <= count +1'b1;
            else
                count <= 0;
        end
    end
    
    assign Qa = a;
    assign Qb = count[0];
    assign Qc = count[1];
    assign Qd = count[2];
    
endmodule
