//

module center(
input                pclk,  			// pixel clock
input                din,  			// 1-bit signal, to label the pixel of which color is simular to Ball's 
input [11:0]         Hcnt,  	// 0-319 count value of column. from u_vga
input [10:0]         Vcnt,		// 0-239 count value of row. from u_vga
output reg[11:0]    center_h, // 0-319,x-coordinate of center point
output reg [10:0]   center_v, 	// 0-239,y-coordinate of center point
input [20:0]         Binary_Sum,
input [3:0] weight
);
	
reg [24:0]        num; 	///total number of labeled pixels
reg [24:0]        num_cnt; //count value of labeled pixels
reg [15:0]        h_cnt;	//count value of x-coordinate of center point
reg [14:0]        v_cnt;	//count value of y-coordinate of center point
reg [14:0]        center_line_num; 
reg [14:0]        H_num_cnt;
reg [14:0]        center_line_num_cnt; 

//regin of interent(ROI) 320 x 240
reg en;
always@(*) begin
	if(Hcnt>0 && Hcnt<320 && Vcnt>0 && Vcnt<239) 
		en<= 1;
	else
		en<= 0;
end

//to calculate the total number of labeled pixels
always@(posedge pclk) begin
	if(Hcnt==1 && Vcnt==0) 
		begin
			num_cnt<= 0;
		end
	else
		if(din==1 && en==1) num_cnt<= num_cnt+weight;
		else	   			num_cnt<= num_cnt;
end
//Calculate the h_cnt. At the end of a frame,h_cnt is assigned to center_h.center_h is the x-coordinate of center point
always@(posedge pclk) begin
	if(Hcnt==1 && Vcnt==0) //扫描到像素点（1，0）处时
		begin
			 H_num_cnt<= 0;
			 h_cnt<= 0;
		end
	else
		if(Vcnt==center_v &&din==1 && en==1)begin H_num_cnt<= H_num_cnt+weight;
		   if(Hcnt>0 && Hcnt<319 && Vcnt>0 && Vcnt<239) begin
            if(H_num_cnt<center_line_num/2)
             h_cnt<= Hcnt;
            else			 
             h_cnt<= h_cnt;
             end
		end
		else	   			
		     H_num_cnt<= H_num_cnt;
end

//Calculate the v_cnt. At the end of a frame,v_cnt is assigned to center_v.center_v is the y-coordinate of center point
always@(posedge pclk) begin
if(Hcnt>0 && Hcnt<319 && Vcnt>0 && Vcnt<239) begin
	if(num_cnt<num/2) v_cnt<= Vcnt;
	else			  v_cnt<= v_cnt;
	end
end

//Calculate the total number of labeled pixels in center point's row
always@(posedge pclk) begin
	if(Hcnt==1 && Vcnt==0) 
		begin
			center_line_num_cnt<= 0;
		end
	else
		if(Vcnt==center_v && en==1 &&din==1) 
			center_line_num_cnt<= center_line_num_cnt + weight;
		else 
			center_line_num_cnt<= center_line_num_cnt;
end

//assignment at the end of frame
always@(posedge pclk) begin
	if(Hcnt==319 && Vcnt==239)
		begin
		      	num<= num_cnt;
		      	center_line_num<= center_line_num_cnt;
			if(Binary_Sum> 30)
			begin
                center_v<= (v_cnt==238 )? 0 : v_cnt;
                center_h<=h_cnt;
		    end
		    else
		    begin
                center_v<= 0;
                center_h<=0;
		    end
		end
end

endmodule