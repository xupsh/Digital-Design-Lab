`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:35:24 PM
// Design Name: 
// Module Name: scan_led_disp
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


module scan_led_disp  
   (input  clk,reset,
     input [7:0] in3,in2,in1,in0,
     output reg [3:0] an,
          output reg [7:0] sseg         
     );
     localparam N = 18; //对输入50MHz时钟进行分频(50 MHz/2^16)
       reg [N-1:0]  regN;
        always @(posedge clk,posedge reset) 
         if (reset)
           regN <= 0;
         else
            regN <= regN + 1;
      always @*
	    case (regN[N-1:N-2])
		  2'b00:
			begin
				an = 4'b1110;
				sseg = in0;
			end
		 2'b01:
			begin
				an = 4'b1101;
				sseg = in1;
			end
		 2'b10:
			begin
				an = 4'b1011;
				sseg = in2;
			end
		 default:
			begin
				an = 4'b0111;
				sseg = in3;
			end
	    endcase
      endmodule

