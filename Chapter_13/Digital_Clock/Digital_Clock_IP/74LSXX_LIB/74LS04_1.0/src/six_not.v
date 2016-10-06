`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: six_not_gate
// Description: Six NOT gate with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module six_not_gate #(parameter DELAY = 10)(
    input wire a1,a2,a3,a4,a5,a6,
    output wire y1,y2,y3,y4,y5,y6
    );
    
    not #DELAY (y1,a1);
    not #DELAY (y2,a2);
    not #DELAY (y3,a3);
    not #DELAY (y4,a4);
    not #DELAY (y5,a5);
    not #DELAY (y6,a6);
    
endmodule