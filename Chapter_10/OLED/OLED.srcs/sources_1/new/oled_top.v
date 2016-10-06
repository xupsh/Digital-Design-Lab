`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2016 10:23:47 AM
// Design Name: 
// Module Name: oled_top
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


module oled_top(
    output sck,
    //input mosi,
    output miso,
    //input reset,
    output reg reset_oled,
    input clk,
    output dc,
    output sck_reg
    
    );
    reg [31:0]reset_count;
    initial reset_count=0;
    initial reset_n=0;
    reg reset_n;
    always@(posedge clk)
        if(reset_count>=30000)
            reset_count<=30000;
        else reset_count<=reset_count+1;
    
    always@(posedge clk)
        if(reset_count==10)
        begin
            reset_oled<=1;
            reset_n<=1;
        end
        else if(reset_count==10000)
        begin
            reset_oled<=0;
            reset_n<=0;
        end
        else if(reset_count==20000)
            reset_oled<=1;
        else if(reset_count==30000)
            reset_n<=1;
    
    reg spi_send;
    reg [7:0]spi_data_out;
    wire spi_send_done;
    reg dc_in;
    wire reset=!reset_n;
    
    spi_master spi_master
    (
        .sck    (sck),         //1MHz clk
        .miso   (miso),
        .cs     (cs),
        .rst    (1),
        .spi_send   (spi_send),
        .spi_data_out   (spi_data_out),
        .spi_send_done  (spi_send_done),
        .clk    (clk),
        .dc_in  (dc_in),
        .dc_out (dc),
        .sck_reg    (sck_reg)
    
    );
    
    wire spi_send_init;
    wire [7:0]spi_data_init;
    wire init_done;
    wire dc_init;
    
    oled_init oled_init
    (
        .send_done  (spi_send_done),
        .spi_send   (spi_send_init),
        .spi_data   (spi_data_init),
        .clk        (sck_reg),
        .init_done  (init_done),
        .dc         (dc_init),
        .reset      (reset)
    );
    
    wire spi_send_write;
    wire [7:0]spi_data_write;
    wire dc_write;
    wire write_done;
    reg [47:0]write_data;
    reg [7:0]set_pos_x,set_pos_y;
    reg write_start;
    wire spi_send_clear;
    wire [7:0]spi_data_clear;
    wire dc_clear;
    reg clear_start;
    wire clear_done;
    
    oled_write_data oled_write_data(
        .send_done  (spi_send_done),
        .spi_send   (spi_send_write),
        .spi_data   (spi_data_write),
        .clk        (sck_reg),
        .dc         (dc_write),
        .write_start(write_start),
        .write_done (write_done),
        .write_data (write_data),
        .set_pos_x  (set_pos_x),
        .set_pos_y  (set_pos_y),
        .reset  (reset)
    );    
    
    oled_clear oled_clear
    (
            .send_done  (spi_send_done),
            .spi_send   (spi_send_clear),
            .spi_data   (spi_data_clear),
            .clk        (sck_reg),
            .dc         (dc_clear),
            .clear_start(clear_start),
            .clear_done (clear_done),
            .reset  (reset)
    
    
    );
    
        localparam X=48'h00_63_14_08_14_63,   // X
                I=48'h00_00_41_7F_41_00,   // I
                L=48'h00_7F_40_40_40_40,   // L
                N=48'h00_7F_04_08_10_7F;   // N
    
    reg [5:0]cur_st,nxt_st;
    initial begin cur_st=0;nxt_st=0;end
    always@(posedge sck_reg)
        if(reset) cur_st<=0;
        else cur_st<=nxt_st;
     
    always@(*)
    begin
        nxt_st=cur_st;
        case(cur_st)
            0:if(init_done)     nxt_st=1;
            1:if(clear_done)    nxt_st=nxt_st+1;
            2:if(write_done)    nxt_st=nxt_st+1;
            3:if(write_done)    nxt_st=nxt_st+1;
            4:if(write_done)    nxt_st=nxt_st+1;
            5:if(write_done)    nxt_st=nxt_st+1;
            6:if(write_done)    nxt_st=nxt_st+1;
            7:if(write_done)    nxt_st=nxt_st+1;
            8:nxt_st=8;
        default:nxt_st=0;
        endcase
    end
    
    /*always@(posedge clk)
        if(reset)         write_start<=0;
        else if(cur_st>0) write_start<=1;*/
     
    always@(*)
        if(reset)
        begin
            set_pos_x=0;
            set_pos_y=0;
            write_data=0;
            write_start=0;
        end
        else case(cur_st)
            2:
            begin
                set_pos_x=60;
                set_pos_y=3;
                write_data=X;
                write_start=1;
            end
            3:
            begin
                set_pos_x=66;
                set_pos_y=3;
                write_data=I;
            end
            4:
            begin
                set_pos_x=72;
                set_pos_y=3;
                write_data=L;
            end
            5:
            begin
                set_pos_x=78;
                set_pos_y=3;
                write_data=I;
            end
            6:
            begin
                set_pos_x=84;
                set_pos_y=3;
                write_data=N;
            end
            7:
            begin
                set_pos_x=90;
                set_pos_y=3;
                write_data=X;
            end
            default:
            begin
                set_pos_x<=90;
                set_pos_y<=3;
                write_data<=X;
                write_start<=0;
            end
        endcase
        
        always@(*)
            if(reset) clear_start=0;
            else if(cur_st==1) clear_start=1;
            else clear_start=0;
        
        always@(*)
            if(reset)   dc_in=0;
            else if(cur_st==0)  dc_in=dc_init;
            else if(cur_st==1)  dc_in=dc_clear;
            else if(cur_st==7 | cur_st==2 | cur_st==3 | cur_st==4 | cur_st==5 | cur_st==6 )  dc_in=dc_write;
            else if(cur_st==8)  dc_in=0;
            else dc_in=0;
        
        always@(*)
            if(reset)   spi_data_out=0;
            else if(cur_st==0)  spi_data_out=spi_data_init;
            else if(cur_st==1)  spi_data_out=spi_data_clear;
            else if(cur_st==7 | cur_st==2 | cur_st==3 | cur_st==4 | cur_st==5 | cur_st==6)  spi_data_out=spi_data_write;
            else if(cur_st==8)  spi_data_out=0;
            else spi_data_out=write_data;
        
        always@(*)
            if(reset) spi_send=0;
            else if(cur_st==0) spi_send=spi_send_init;
            else if(cur_st==1) spi_send=spi_send_clear;
            else if(cur_st==7 | cur_st==2 | cur_st==3 | cur_st==4 | cur_st==5 | cur_st==6) spi_send=spi_send_write;
            else if(cur_st==8) spi_send=0;
        
endmodule
    