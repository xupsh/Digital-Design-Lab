`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: two_4_input_and_gate
// Description: Two 4-input AND gate with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module two_4_input_and_gate#(parameter DELAY = 10)(
    input wire a1,b1,c1,d1,a2,b2,c2,d2,
    output wire y1,y2
    );
    
    and #DELAY (y1,a1,b1,c1,d1);
    and #DELAY (y2,a2,b2,c2,d2);
    
endmodule
