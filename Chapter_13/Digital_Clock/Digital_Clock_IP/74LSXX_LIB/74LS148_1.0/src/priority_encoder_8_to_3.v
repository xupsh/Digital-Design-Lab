`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: priority_encoder_8_to_3
// Description: A 8-to-3-Line Priority Encoder with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module priority_encoder_8_to_3 #(parameter DELAY = 10)(
    input i7,i6,i5,i4,i3,i2,i1,i0,
    input ei,
    output qc,qb,qa,   
    output gs,eo
    );
    
    wire [7:0]v;
    reg [2:0]y;
    integer i;
	reg gs_reg,eo_reg;
    assign v = {i7,i6,i5,i4,i3,i2,i1,i0};
    
    always @(*)
        if(Ei)
        begin
            y = 3'b111;
            gs_reg = 1'b1;
            eo_reg = 1'b1;
        end
        else
            if( &v )
            begin
                y = 3'b111;
                gs_reg = 1'b1;
                eo_reg = 1'b0;
            end
            else    
            begin
                gs_reg = 1'b0;
                eo_reg = 1'b1;
                for(i=0;i<8;i=i+1)
                    if(v[i] == 0)
                        y = ~i;
            end
    
    assign #DELAY qa = y[0];
    assign #DELAY qb = y[1];
    assign #DELAY qc = y[2];
	assign #DELAY gs = gs_reg;
	assign #DELAY eo = eo_reg;
    
endmodule

