`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2015 12:49:40 PM
// Design Name: 
// Module Name: servo_ctrl
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


module servo_ctrl(
input vsync_in,
input[11:0] x,
input[10:0] y,
input[15:0] ad_data_x,ad_data_y,
output[14:0]duty_x,duty_y
    );

    pwm_gen_x u_pwm_gen_x(
     .vsync_in(vsync_in),
     .MEASURED_AUX_A(ad_data_x),
     .x (x),
     .pwm_thres(duty_x)
    );           

    pwm_gen_y u_pwm_gen_y(
     .vsync_in(vsync_in),
     .MEASURED_AUX_B(ad_data_y),
     .y (y),
     .pwm_thres(duty_y)
    ); 

endmodule

