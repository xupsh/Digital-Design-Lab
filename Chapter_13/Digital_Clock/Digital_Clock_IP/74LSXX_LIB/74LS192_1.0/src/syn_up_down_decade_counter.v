`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: syn_up_down_decade_counter
// Description: A presettable BCD/Decade Up/DOWN Counter with DELAY configuration parameter
// parameters: DELAY
/////////////////////////////////////////////////////////////////

module syn_up_down_decade_counter #(parameter DELAY = 10)(
    input cpu,cpd,pl_n,mr,
    input p3,p2,p1,p0,
    //output TCu_n,TCd_n,
    output reg q3,q2,q1,q0
    );
    
    reg [3:0]count;
    wire En;
    
    assign En = cpu && cpd;
    
    always@(negedge En,posedge mr,negedge pl_n)begin
        if(mr)
            count <= 0;
        else if(!pl_n)
            count <= {p3,p2,p1,p0};
        else begin
            if(!cpu && cpd)begin
                if(count < 9)
                    count <= count + 1;
                else
                    count <= 0;
            end                
            if(!cpd && cpu)begin
                if(count > 1)
                    count <= count - 1;
                else
                    count <= 9;
            end
        end
    end
    
    always@(posedge En,posedge mr,negedge pl_n)begin
        if(mr)
             #DELAY {q3,q2,q1,q0} <= 4'b0;
        else if(!pl_n)
             #DELAY {q3,q2,q1,q0} <= {p3,p2,p1,p0};
        else
             #DELAY {q3,q2,q1,q0} <= count;
    end
    
endmodule
