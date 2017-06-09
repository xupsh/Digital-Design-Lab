set_property SRC_FILE_INFO {cfile:E:/Github/xupsh/Digital_Design_lab/Chapter_10/OLED/OLED.srcs/constrs_1/new/PIN.xdc rfile:../../../OLED.srcs/constrs_1/new/PIN.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_cur_st[3]_i_4}
resize_pblock [get_pblocks {pblock_cur_st[3]_i_4}] -add {SLICE_X48Y60:SLICE_X51Y65}
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_oled_clear
add_cells_to_pblock [get_pblocks pblock_oled_clear] [get_cells -quiet [list oled_clear]]
resize_pblock [get_pblocks pblock_oled_clear] -add {SLICE_X34Y147:SLICE_X47Y148}
