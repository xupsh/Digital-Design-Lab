`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Cui Hongyu
// 
// Create Date: 2014/09/16 19:34:49
// Design Name: digital_base_IP
// Module Name: four_2_input_and_gate
// Project Name: 74LS04
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


module four_2_input_and_gate#(parameter Delay = 0)(
    input wire A1,B1,A2,B2,A3,B3,A4,B4,
    output wire Y1,Y2,Y3,Y4
    );
    
    and #Delay (Y1,A1,B1);
    and #Delay (Y2,A2,B2);
    and #Delay (Y3,A3,B3);
    and #Delay (Y4,A4,B4);
    
endmodule
