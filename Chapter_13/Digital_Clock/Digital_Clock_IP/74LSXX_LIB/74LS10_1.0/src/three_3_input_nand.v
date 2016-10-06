`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: tri_3_input_nand_gate
// Description: Three 3-input NAND gate with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module tri_3_input_nand_gate#(parameter DELAY = 10)(
    input wire a1,b1,c1,a2,b2,c2,a3,b3,c3,
    output wire y1,y2,y3
    );
    
    nand #DELAY (y1,a1,b1,c1);
    nand #DELAY (y2,a2,b2,c2);
    nand #DELAY (y3,a3,b3,c3);
    
endmodule
