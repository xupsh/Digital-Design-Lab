`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2016 10:23:09 AM
// Design Name: 
// Module Name: LCD_1602
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

module LCD_1602(input clk, //50M
				input rst_n,
				output lcd_p,     //Backlight Source+
				output lcd_n,     //Backlight Source-
				output reg lcd_rs,    //0:write order;1:write data
				output lcd_rw,		//0:write data;1:read data
				output reg lcd_en,		//negedge
				output reg[7:0] lcd_data
    );
/****************************lcd1602 order****************************/
		parameter Mode_Set = 8'h31,
				 Cursor_Set = 8'h0c,
				 Address_Set = 8'h06,
				 Clear_Set = 8'h01;
/*************************LCD1602 Display Data**************************/
		wire [7:0] data0,data1; //counter data
		wire [7:0] addr; //write address
/****************************1s counter****************************/
		reg [31:0] cnt1;
		reg [7:0] data_r0,data_r1;
		always@ (posedge clk or negedge rst_n)
		begin
			if (! rst_n)
				begin
					cnt1 <= 1'b0;
					data_r0 <= 1'b0;
					data_r1 <= 1'b0;
				end
			else if(cnt1==32'd50000000)
			begin
				if(data_r0==8'd9)
					begin
						data_r0 <= 1'b0;
						if(data_r1==8'd9)
							data_r1 <= 1'b0;
						else
							data_r1 <= data_r1 + 1'b1;
					end
			else
				data_r0 <= data_r0 + 1'b1;
				cnt1 <= 1'b0;
			end
			else
				cnt1 <= cnt1 + 1'b1;
		end
		
	assign data0 = 8'h30 + data_r0;
	assign data1 = 8'h30 + data_r1;
		
	/****************************address****************************/	
		assign addr = 8'h80;
	/****************************LCD1602Driver****************************/
		//-----------------------lcd1602 clk_en---------------------
		reg [31:0] cnt;
		reg lcd_clk_en;
		always @(posedge clk or negedge rst_n)
		begin
			if(!rst_n)
				begin
					cnt <= 1'b0;
					lcd_clk_en <= 1'b0;
				end
			else if(cnt == 32'h24999) //500us
				begin
					lcd_clk_en <= 1'b1;
					cnt <= 1'b0;
				end
			else
				begin
					cnt <= cnt + 1'b1;
					lcd_clk_en <= 1'b0;
				end
		end
				
//-----------------------lcd1602 display state---------------------------------
		reg [4:0] state;
		always@(posedge clk or negedge rst_n)
		begin
			if(!rst_n)
				begin
					state <= 1'b0;
					lcd_rs <= 1'b0;
					lcd_en <= 1'b0;
					lcd_data <= 1'b0;
				end
			else if(lcd_clk_en)
				begin
					case(state)
					//-------------------init_state---------------------
						5'd0: begin
								lcd_rs <= 1'b0;
								lcd_en <= 1'b1;
								lcd_data <= Mode_Set;
								state <= state + 1'd1;
						end
						5'd1: begin
								lcd_en <= 1'b0;
								state <= state + 1'd1;
						end
						5'd2: begin
								lcd_rs <= 1'b0;
								lcd_en <= 1'b1;
								lcd_data <= Cursor_Set;
								state <= state + 1'd1;
						end
						5'd3: begin
								lcd_en <= 1'b0;
								state <= state + 1'd1;
						end
						5'd4: begin
								lcd_rs <= 1'b0;
								lcd_en <= 1'b1;
								lcd_data <= Address_Set;
								state <= state + 1'd1;
						end
						5'd5: begin
								lcd_en <= 1'b0;
								state <= state + 1'd1;
						end
						5'd6: begin
								lcd_rs <= 1'b0;
								lcd_en <= 1'b1;
								lcd_data <= Clear_Set;
								state <= state + 1'd1;
						end
						5'd7: begin
								lcd_en <= 1'b0;
								state <= state + 1'd1;
						end
	//--------------------work state--------------------
						5'd8: begin
								lcd_rs <= 1'b0;
								lcd_en <= 1'b1;
								lcd_data <= addr; //write addr
								state <= state + 1'd1;
						end
						5'd9: begin
								lcd_en <= 1'b0;
								state <= state + 1'd1;
						end
						5'd10: begin
								lcd_rs <= 1'b1;
								lcd_en <= 1'b1;
								lcd_data <= "C"; //write data
								state <= state + 1'd1;
						end
						5'd11: begin
								lcd_en <= 1'b0;
								state <= state + 1'd1;
						end
						5'd12: begin
								lcd_rs <= 1'b1;
								lcd_en <= 1'b1;
								lcd_data <= "n"; //write data
								state <= state + 1'd1;
								end
						5'd13: begin
								lcd_en <= 1'b0;
								state <= state + 1'd1;
						end
						5'd14: begin
								lcd_rs <= 1'b1;
								lcd_en <= 1'b1;
								lcd_data <= "t"; //write data
								state <= state + 1'd1;
						end
						5'd15: begin
								lcd_en <= 1'b0;
								state <= state + 1'd1;
						end
						5'd16: begin
								lcd_rs <= 1'b1;
								lcd_en <= 1'b1;
								lcd_data <= ":"; //write data
								state <= state + 1'd1;
						end
						5'd17: begin
								lcd_en <= 1'b0;
								state <= state + 1'd1;
						end
						5'd18: begin
								lcd_rs <= 1'b1;
								lcd_en <= 1'b1;
								lcd_data <= data1; //write data: tens digit
								state <= state + 1'd1;
						end
						5'd19: begin
								lcd_en <= 1'b0;
								state <= state + 1'd1;
						end
						5'd20: begin
								lcd_rs <= 1'b1;
								lcd_en <= 1'b1;
								lcd_data <= data0; //write data: single digit
								state <= state + 1'd1;
						end
						5'd21: begin
						lcd_en <= 1'b0;
						state <= 5'd8;
								
						end
						default: state <= 5'bxxxxx;
				endcase
			end
		end
assign lcd_rw = 1'b0; //only write
/****************************backlight driver****************************/
assign lcd_n = 1'b0;
assign lcd_p = 1'b1;	
endmodule
