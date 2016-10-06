`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: shift_register_8bit
// Description: A 8-bit Parallel-Out Serial Shift Register with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module shift_register_8bit #(parameter DELAY = 10)(
    input DSA,DSB,CP,MR_n,
    output Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0
    );
    
    reg [7:0]Q_r;
    
    always@(posedge CP,negedge MR_n)begin
        if(!MR_n)
            Q_r <= 8'b0;
        else begin
            Q_r = Q_r << 1;
            Q_r[0] = DSA && DSB;
        end
    end
    
    assign #DELAY {Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0} = Q_r;
    
endmodule
