Tool and version:  Vivado 2014.4 
Target Families: Artix-7, Kintex-7, Virtex-7, and Zynq

Introduction:
This interface IP generates timing signals (HSYNC, VSYNC, and Video Valid) along with horizontal and vertical positions. It provides configurable parameter of VGA standards. The standards supported are:
VGA- 640x480 requiring 25 MHz pixel clock input
SVGA- 800x600 requiring 40 MHz pixel clock input
XVGA- 1024x768 requiring 65 MHz pixel clock input
SXGA- 1280x1024 requiring 108 MHz pixel clock input


Input/Output Ports:
Input:
pclk - varies depending on the TYPE
reset - high-level logic

Output:
hsync - Horizontal sync timing signal
vsync - Vertical sync timing signal
valid - viewable (or active) video 
h_cnt[10:0] -  current horizontal position of a pixel
v_cnt[10:0] -  current vertical position of a pixel


Setting up the library path:
Create a Vivado project. Click on the Project Settings, then click on the IP block in the left panel, click on the Add Repository... button, browse to the directory where this IP directory is located, and click Select. The IP entry should be visible in the IP in the Selected Repository. 

How to use the IP:
Step 1: Create a Vivado project
Step 2: Set the Project Settings to point to the IP path
Step 3: Create a block design
Step 4: Add the desired IP on the canvas, connect them, and add external input and output ports
Step 5: Create a HDL wrapper
Step 6: Add constraints file (.xdc)
Step 7: Synthesize, implement, and generate the bitstream
Step 8: Connect the board, download the bitstream, and varify the design
