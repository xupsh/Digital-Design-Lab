`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2014 03:50:25 PM
// Design Name: 
// Module Name: erode
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


module erode(
    input PCLK,
    input [11:0] VtcHCnt,
    input [10:0] VtcVCnt,
    input   pix_i, 
	 output reg  pix_o
    );
reg Line_CLK;



always@(posedge PCLK)begin
 if( VtcVCnt>=0 && VtcVCnt<240) begin
	 if(VtcHCnt==1)
	   Line_CLK <= 1;
	 else
	   Line_CLK <= 0;
 end
end

reg[1:0] state;
initial state = 0;

always@(posedge Line_CLK)begin
 if(VtcVCnt==0)
 state <= 2'b00;
 else begin
   if(state == 2'b11)
	   state <= 2'b00;
	else 
	   state <= state + 1;
	end
end 

reg S_Window0;
reg S_Window1;
reg S_Window2;
reg S_Window3;
reg LineBuffer0[319:0];
reg LineBuffer1[319:0];
reg LineBuffer2[319:0];
reg LineBuffer3[319:0];
always@(posedge PCLK)begin
    case(state)
    2'b00: begin
        LineBuffer0[VtcHCnt] <= pix_i;	
        S_Window0 <= pix_i;
        S_Window1 <= S_Window0;
        S_Window2 <= S_Window1;
        S_Window3 <= S_Window2;		 
        
        if(VtcHCnt>=2&&VtcVCnt>=2 && VtcHCnt<320-2&&VtcVCnt<240-2)begin
            if(S_Window0 ==1 && S_Window1 ==1&& S_Window2 ==1&&S_Window3 ==1&&LineBuffer2[VtcHCnt-3]==1&&LineBuffer2[VtcHCnt-2]==1&&LineBuffer2[VtcHCnt-1]==1&&LineBuffer2[VtcHCnt]==1
            &&LineBuffer1[VtcHCnt-3]==1&&LineBuffer1[VtcHCnt-2]==1&&LineBuffer1[VtcHCnt-1]==1&&LineBuffer1[VtcHCnt]==1&&LineBuffer3[VtcHCnt-3]==1&&LineBuffer3[VtcHCnt-2]==1&&LineBuffer3[VtcHCnt-1]==1&&LineBuffer3[VtcHCnt]==1)
                pix_o <= 1;
            else
                pix_o <= 0;
        end            
        else
          pix_o <= 0;
    end 
    2'b01: begin
        LineBuffer1[VtcHCnt] <= pix_i;	 
        S_Window0 <= pix_i;
        S_Window1 <= S_Window0;
        S_Window2 <= S_Window1;
        S_Window3 <= S_Window2;		
         
        if(VtcHCnt>=2&&VtcVCnt>=2 && VtcHCnt<320-2&&VtcVCnt<240-2)begin    
            if(S_Window0 ==1 && S_Window1 ==1&& S_Window2 ==1&&S_Window3 ==1&&LineBuffer2[VtcHCnt-3]==1&&LineBuffer2[VtcHCnt-2]==1&&LineBuffer2[VtcHCnt-1]==1&&LineBuffer2[VtcHCnt]==1
            &&LineBuffer0[VtcHCnt-3]==1&&LineBuffer0[VtcHCnt-2]==1&&LineBuffer0[VtcHCnt-1]==1&&LineBuffer0[VtcHCnt]==1&&LineBuffer3[VtcHCnt-3]==1&&LineBuffer3[VtcHCnt-2]==1&&LineBuffer3[VtcHCnt-1]==1&&LineBuffer3[VtcHCnt]==1)
                pix_o <= 1;
            else
                pix_o <= 0;
        end            
        else
            pix_o <= 0;
    end
    2'b10: begin
        LineBuffer2[VtcHCnt] <= pix_i;	 
        S_Window0 <= pix_i;
        S_Window1 <= S_Window0;
        S_Window2 <= S_Window1;
        S_Window3 <= S_Window2;			 
        
        if(VtcHCnt>=2&&VtcVCnt>=2 && VtcHCnt<320-2&&VtcVCnt<240-2)begin    
            if(S_Window0 ==1 && S_Window1 ==1&& S_Window2 ==1&&S_Window3 ==1&&LineBuffer0[VtcHCnt-3]==1&&LineBuffer0[VtcHCnt-2]==1&&LineBuffer0[VtcHCnt-1]==1&&LineBuffer0[VtcHCnt]==1
            &&LineBuffer1[VtcHCnt-3]==1&&LineBuffer1[VtcHCnt-2]==1&&LineBuffer1[VtcHCnt-1]==1&&LineBuffer1[VtcHCnt]==1&&LineBuffer3[VtcHCnt-3]==1&&LineBuffer3[VtcHCnt-2]==1&&LineBuffer3[VtcHCnt-1]==1&&LineBuffer3[VtcHCnt]==1)
                pix_o <= 1;
            else
                pix_o <= 0;
        end            
        else
            pix_o <= 0;
    end
    2'b11: begin
        LineBuffer3[VtcHCnt] <= pix_i;	 
        S_Window0 <= pix_i;
        S_Window1 <= S_Window0;
        S_Window2 <= S_Window1;
        S_Window3 <= S_Window2;			 
       
        if(VtcHCnt>=2&&VtcVCnt>=2 && VtcHCnt<320-2&&VtcVCnt<240-2)begin    
            if(S_Window0 ==1 && S_Window1 ==1&& S_Window2 ==1&&S_Window3 ==1&&LineBuffer2[VtcHCnt-3]==1&&LineBuffer2[VtcHCnt-2]==1&&LineBuffer2[VtcHCnt-1]==1&&LineBuffer2[VtcHCnt]==1
            &&LineBuffer1[VtcHCnt-3]==1&&LineBuffer1[VtcHCnt-2]==1&&LineBuffer1[VtcHCnt-1]==1&&LineBuffer1[VtcHCnt]==1&&LineBuffer0[VtcHCnt-3]==1&&LineBuffer0[VtcHCnt-2]==1&&LineBuffer0[VtcHCnt-1]==1&&LineBuffer0[VtcHCnt]==1)
                pix_o <= 1;
            else
                pix_o <= 0;
        end            
        else
            pix_o <= 0;
    end		
    default:	
       pix_o <= pix_o;		
    endcase

end 





endmodule

