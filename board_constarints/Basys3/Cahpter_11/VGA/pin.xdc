set_property PACKAGE_PIN W5 [get_ports clk]


#hsync
set_property PACKAGE_PIN P19 [get_ports hsync]
#zsync
set_property PACKAGE_PIN R19 [get_ports vsync]
#switch
set_property PACKAGE_PIN V17 [get_ports rst_n]

#set_property PACKAGE_PIN W19 [get_ports left]
#set_property PACKAGE_PIN T17 [get_ports right]
#set_property PACKAGE_PIN T18 [get_ports up]
#set_property PACKAGE_PIN U17 [get_ports down]
#set_property PACKAGE_PIN U18 [get_ports start]

#set_property PACKAGE_PIN W15 [get_ports {sw[0]}]
#set_property PACKAGE_PIN V15 [get_ports {sw[1]}]
#set_property PACKAGE_PIN W14 [get_ports {sw[2]}]
#set_property PACKAGE_PIN W13 [get_ports {sw[3]}]
#set_property PACKAGE_PIN V2 [get_ports {sw[4]}]
#set_property PACKAGE_PIN T3 [get_ports {sw[5]}]
#set_property PACKAGE_PIN T2 [get_ports {sw[6]}]
#set_property PACKAGE_PIN R3 [get_ports {sw[7]}]
#set_property PACKAGE_PIN W2 [get_ports {sw[8]}]
#set_property PACKAGE_PIN U1 [get_ports {sw[9]}]
#set_property PACKAGE_PIN T1 [get_ports {sw[10]}]
#set_property PACKAGE_PIN R2 [get_ports {sw[11]}]

#set_property PACKAGE_PIN V16 [get_ports sel]

#vga_r
set_property PACKAGE_PIN G19 [get_ports {vga_r[0]}]
set_property PACKAGE_PIN H19 [get_ports {vga_r[1]}]
set_property PACKAGE_PIN J19 [get_ports {vga_r[2]}]
set_property PACKAGE_PIN N19 [get_ports {vga_r[3]}]
#vga_g
set_property PACKAGE_PIN J17 [get_ports {vga_g[0]}]
set_property PACKAGE_PIN H17 [get_ports {vga_g[1]}]
set_property PACKAGE_PIN G17 [get_ports {vga_g[2]}]
set_property PACKAGE_PIN D17 [get_ports {vga_g[3]}]
#vga_b
set_property PACKAGE_PIN N18 [get_ports {vga_b[0]}]
set_property PACKAGE_PIN L18 [get_ports {vga_b[1]}]
set_property PACKAGE_PIN K18 [get_ports {vga_b[2]}]
set_property PACKAGE_PIN J18 [get_ports {vga_b[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]