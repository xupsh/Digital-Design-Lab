`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:46:07 PM
// Design Name: 
// Module Name: stop_watch
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


module stop_watch 
   (input  clk,
    input  go,clr,
    output [3:0] d2,d1,d0         
     );
     localparam COUNT_VALUE = 5000000;
     reg [22:0] ms_reg;
     reg [3:0] d2_reg, d1_reg, d0_reg;
      wire ms_tick;
      reg [3:0] d2_next, d1_next, d0_next;
      always @(posedge clk)
        begin
           if (clr==0)
           begin
              ms_reg <=23'b0;
            d2_reg <= 4'b0;
	          d1_reg <= 4'b0;
            d0_reg <= 4'b0;
           end
           else if (go == 1)
                begin 
                  d2_reg <= d2_next;
	              d1_reg <= d1_next;
d0_reg <= d0_next;
                  if (ms_reg < COUNT_VALUE) 
                     ms_reg <= ms_reg + 1;
                  else
                     ms_reg <= 23'b0;
                end
           end
         assign ms_tick = (ms_reg == COUNT_VALUE) ? 1'b1 : 1'b0;
         always @*
begin
	         if (ms_tick)
	if (d0_reg != 9)
		          d0_next = d0_reg + 1;
	            else
		          begin
			     d0_next = 4'b0;
			     if (d1_reg != 9)
				   d1_next = d1_reg + 1;
			     else
				    begin
					  d1_next = 4'b0;
					  if (d2_reg != 9)
						 d2_next = d2_reg + 1;
					  else 
						d2_next = 4'b0;
				    end
		       end
end
       assign d2 = d2_reg;
       assign d1 = d1_reg;
       assign d0 = d0_reg;
      endmodule

