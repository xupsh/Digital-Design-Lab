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
module pwm_gen_y(
input              vsync_in ,
input [15:0]       MEASURED_AUX_B,
input [10:0]       y,
output reg [14:0]  pwm_thres
);
    
reg [8:0]        pwm_diff;
initial          pwm_thres = 1500;


always@(posedge vsync_in)begin

    if(y>0 &&  y< 120)begin
        pwm_diff <= 120 - y;
        if(pwm_diff>120)
            pwm_diff <= 120;
        if(pwm_diff<1)
            pwm_diff <= 1;
        //Calculate the servo's position in next period.
        // Only need 2 signals:1.the servo's current position(MEASURED_AUX_B); 
        //2.the differential between ball's  center position in image and the image's center position
        pwm_thres <=pwm_diff> 18?  MEASURED_AUX_B[15:4]*2380/4096+175 + pwm_diff*90/32 : pwm_thres;
        
        //limit the servo's range of movement
        if(pwm_thres>2150)
            pwm_thres <= 2150;
        if(pwm_thres<800)
            pwm_thres <= 800;
    end
    else if(y>=120 && y< 240)begin
        pwm_diff <= y - 120;
        if(pwm_diff>120)
            pwm_diff <= 120;
        if(pwm_diff<1)
            pwm_diff <= 1;
        //Calculate the servo's position in next period.
        // Only need 2 signals:1.the servo's current position(MEASURED_AUX_B); 
        //2.the differential between ball's  center position in image and the image's center position
        pwm_thres <=pwm_diff> 18? MEASURED_AUX_B[15:4]*2380/4096+175 - pwm_diff*90/32 : pwm_thres;
        
        //limit the servo's range of movement
        if(pwm_thres>2150) 
            pwm_thres <= 2150;
        if(pwm_thres<800)
            pwm_thres <= 800;
    end
    else
        pwm_diff <= 0;
        

end

endmodule
