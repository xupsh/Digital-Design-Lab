`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 06:10:28 PM
// Design Name: 
// Module Name: ps2_keyboard
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


module ps2_keyboard(
input clk25,
input clr,
input PS2C,//PS2 clock in 
input PS2D,//PS2 data in
output [15:0]xkey
    );
reg   PS2Cf,PS2Df;
reg [7:0] ps2c_filter,ps2d_filter;
reg [10:0] shift1,shift2;
assign xkey ={ shift2[8:1], shift1[8:1] };    
always@(posedge clk25 or posedge clr)begin
if(clr==1)begin
    ps2c_filter <= 11'b0;
    ps2d_filter <= 11'b0;
    PS2Cf <= 1;
    PS2Df <= 1;
end
else  begin
    ps2c_filter[7]<=PS2C;
    ps2c_filter[6:0]<= ps2c_filter[7:1];
    ps2d_filter[7]<=PS2D;
    ps2d_filter[6:0]<= ps2d_filter[7:1]; 
    if (ps2c_filter == 8'b11111111 )
    PS2Cf <= 1;
    else if (ps2c_filter==8'b00000000)
    PS2Cf <= 0;  
    if (ps2d_filter == 8'b11111111 )
    PS2Df <= 1;
    else if (ps2d_filter==8'b00000000)
    PS2Df <= 0;  
end
end   
always@(negedge PS2Cf or posedge clr )begin
    if(clr==1)begin
    		shift1 <= 11'b0;
    		shift2 <= 11'b0;
    end
else begin
   shift1 <={ PS2Df,shift1[10:1]};
   shift2 <= {shift1[0],shift2[10:1]};
end  
end
endmodule
