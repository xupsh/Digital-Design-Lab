`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: one_8_input_nand_gate
// Description: A 8-input NAND gate with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module one_8_input_nand_gate #(parameter DELAY = 10)(
    input wire a,b,c,d,e,f,g,h,
    output wire y
    );
    
    nand #DELAY (y,a,b,c,d,e,f,g,h);
    
endmodule
