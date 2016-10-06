`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2015/01/26 15:09:29
// Design Name: 
// Module Name: PWM_gen
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


module PWM_gen #(parameter f = 50)(
    input wire clk_pwm,
    input wire clr_pwm,
    input [14:0] duty,
    output reg PWM
    );
    wire [31:0]count_max = 100_000_000/f - 1;
    wire [31:0]count_duty = (count_max + 1)*duty/20000;
    reg [31:0]count;
    
    always@(posedge clk_pwm,posedge clr_pwm)begin
        if(clr_pwm)begin
            PWM <= 0;
            count <= 0;
        end
        else if(count < count_max)begin
            if(count < count_duty)
                PWM <= 1;
            else
                PWM <= 0;
            count <= count + 1;
        end
        else begin
            count <= 0;
            PWM <= 0;
        end
    end

endmodule
