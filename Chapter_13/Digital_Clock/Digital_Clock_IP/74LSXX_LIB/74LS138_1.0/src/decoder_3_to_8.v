`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: decoder_3_to_8
// Description: A 3-to-8 Line Decoder/Demultiplexer with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module decoder_3_to_8 #(parameter DELAY = 10)(
    input wire a0,a1,a2,e1,e2_n,e3_n,
    output wire y0_n,y1_n,y2_n,y3_n,y4_n,y5_n,y6_n,y7_n
    );
    
    reg [7:0]y;
    integer i;
    
    always@*
        if({e1,e2_n,e3_n} == 3'b100)
            for(i=0; i<=7; i=i+1)
                if({a2,a1,a0} == i)
                    y[i]=0;
                else
                    y[i]=1;
        else
            y = 8'hff;
            
    assign #DELAY y0_n = y[0];            
    assign #DELAY y1_n = y[1];            
    assign #DELAY y2_n = y[2];            
    assign #DELAY y3_n = y[3];            
    assign #DELAY y4_n = y[4];            
    assign #DELAY y5_n = y[5];            
    assign #DELAY y6_n = y[6];            
    assign #DELAY y7_n = y[7];
                
endmodule
