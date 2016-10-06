`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: magnitude_comparator_4bits
// Description: A 4-bit Magnitude Comparator with DELAY configuration parameter
// Parameters: DELAY
/////////////////////////////////////////////////////////////////

module magnitude_comparator_4bits #(parameter DELAY = 10)(
    input a3,b3,a2,b2,a1,b1,a0,b0,
    input Igt,Ilt,Ieq,
    output Ogt,Olt,Oeq
    );
    
    wire [2:0]cascade_in;
    reg [2:0]result; //result[2]:Ogt ; result[1]:Olt ; result[0]:Oeq
    wire [3:0]opa,opb;
    
    assign cascade_in = {Igt,Ilt,Ieq};
    assign opa = {a3,a2,a1,a0}; 
    assign opb = {b3,b2,b1,b0}; 

    always@(*)begin
        if(opa > opb)
            result = 3'b100;
        else if(opa < opb)
            result = 3'b010;
        else begin
            case(cascade_in)
                3'b100:result = 3'b100;
                
                3'b010:result = 3'b010;
                
                3'b001:result = 3'b001;
                
                3'b??1:result = 3'b001;
                
                3'b110:result = 3'b000;
                
                3'b000:result = 3'b110;
            endcase
        end
    end
    
    assign #DELAY Ogt = result[2];
    assign #DELAY Olt = result[1];
    assign #DELAY Oeq = result[0];
    
endmodule
