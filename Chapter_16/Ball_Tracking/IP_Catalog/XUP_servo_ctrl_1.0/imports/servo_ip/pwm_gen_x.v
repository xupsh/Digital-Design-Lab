`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:41 01/22/2014 
// Design Name: 
// Module Name:    pwm_gen 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pwm_gen_x(
input                vsync_in ,
input [15:0]         MEASURED_AUX_A,
input [11:0]         x,
output reg [14:0]   pwm_thres
 );
    
initial          pwm_thres = 1500;
reg[8:0]         pwm_diff;

always@(posedge vsync_in)begin
    if(x>0 &&  x< 160)begin
        pwm_diff <= 160 - x;
        if(pwm_diff>160)
            pwm_diff <= 160;
        if(pwm_diff<1)
            pwm_diff <= 1; 
        //Calculate the servo's position in next period.
        // Only need 2 signals:1.the servo's current position(MEASURED_AUX_B); 
        //2.the differential between ball's  center position in image and the image's center position
        pwm_thres <=pwm_diff> 24? (MEASURED_AUX_A[15:4]*2380/4096 +240 +pwm_diff*90/32):pwm_thres;
        //limit the servo's range of movement
        if(pwm_thres>2500)
            pwm_thres <= 2500;
        if(pwm_thres<500)
            pwm_thres <= 500;
    end
    else if(x>=160 && x< 320)begin
        pwm_diff <= x - 160;
        if(pwm_diff>160)
            pwm_diff <= 160;
        if(pwm_diff<1)
            pwm_diff <= 1;
        //Calculate the servo's position in next period.
        // Only need 2 signals:1.the servo's current position(MEASURED_AUX_B); 
        //2.the differential between ball's  center position in image and the image's center position
        pwm_thres <=pwm_diff> 24? MEASURED_AUX_A[15:4]*2380/4096 +240 -  pwm_diff*90/32:pwm_thres;
        //limit the servo's range of movement	
        if(pwm_thres>2500)
            pwm_thres <= 2500;
        if(pwm_thres<500)
            pwm_thres <= 500;
    end
    else
        pwm_diff <= 0;
 end
 
 endmodule
