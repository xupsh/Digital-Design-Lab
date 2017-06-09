`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2015 02:59:47 PM
// Design Name: 
// Module Name: pwm_tb
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


module pwm_tb(

    );
    
    reg clk_pwm,clr_pwm;
    wire PWM;
    
    PWM_gen #(.f(1000),.duty(90)) DUT (//parameter f = 10000,duty = 50
        .clk_pwm(clk_pwm),
        .clr_pwm(clr_pwm),
        .PWM(PWM)
        );
        
    initial begin 
        clk_pwm = 0;clr_pwm = 0;
        forever #1 clk_pwm = ~clk_pwm;
    end
    
endmodule
