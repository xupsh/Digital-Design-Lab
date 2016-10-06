`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:02:27 PM
// Design Name: 
// Module Name: dff_reset_en_2seg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



 module dff_reset_en_2seg  
     (
       input  clk,reset,
        input  en,
        input  d,
       output  reg  q  
   );
     reg r_reg,r_next;
     always @(posedge clk,posedge reset) 
       begin   
         if (reset)    
r_reg <= 1'b0;
         else 
           r_reg <= r_next; 
       end

     //next-state logic
     always @*
       begin
         if (en)
           r_next = d;
        else
           r_next = r_reg;
       end
     //output logic 
     always @*
        q = r_reg;
    endmodule
