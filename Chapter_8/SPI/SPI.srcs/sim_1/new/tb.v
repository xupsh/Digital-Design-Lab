`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/05 17:59:57
// Design Name: 
// Module Name: tb
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


module tb(

    );
     
   

    reg spi_send=1;
    reg [7:0]spi_data_out=8'hab;
    
    reg clk;
    initial   clk=0;
    always #20 clk=!clk;
    
    reg rst;
    initial
    begin
        rst=0;
        #60 rst=1;
    end
    
    
    wire sck,miso,cs,spi_send_done;
        
        spi_master spi_master
    (
        .sck    (sck),         //1MHz clk
        .miso   (miso),
        .cs     (cs),
        .rst    (rst),
        .spi_send   (spi_send),
        .spi_data_out   (spi_data_out),
        .spi_send_done  (spi_send_done),
        .clk    (clk)
    
    );
    
endmodule
