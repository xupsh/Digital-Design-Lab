#set_property PACKAGE_PIN B15 [get_ports miso]
#set_property PACKAGE_PIN W5 [get_ports clk]

set_property IOSTANDARD LVCMOS33 [get_ports sck]
set_property IOSTANDARD LVCMOS33 [get_ports miso]
set_property IOSTANDARD LVCMOS33 [get_ports reset_oled]
set_property IOSTANDARD LVCMOS33 [get_ports dc]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports sck_reg]




#create_pblock {pblock_cur_st[3]_i_4}
#resize_pblock [get_pblocks {pblock_cur_st[3]_i_4}] -add {SLICE_X48Y60:SLICE_X51Y65}
#create_pblock pblock_oled_clear
#add_cells_to_pblock [get_pblocks pblock_oled_clear] [get_cells -quiet [list oled_clear]]
#resize_pblock [get_pblocks pblock_oled_clear] -add {SLICE_X34Y147:SLICE_X47Y148}

set_property PACKAGE_PIN P17 [get_ports clk]

set_property PACKAGE_PIN H17 [get_ports sck]
#GPIO-31
set_property PACKAGE_PIN K13 [get_ports miso]
#GPIO-29
set_property PACKAGE_PIN E17 [get_ports dc]
#GPIO-27
set_property PACKAGE_PIN H14 [get_ports reset_oled]
#GPIO-25
set_property PACKAGE_PIN F15 [get_ports sck_reg]
#GPIO-23
