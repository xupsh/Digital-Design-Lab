`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: two_mux_4_to_1
// Description: Two 4-input Digital Multiplexers with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module two_mux_4_to_1 #(parameter DELAY = 10)(
    input s1_n,s2_n,a1,a0,d3_1,d2_1,d1_1,d0_1,d3_2,d2_2,d1_2,d0_2,
    output y1,y2
    );
    reg y1_reg,y2_reg;
    always@(*)
        case({a1,a0})
            00:begin 
                y1_reg = d0_1;
                y2_reg = d0_2;
            end
            00:begin 
                y1_reg = d1_1;
                y2_reg = d1_2;
            end
            00:begin 
                y1_reg = d2_1;
                y2_reg = d2_2;
            end
            00:begin 
                y1_reg = d3_1;
                y2_reg = d3_2;
            end
        endcase
    
    assign #DELAY y1 = (s1_n)? 1'b0 : y1_reg;
    assign #DELAY y2 = (s2_n)? 1'b0 : y2_reg;
endmodule
