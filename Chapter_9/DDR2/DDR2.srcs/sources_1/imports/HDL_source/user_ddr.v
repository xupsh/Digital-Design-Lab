`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2016 03:30:07 PM
// Design Name: 
// Module Name: user_ddr
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


module user_ddr(
output reg [26:0]                       app_addr,
output reg [2:0]                                  app_cmd,
output reg                                       app_en,
output reg [128:0]    app_wdf_data,
output reg                                       app_wdf_end,
output [15:0]  app_wdf_mask,
output reg                                       app_wdf_wren,
input [128:0]   app_rd_data,
input                                       app_rd_data_end,
input                                       app_rd_data_valid,
input                                       app_rdy,
input                                       app_wdf_rdy,
output                                        app_sr_req,
output                                        app_ref_req,
output                                        app_zq_req,
input                                       app_sr_active,
input                                       app_ref_ack,
input                                       app_zq_ack,
input                                       ui_clk,
input                                       ui_clk_sync_rst,
input                                       init_calib_complete
    );
    localparam  write_cmd=0,
                read_cmd=1;
    
    localparam  idle=0,
                write_pre=1,
                write=2,
                write_idle=3,
                read_pre=4,
                read=5;
    
    reg [31:0]delay_count;
    reg [26:0]addr;
    reg [127:0]data;
    reg [7:0]write_count;
    reg [7:0]read_count;
    reg [31:0]write_delay;
    
    reg [2:0]cur_st,nxt_st;
    always@(posedge ui_clk or posedge ui_clk_sync_rst)
        if(ui_clk_sync_rst)
            cur_st<=0;
        else cur_st<=nxt_st;
    
    always@(*)
    begin
        nxt_st=cur_st;
        case(cur_st)
            idle: if(delay_count==100)   nxt_st=write_pre;
            write_pre: if(app_wdf_rdy && app_rdy)nxt_st=write;
            write:if(write_count==64)                  nxt_st=write_idle;
            write_idle: if(write_delay==100) nxt_st=read_pre;
            read_pre:nxt_st=read;
            read:  if(read_count==64)                    nxt_st=idle;
            default:nxt_st=idle;
        endcase
    end
    
    always@(posedge ui_clk  or posedge ui_clk_sync_rst)
        if(ui_clk_sync_rst)
            delay_count<=0;
        else if(cur_st==idle && init_calib_complete  && app_wdf_rdy && app_rdy)
            delay_count<=delay_count+1;
        else if(cur_st==read) delay_count<=0;
        
    always@(posedge ui_clk or posedge ui_clk_sync_rst)
        if(ui_clk_sync_rst)
            write_delay<=0;
        else if(cur_st==write_idle)
            write_delay<=write_delay+1;
        else if(cur_st==read) write_delay<=0;
    
    always@(posedge ui_clk or posedge ui_clk_sync_rst)
        if(ui_clk_sync_rst)
        begin
            addr<=0;
            data<=0;
            app_addr<=0;
            app_wdf_data<=0;
             write_count<=0;
            read_count<=0;
        end
        else if(cur_st==write_pre && app_wdf_rdy && app_rdy)
        begin
            addr<=addr+8;
            data<=data+1;
            app_addr<=addr;
            app_wdf_data<=data;
            write_count<=write_count+1;
        end
        else if(cur_st==write && app_wdf_rdy && app_rdy)
        begin
            addr<=addr+8;
            data<=data+1;
            app_addr<=addr;
            app_wdf_data<=data;
             write_count<=write_count+1;
            read_count<=0;
        end
        else if(cur_st==write_idle)
                begin
                    addr<=0;
                    data<=0;
                    write_count<=0;
                    read_count<=0;
                 end
        else if(cur_st==read_pre)
        begin
            app_addr<=addr;
            read_count<=read_count+1;
            addr<=addr+8;
        end
        else if(cur_st==read && app_rdy)
        begin
                addr<=addr+8;
                read_count<=read_count+1;
            app_addr<=addr;
         end
        else if(cur_st==idle)
        begin
                    addr<=0;
                    read_count<=0;
                    //app_en<=0;
                 end
   always@(*)
   begin
    app_en=0;
    app_cmd=0;
    app_wdf_end=0;
    app_wdf_wren=0;
    if(cur_st==write && app_wdf_rdy && app_rdy)
    begin
        app_en=1;
        app_cmd=0;
        app_wdf_end=1;
        app_wdf_wren=1;
    end
    else if(cur_st==read && app_rdy)
    begin
        app_en=1;
        app_cmd=1;
    end
    end
    
endmodule
