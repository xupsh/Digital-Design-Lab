`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: four_2_input_and_gate
// Description: Four 2-input AND gate with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module four_2_input_and_gate#(parameter DELAY = 10)(
    input wire a1,b1,a2,b2,a3,b3,a4,b4,
    output wire y1,y2,y3,y4
    );
    
    and #DELAY (y1,a1,b1);
    and #DELAY (y2,a2,b2);
    and #DELAY (y3,a3,b3);
    and #DELAY (y4,a4,b4);
    
endmodule
