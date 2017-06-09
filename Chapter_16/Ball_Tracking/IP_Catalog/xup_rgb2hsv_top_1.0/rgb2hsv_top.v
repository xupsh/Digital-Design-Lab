`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:43 04/23/2014 
// Design Name: 
// Module Name:    rgb2hsv_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rgb2hsv_top(
input pclk,
input [23:0]RGB24,
output[23:0]HSV24
    );
reg [7:0]max,min;

//input rgb
wire [7:0] Red,Green,Blue;
reg [7:0]R_reg,G_reg,B_reg;
assign Red = RGB24[23:16];
assign Green = RGB24[15:8];
assign Blue = RGB24[7:0];


reg [7:0] Hue,Saturation,Value;
assign HSV24[23:16] = Hue;
assign HSV24[15:8] = Saturation;
assign HSV24[7:0] = Value;


always@(posedge pclk)begin 
R_reg <= Red;
G_reg <= Green; 
B_reg <= Blue;
end
/*************find max,min***********/
always@(posedge pclk)begin
 if(Red >= Green)
   begin
	 if(Red >= Blue)
	 max <= Red;
	 else //r<b
	 max <= Blue;
	end
 else //r<g
   begin 
    if(Green >= Blue)
	 max <= Green;
	 else //g<b
	 max <= Blue;
	end	
end

always@(posedge pclk)begin
 if(Red <= Green)
   begin
	 if(Red <= Blue)
	 min <= Red;
	 else //r<b
	 min <= Blue;
	end
 else //r>g
   begin 
    if(Green <= Blue)
	 min <= Green;
	 else //g>b
	 min <= Blue;
	end	
end

reg [14:0] h_dividend;
reg [7:0]  h_divisor;
wire [14:0] h_quotient;
reg [8:0]  h_add;
reg [16:0]  s_dividend;
reg [7:0]  s_divisor;
wire [16:0]  s_quotient;
reg [7:0]  v;
reg sign_flag;
always@(posedge pclk)begin
 if(max == min)
  begin
   sign_flag <= 0;
   h_dividend <= 0;
   h_divisor <= 1;//
   h_add <= 0;
   s_dividend <= 0;
   s_divisor <= 1;
	v <= max;
  end
 else if(max == R_reg && G_reg >= B_reg)
  begin
   sign_flag <= 0;
   h_dividend <= 60 * (G_reg - B_reg);
	h_divisor <= max - min;
	h_add <= 0;
	s_dividend <= 255 * (max - min);
	s_divisor <= max; 
	v <= max;
  end
 else if(max == R_reg && G_reg < B_reg )
  begin
   sign_flag <= 1;
   h_dividend <= 60 * (B_reg - G_reg);
	h_divisor <= max - min;
	h_add <= 360;
	s_dividend <= 255 * (max - min);
	s_divisor <= max;
	v <= max;
  end 
 else if(max == G_reg)
  begin
   if(B_reg >= R_reg)
	begin
	sign_flag <= 0;
	h_dividend <= 60 * (B_reg - R_reg);
	end
	else
	begin 
	sign_flag <= 1;
   h_dividend <= 60 * (R_reg - B_reg);
	end
	
	h_divisor <= max - min;
	h_add <= 120;
	s_dividend <= 255 * (max - min) ;
	s_divisor <= max;
	v <= max;
  end
  else if(max == B_reg)
  begin
   if(R_reg >= G_reg)
	begin
	sign_flag <= 0;
	h_dividend <= 60 * (R_reg - G_reg);
	end
	else
	begin 
	sign_flag <= 1;
   h_dividend <= 60 * (G_reg - R_reg);
	end
	
	h_divisor <= max - min;
	h_add <= 240;
	s_dividend <= 255 * (max - min);
	s_divisor <= max;
	v <= max;
  end
end
wire [31:0]yshang_h,yshang_s;
wire [31:0] a;
assign a = {17'b0,h_dividend};
wire [31:0] b;
assign b = {24'b0,h_divisor};
assign yshang_h = a/b;


assign h_quotient = yshang_h[14:0];
//div_rill u_div_s (
//    .a({15'b0,s_dividend}),  
//    .b({24'b0,s_divisor}), 
//    .yshang(yshang_s), 
//    .yyushu()
//);	
wire [31:0] c;
assign c = {17'b0,s_dividend};
wire [31:0] d;
assign d = {24'b0,s_divisor};
assign yshang_s = c/d;

assign s_quotient = yshang_s[16:0];

always@(posedge pclk)begin
    if(sign_flag == 0)
        Hue <= (h_quotient + h_add)/2;
    else
        Hue <= (h_add - h_quotient)/2;
        Saturation <= s_quotient;
        Value <= v;
end

endmodule
