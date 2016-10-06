#Vivado v2014.4

set proj_create_root [pwd]
set proj_root "$proj_create_root/files"
set proj_name "digital_camera"
set proj_part "xc7a35tcpg236-1"

set proj_iprepo_dir "$proj_root/HDL_source/IP_Catalog"

############################################################
### 1. Create the project and set the ip-repo
############################################################
# Create project
create_project $proj_name $proj_create_root -part $proj_part -force
# Set the ip_repo_paths
set_property ip_repo_paths  $proj_iprepo_dir [current_project]
update_ip_catalog

############################################################
### 2. Add source file
############################################################
# Add top
add_files -norecurse $proj_root/HDL_source/design_1.v
update_compile_order -fileset sources_1

############################################################
### 3. Add IP
############################################################
create_ip -name IICctrl -vendor xilinx.com -library XUP -version 1.0 -module_name IICctrl_0
create_ip -name blk_mem_gen -vendor xilinx.com -library ip -version 8.2 -module_name blk_mem_gen_0
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Write_Depth_A {76800} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled} CONFIG.Operating_Mode_A {NO_CHANGE} CONFIG.Register_PortA_Output_of_Memory_Primitives {false} CONFIG.Register_PortB_Output_of_Memory_Primitives {true} CONFIG.Port_B_Clock {100} CONFIG.Port_B_Enable_Rate {100}] [get_ips blk_mem_gen_0]
create_ip -name clk_wiz -vendor xilinx.com -library ip -version 5.1 -module_name clk_wiz_0
set_property -dict [list CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25} CONFIG.USE_LOCKED {false} CONFIG.USE_RESET {false} CONFIG.MMCM_DIVCLK_DIVIDE {4} CONFIG.MMCM_CLKFBOUT_MULT_F {36.375} CONFIG.MMCM_CLKOUT0_DIVIDE_F {36.375} CONFIG.CLKOUT1_JITTER {320.187} CONFIG.CLKOUT1_PHASE_ERROR {246.739}] [get_ips clk_wiz_0]
create_ip -name cam_ov7670_ov7725 -vendor xilinx.com -library XUP -version 1.0 -module_name cam_ov7670_ov7725_0
create_ip -name ov7725_regData -vendor xilinx.com -library XUP -version 1.0 -module_name ov7725_regData_0
create_ip -name ram_read -vendor xilinx.com -library XUP -version 1.0 -module_name ram_read_0
create_ip -name vga -vendor xilinx.com -library XUP -version 1.0 -module_name vga_0

############################################################
### 3. Add constrains
############################################################
add_files -fileset constrs_1 -norecurse $proj_root/Constraint/cam_bram_vga.xdc
update_compile_order -fileset sim_1