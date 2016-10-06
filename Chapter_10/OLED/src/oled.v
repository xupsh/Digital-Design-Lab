`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2016 11:37:26 AM
// Design Name: 
// Module Name: oled
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


module oled_init(
    input send_done,
    output spi_send,
    output reg [7:0]spi_data,
    input clk,
    output init_done,
    output dc,
    input reset
    );
    assign dc=0;
   reg display_on;
   reg [7:0]set_pos_y;
   reg [7:0]set_pos_x; 
   reg charge_pump_on;
    
   wire[7:0]   Display_on=8'haf,
                Display_off=8'hae,
                Set_display_clock_0=8'hd5,
                Set_display_clock_1=8'h80,
                Set_charge_pump_0=8'h8d,
                Set_charge_pump_1=8'h14,
                Set_contrast_0=8'h81,
                Set_contrast_1=8'hcf,   //data
                Set_precharge_0=8'hd9,
                Set_inverse=8'ha0,
                Set_precharge_1=8'hf1;        //data
    
    reg [5:0]cur_st,nxt_st;
    
    assign init_done=(cur_st==11)?1:0;
    assign spi_send=(cur_st!=11)?1:0;
                
    always@(posedge clk or posedge reset)
        if(reset)
            cur_st<=0;
        else if(send_done)cur_st<=nxt_st;
    
    always@(*)
    begin
        spi_data=0;
        nxt_st=cur_st;
        case(cur_st)
            0:begin spi_data=Display_off;        nxt_st=1;  end 
            1:begin spi_data=Set_display_clock_0;nxt_st=2;  end
            2:begin spi_data=Set_display_clock_1;nxt_st=3;  end
            3:begin spi_data=Set_charge_pump_0;  nxt_st=4 ; end 
            4:begin spi_data=Set_charge_pump_1;  nxt_st=5 ; end 
            5:begin spi_data=Set_contrast_0;     nxt_st=6 ; end 
            6:begin spi_data=Set_contrast_1;     nxt_st=7;  end 
            7:begin spi_data=Set_precharge_0;    nxt_st=8;  end 
            8:begin spi_data=Set_precharge_1;    nxt_st=9;  end 
            9:begin spi_data=Set_inverse;        nxt_st=10; end
            10:begin spi_data=Display_on;         nxt_st=11; end
            11:begin spi_data=0;                  nxt_st=11;  end         
            default:begin spi_data=0;nxt_st=0;end
        endcase
    end
    
endmodule
