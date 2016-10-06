`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: BCD_Decimal
// Description: A BCD-to-decimal Decoder with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module BCD_Decimal#(parameter DELAY = 10)(
    input wire a,b,c,d,
    output wire y0,y1,y2,y3,y4,y5,y6,y7,y8,y9
    );
    
    reg [9:0]y;
    
    always@*
        case({D,C,B,a})
            4'h0: y = 10'b11_1111_1110;
            4'h1: y = 10'b11_1111_1101;
            4'h2: y = 10'b11_1111_1011;
            4'h3: y = 10'b11_1111_0111;
            4'h4: y = 10'b11_1110_1111;
            4'h5: y = 10'b11_1101_1111;
            4'h6: y = 10'b11_1011_1111;
            4'h7: y = 10'b11_0111_1111;
            4'h8: y = 10'b10_1111_1111;
            4'h9: y = 10'b01_1111_1111;
            default: y = 10'b11_1111_1111;            
        endcase
    
    assign #DELAY y0 = y[0];
    assign #DELAY y1 = y[1];
    assign #DELAY y2 = y[2];
    assign #DELAY y3 = y[3];
    assign #DELAY y4 = y[4];
    assign #DELAY y5 = y[5];
    assign #DELAY y6 = y[6];
    assign #DELAY y7 = y[7];
    assign #DELAY y8 = y[8];
    assign #DELAY y9 = y[9];
    
endmodule
