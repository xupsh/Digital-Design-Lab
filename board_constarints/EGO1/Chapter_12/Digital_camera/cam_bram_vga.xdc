set_property IOSTANDARD LVCMOS33 [get_ports {OV7725_D[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7725_D[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7725_D[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7725_D[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7725_D[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7725_D[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7725_D[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7725_D[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in1]
set_property IOSTANDARD LVCMOS33 [get_ports OV7725_HREF]
set_property IOSTANDARD LVCMOS33 [get_ports OV7725_PCLK]
set_property IOSTANDARD LVCMOS33 [get_ports OV7725_SIOC]
set_property IOSTANDARD LVCMOS33 [get_ports OV7725_SIOD]
set_property IOSTANDARD LVCMOS33 [get_ports OV7725_VSYNC]
set_property IOSTANDARD LVCMOS33 [get_ports OV7725_XCLK]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports vga_hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_vsync]
set_property PACKAGE_PIN P17 [get_ports clk_in1]

set_property PACKAGE_PIN G17 [get_ports OV7725_SIOC] 
#GPIO-32
set_property PACKAGE_PIN J13 [get_ports OV7725_VSYNC]
#GPIO-30
set_property PACKAGE_PIN D17 [get_ports OV7725_PCLK]
#GPIO-28
set_property PACKAGE_PIN G14 [get_ports {OV7725_D[7]}]
#GPIO-26
set_property PACKAGE_PIN F16 [get_ports {OV7725_D[5]}]
#GPIO-24
set_property PACKAGE_PIN G16 [get_ports {OV7725_D[3]}]
#GPIO-22
set_property PACKAGE_PIN C15 [get_ports {OV7725_D[1]}]
#GPIO-20

#create_debug_core u_ila_0 ila
#set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
#set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
#set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
#set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
#set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
#set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
#set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
#set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
#set_property port_width 1 [get_debug_ports u_ila_0/clk]
#connect_debug_port u_ila_0/clk [get_nets [list OV7725_XCLK_OBUF]]
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
#set_property port_width 1 [get_debug_ports u_ila_0/probe0]
#connect_debug_port u_ila_0/probe0 [get_nets [list OV7725_SIOC_OBUF]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]

set_property PACKAGE_PIN H17 [get_ports OV7725_SIOD]
#GPIO-31
set_property PACKAGE_PIN K13 [get_ports OV7725_HREF]
#GPIO-29
set_property PACKAGE_PIN E17 [get_ports OV7725_XCLK]
#GPIO-27
set_property PACKAGE_PIN H14 [get_ports {OV7725_D[6]}]
#GPIO-25
set_property PACKAGE_PIN F15 [get_ports {OV7725_D[4]}]
#GPIO-23
set_property PACKAGE_PIN H16 [get_ports {OV7725_D[2]}]
#GPIO-21
set_property PACKAGE_PIN D15 [get_ports {OV7725_D[0]}]
#GPIO-19
set_property PACKAGE_PIN P5 [get_ports rst]
set_property PACKAGE_PIN D7 [get_ports vga_hsync]
set_property PACKAGE_PIN C4 [get_ports vga_vsync]
set_property PACKAGE_PIN F5 [get_ports {vga_red[0]}]
set_property PACKAGE_PIN C6 [get_ports {vga_red[1]}]
set_property PACKAGE_PIN C5 [get_ports {vga_red[2]}]
set_property PACKAGE_PIN B7 [get_ports {vga_red[3]}]

set_property PACKAGE_PIN B6 [get_ports {vga_green[0]}]
set_property PACKAGE_PIN A6 [get_ports {vga_green[1]}]
set_property PACKAGE_PIN A5 [get_ports {vga_green[2]}]
set_property PACKAGE_PIN D8 [get_ports {vga_green[3]}]

set_property PACKAGE_PIN C7 [get_ports {vga_blue[0]}]
set_property PACKAGE_PIN E6 [get_ports {vga_blue[1]}]
set_property PACKAGE_PIN E5 [get_ports {vga_blue[2]}]
set_property PACKAGE_PIN E7 [get_ports {vga_blue[3]}]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets OV7725_XCLK_OBUF]




set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {OV7725_PCLK_IBUF}]

