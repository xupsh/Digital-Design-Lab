`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: four_2_input_xor_gate
// Description: Four 2-input XOR gate with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module four_2_input_xor_gate #(parameter DELAY = 10)(
    input wire a1,b1,a2,b2,a3,b3,a4,b4,
    output wire y1,y2,y3,y4
    );
 
    xor #DELAY (y1,a1,b1);
    xor #DELAY (y2,a2,b2);
    xor #DELAY (y3,a3,b3);
    xor #DELAY (y4,a4,b4);   
    
endmodule
