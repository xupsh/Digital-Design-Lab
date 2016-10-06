`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: BCD2SEG7
// Description: A BCD-to-Segment Decoder with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module BCD2SEG7#(parameter DELAY = 10)(
    input LT_n,RBI_n,BCD_D,BCD_C,BCD_B,BCD_A,
    output a,b,c,d,e,f,g,
    inout BI_RBO_n
    );
    
    wire [3:0]BCD;
    reg [6:0]a_to_g;
    wire RBO_buffer;
    
    assign BCD = {BCD_D,BCD_C,BCD_B,BCD_A};
    
    always@(*)begin
        if(!BI_RBO_n)
            a_to_g <= 7'b111_1111;
        else if(!LT_n)
            a_to_g <= 7'b0;
        else if(RBI_n && BCD == 4'b0000)
                a_to_g <= 7'b000_0001; //0
            else
            case(BCD)
                4'b0001: a_to_g <= 7'b100_1111; //1
                4'b0010: a_to_g <= 7'b001_0010; //2
                4'b0011: a_to_g <= 7'b000_0110; //3
                4'b0100: a_to_g <= 7'b100_1100; //4
                4'b0101: a_to_g <= 7'b010_0100; //5
                4'b0110: a_to_g <= 7'b010_0000; //6
                4'b0111: a_to_g <= 7'b000_1111; //7
                4'b1000: a_to_g <= 7'b000_0000; //8
                4'b1001: a_to_g <= 7'b000_0100; //9
                4'b1010: a_to_g <= 7'b000_1101; //10
                4'b1011: a_to_g <= 7'b001_1001; //11
                4'b1100: a_to_g <= 7'b010_0011; //12
                4'b1101: a_to_g <= 7'b100_1011; //13
                4'b1110: a_to_g <= 7'b000_1111; //14
                4'b1111: a_to_g <= 7'b000_0000; //15
            endcase
    end
    
    assign #DELAY a = a_to_g[6];
    assign #DELAY b = a_to_g[5];
    assign #DELAY c = a_to_g[4];
    assign #DELAY d = a_to_g[3];
    assign #DELAY e = a_to_g[2];
    assign #DELAY f = a_to_g[1];
    assign #DELAY g = a_to_g[0];
    
    assign #DELAY RBO_buffer = ~(LT_n&(~RBI_n)&(~BCD_A)&(~BCD_B)&(~BCD_C)&(~BCD_D));
    assign #DELAY BI_RBO_n = ((~LT_n) || (~RBO_buffer)) ? RBO_buffer : 1'bz;
    
endmodule
