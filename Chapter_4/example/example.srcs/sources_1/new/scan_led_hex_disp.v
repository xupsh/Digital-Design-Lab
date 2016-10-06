`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 03:37:16 PM
// Design Name: 
// Module Name: scan_led_hex_disp
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


module scan_led_hex_disp  
   (input  clk,reset,
     input [3:0] hex3,hex2,hex1,hex0,
     input [3:0] dp_in,
     output reg [3:0] an,
          output reg [7:0] sseg         
     );
     localparam N = 18; //对输入50MHz时钟进行分频(50 MHz/2^16)
       reg [N-1:0]  regN;
reg [3:0] hex_in;
reg dp;
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
				hex_in = hex0;
				dp = dp_in[0];
			end
		 2'b01:
			begin
				an = 4'b1101;
				hex_in = hex1;
				dp = dp_in[1];
			end
		 2'b10:
			begin
				an = 4'b1011;
				hex_in = hex2;
				dp = dp_in[2];
			end
		 default:
			begin
				an = 4'b0111;
				hex_in = hex3;
				dp = dp_in[3];
			end
	    endcase
  always @*
begin
	 case (hex_in)
		4'h0: sseg[6:0] = 7'b0000001;
		4'h1: sseg[6:0] = 7'b1001111;
		4'h2: sseg[6:0] = 7'b0010010;
		4'h3: sseg[6:0] = 7'b0000110;
		4'h4: sseg[6:0] = 7'b1001100;
		4'h5: sseg[6:0] = 7'b0100100;
		4'h6: sseg[6:0] = 7'b0100000;
		4'h7: sseg[6:0] = 7'b0001111;
		4'h8: sseg[6:0] = 7'b0000000;
		4'h9: sseg[6:0] = 7'b0000100;
		4'ha: sseg[6:0] = 7'b0001000;
		4'hb: sseg[6:0] = 7'b1100000;
		4'hc: sseg[6:0] = 7'b0110001;
		4'hd: sseg[6:0] = 7'b1000010;
		4'he: sseg[6:0] = 7'b0110000;
		default: sseg[6:0] = 7'b0111000;  //4'hf
	  endcase
	sseg[7] = dp;
	    end
      endmodule

