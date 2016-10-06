`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: d_flipflop_set_reset
// Description: Dual D-Type Positive-edge-triggered Flip-Flops with Preset, Clear and DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module d_flipflop_set_reset #(parameter DELAY = 10)(
    input wire clk1,pr1_n,clr1_n,D1,
    input wire clk2,pr2_n,clr2_n,D2,
    output wire q1,
    output wire q1_n,
    output wire q2,
    output wire q2_n
    );
    
	reg q1_reg;
	reg q2_reg;
	
    always@(posedge clk1,negedge pr1_n,negedge clr1_n)
        if(pr1_n == 0)
            q1_reg <= 1;
        else if(clr1_n == 0)
            q1_reg <= 0;
        else
            q1_reg <= D1;
    
    always@(posedge clk2,negedge pr2_n,negedge clr2_n)
        if(pr2_n == 0)
            q2_reg <= 1;
        else if(clr2_n == 0)
            q2_reg <= 0;
        else
            q2_reg <= D2;
    
	assign #DELAY q1 = q1_reg;
    assign #DELAY q1_n = ~q1_reg;
	assign #DELAY q2 = q2_reg;
    assign #DELAY q2_n = ~q2_reg;
    
endmodule
