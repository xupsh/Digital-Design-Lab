
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2014.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a35tcpg236-1


# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Config_Done [ create_bd_port -dir O Config_Done ]
  set Move_EN [ create_bd_port -dir I Move_EN ]
  set OV7725_D [ create_bd_port -dir I -from 7 -to 0 OV7725_D ]
  set OV7725_HREF [ create_bd_port -dir I OV7725_HREF ]
  set OV7725_PCLK [ create_bd_port -dir I OV7725_PCLK ]
  set OV7725_SIOC [ create_bd_port -dir O OV7725_SIOC ]
  set OV7725_SIOD [ create_bd_port -dir IO OV7725_SIOD ]
  set OV7725_VSYNC [ create_bd_port -dir I OV7725_VSYNC ]
  set OV7725_XCLK [ create_bd_port -dir O OV7725_XCLK ]
  set btn_ColorExtract [ create_bd_port -dir I btn_ColorExtract ]
  set clk100 [ create_bd_port -dir I -type clk clk100 ]
  set pwm_out_x [ create_bd_port -dir O pwm_out_x ]
  set pwm_out_y [ create_bd_port -dir O pwm_out_y ]
  set rst [ create_bd_port -dir I rst ]
  set sw_ColorClear [ create_bd_port -dir I sw_ColorClear ]
  set vauxn6 [ create_bd_port -dir I vauxn6 ]
  set vauxn7 [ create_bd_port -dir I vauxn7 ]
  set vauxn14 [ create_bd_port -dir I vauxn14 ]
  set vauxn15 [ create_bd_port -dir I vauxn15 ]
  set vauxp6 [ create_bd_port -dir I vauxp6 ]
  set vauxp7 [ create_bd_port -dir I vauxp7 ]
  set vauxp14 [ create_bd_port -dir I vauxp14 ]
  set vauxp15 [ create_bd_port -dir I vauxp15 ]
  set vga_blue [ create_bd_port -dir O -from 3 -to 0 vga_blue ]
  set vga_green [ create_bd_port -dir O -from 3 -to 0 vga_green ]
  set vga_hsync [ create_bd_port -dir O vga_hsync ]
  set vga_red [ create_bd_port -dir O -from 3 -to 0 vga_red ]
  set vga_vsync [ create_bd_port -dir O vga_vsync ]

  # Create instance: IICctrl_0, and set properties
  set IICctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:IICctrl:1.0 IICctrl_0 ]

  # Create instance: PWM_gen_0, and set properties
  set PWM_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:PWM_gen:1.0 PWM_gen_0 ]

  # Create instance: PWM_gen_1, and set properties
  set PWM_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:PWM_gen:1.0 PWM_gen_1 ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.2 blk_mem_gen_0 ]
  set_property -dict [ list CONFIG.Enable_32bit_Address {false} CONFIG.Enable_A {Always_Enabled} CONFIG.Enable_B {Always_Enabled} CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Operating_Mode_A {NO_CHANGE} CONFIG.Port_B_Clock {100} CONFIG.Port_B_Enable_Rate {100} CONFIG.Read_Width_B {16} CONFIG.Register_PortB_Output_of_Memory_Primitives {true} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Write_Depth_A {76800} CONFIG.Write_Width_A {16} CONFIG.Write_Width_B {16} CONFIG.use_bram_block {Stand_Alone}  ] $blk_mem_gen_0

  # Create instance: cam_ov7670_ov7725_0, and set properties
  set cam_ov7670_ov7725_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:cam_ov7670_ov7725:1.0 cam_ov7670_ov7725_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.1 clk_wiz_0 ]
  set_property -dict [ list CONFIG.CLKOUT1_JITTER {130.958} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} CONFIG.CLKOUT2_JITTER {175.402} CONFIG.CLKOUT2_PHASE_ERROR {98.575} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {25.000} CONFIG.CLKOUT2_USED {true} CONFIG.NUM_OUT_CLKS {2} CONFIG.USE_LOCKED {false} CONFIG.USE_RESET {false}  ] $clk_wiz_0

  # Create instance: colorDetect_0, and set properties
  set colorDetect_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:colorDetect:1.0 colorDetect_0 ]

  # Create instance: debounce_0, and set properties
  set debounce_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:debounce:1.0 debounce_0 ]

  # Create instance: dilate_0, and set properties
  set dilate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:dilate:1.0 dilate_0 ]

  # Create instance: erode_0, and set properties
  set erode_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:erode:1.0 erode_0 ]

  # Create instance: move_en_0, and set properties
  set move_en_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:move_en:1.0 move_en_0 ]

  # Create instance: move_en_1, and set properties
  set move_en_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:move_en:1.0 move_en_1 ]

  # Create instance: ov7725_regData_0, and set properties
  set ov7725_regData_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:ov7725_regData:1.0 ov7725_regData_0 ]

  # Create instance: ram_read_0, and set properties
  set ram_read_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:ram_read:1.0 ram_read_0 ]

  # Create instance: region_cut_0, and set properties
  set region_cut_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:region_cut:1.0 region_cut_0 ]

  # Create instance: rgb2hsv_top_0, and set properties
  set rgb2hsv_top_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:rgb2hsv_top:1.0 rgb2hsv_top_0 ]

  # Create instance: rgb565_rgb888_0, and set properties
  set rgb565_rgb888_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:rgb565_rgb888:1.0 rgb565_rgb888_0 ]

  # Create instance: rgb888_rgb565_0, and set properties
  set rgb888_rgb565_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:rgb888_rgb565:1.0 rgb888_rgb565_0 ]

  # Create instance: servo_ctrl_0, and set properties
  set servo_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:servo_ctrl:1.0 servo_ctrl_0 ]

  # Create instance: vga_0, and set properties
  set vga_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:vga:1.0 vga_0 ]

  # Create instance: xadc_0, and set properties
  set xadc_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xadc:1.0 xadc_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list CONFIG.CONST_VAL {0}  ] $xlconstant_0

  # Create port connections
  connect_bd_net -net IICctrl_0_I2C_SCLK [get_bd_ports OV7725_SIOC] [get_bd_pins IICctrl_0/I2C_SCLK]
  connect_bd_net -net IICctrl_0_LUT_INDEX [get_bd_pins IICctrl_0/LUT_INDEX] [get_bd_pins ov7725_regData_0/LUT_INDEX]
  connect_bd_net -net Move_EN_2 [get_bd_ports Move_EN] [get_bd_pins move_en_0/Move_EN] [get_bd_pins move_en_1/Move_EN]
  connect_bd_net -net Net [get_bd_ports OV7725_SIOD] [get_bd_pins IICctrl_0/I2C_SDAT]
  connect_bd_net -net OV7725_D_1 [get_bd_ports OV7725_D] [get_bd_pins cam_ov7670_ov7725_0/d]
  connect_bd_net -net OV7725_HREF_1 [get_bd_ports OV7725_HREF] [get_bd_pins cam_ov7670_ov7725_0/href]
  connect_bd_net -net PWM_gen_0_PWM [get_bd_pins PWM_gen_0/PWM] [get_bd_pins move_en_0/pwm_i]
  connect_bd_net -net PWM_gen_1_PWM [get_bd_pins PWM_gen_1/PWM] [get_bd_pins move_en_1/pwm_i]
  connect_bd_net -net blk_mem_gen_0_doutb [get_bd_pins blk_mem_gen_0/doutb] [get_bd_pins rgb565_rgb888_0/rgb565]
  connect_bd_net -net btn_ColorExtract_1 [get_bd_ports btn_ColorExtract] [get_bd_pins colorDetect_0/btn_ColorExtract]
  connect_bd_net -net cam_ov7670_ov7725_0_addr [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins cam_ov7670_ov7725_0/addr]
  connect_bd_net -net cam_ov7670_ov7725_0_dout [get_bd_pins blk_mem_gen_0/dina] [get_bd_pins cam_ov7670_ov7725_0/dout]
  connect_bd_net -net cam_ov7670_ov7725_0_wclk [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins cam_ov7670_ov7725_0/wclk]
  connect_bd_net -net cam_ov7670_ov7725_0_we [get_bd_pins blk_mem_gen_0/wea] [get_bd_pins cam_ov7670_ov7725_0/we]
  connect_bd_net -net clk_in1_1 [get_bd_ports clk100] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins PWM_gen_0/clk_pwm] [get_bd_pins PWM_gen_1/clk_pwm] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins xadc_0/clk100]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_ports OV7725_XCLK] [get_bd_pins IICctrl_0/iCLK] [get_bd_pins blk_mem_gen_0/clkb] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins colorDetect_0/PClk] [get_bd_pins debounce_0/clk] [get_bd_pins dilate_0/PCLK] [get_bd_pins erode_0/PCLK] [get_bd_pins ram_read_0/clk] [get_bd_pins rgb2hsv_top_0/pclk] [get_bd_pins vga_0/vga_pclk]
  connect_bd_net -net colorDetect_0_Binary_PreProcess [get_bd_pins colorDetect_0/Binary_PreProcess] [get_bd_pins erode_0/pix_i]
  connect_bd_net -net colorDetect_0_RGB24_dis [get_bd_pins colorDetect_0/RGB24_dis] [get_bd_pins rgb888_rgb565_0/rgb888]
  connect_bd_net -net colorDetect_0_center_h [get_bd_pins colorDetect_0/center_h] [get_bd_pins servo_ctrl_0/x]
  connect_bd_net -net colorDetect_0_center_v [get_bd_pins colorDetect_0/center_v] [get_bd_pins servo_ctrl_0/y]
  connect_bd_net -net debounce_0_o [get_bd_pins IICctrl_0/rst] [get_bd_pins PWM_gen_0/clr_pwm] [get_bd_pins PWM_gen_1/clr_pwm] [get_bd_pins debounce_0/o] [get_bd_pins vga_0/vga_rst] [get_bd_pins xadc_0/rst]
  connect_bd_net -net dilate_0_pix_o [get_bd_pins colorDetect_0/Binary_PostProcess] [get_bd_pins dilate_0/pix_o]
  connect_bd_net -net erode_0_pix_o [get_bd_pins dilate_0/pix_i] [get_bd_pins erode_0/pix_o]
  connect_bd_net -net move_en_0_pwm_o [get_bd_ports pwm_out_x] [get_bd_pins move_en_0/pwm_o]
  connect_bd_net -net move_en_1_pwm_o [get_bd_ports pwm_out_y] [get_bd_pins move_en_1/pwm_o]
  connect_bd_net -net ov7725_regData_0_LUT_DATA [get_bd_pins IICctrl_0/LUT_DATA] [get_bd_pins ov7725_regData_0/LUT_DATA]
  connect_bd_net -net ov7725_regData_0_Slave_Addr [get_bd_pins IICctrl_0/Slave_Addr] [get_bd_pins ov7725_regData_0/Slave_Addr]
  connect_bd_net -net pclk_1 [get_bd_ports OV7725_PCLK] [get_bd_pins cam_ov7670_ov7725_0/pclk]
  connect_bd_net -net ram_read_0_address [get_bd_pins blk_mem_gen_0/addrb] [get_bd_pins ram_read_0/address]
  connect_bd_net -net ram_read_0_vga_blue [get_bd_ports vga_blue] [get_bd_pins ram_read_0/vga_blue]
  connect_bd_net -net ram_read_0_vga_green [get_bd_ports vga_green] [get_bd_pins ram_read_0/vga_green]
  connect_bd_net -net ram_read_0_vga_red [get_bd_ports vga_red] [get_bd_pins ram_read_0/vga_red]
  connect_bd_net -net rgb2hsv_top_0_HSV24 [get_bd_pins colorDetect_0/HSV24] [get_bd_pins rgb2hsv_top_0/HSV24]
  connect_bd_net -net rgb565_rgb888_0_rgb888 [get_bd_pins colorDetect_0/RGB24] [get_bd_pins rgb2hsv_top_0/RGB24] [get_bd_pins rgb565_rgb888_0/rgb888]
  connect_bd_net -net rgb888_rgb565_0_rgb565 [get_bd_pins ram_read_0/din] [get_bd_pins rgb888_rgb565_0/rgb565]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins debounce_0/i]
  connect_bd_net -net servo_ctrl_0_duty_x [get_bd_pins PWM_gen_0/duty] [get_bd_pins servo_ctrl_0/duty_x]
  connect_bd_net -net servo_ctrl_0_duty_y [get_bd_pins PWM_gen_1/duty] [get_bd_pins servo_ctrl_0/duty_y]
  connect_bd_net -net sw_ColorClear_1 [get_bd_ports sw_ColorClear] [get_bd_pins colorDetect_0/sw_ColorClear]
  connect_bd_net -net vauxn14_1 [get_bd_ports vauxn14] [get_bd_pins xadc_0/vauxn14]
  connect_bd_net -net vauxn15_1 [get_bd_ports vauxn15] [get_bd_pins xadc_0/vauxn15]
  connect_bd_net -net vauxn6_1 [get_bd_ports vauxn6] [get_bd_pins xadc_0/vauxn6]
  connect_bd_net -net vauxn7_1 [get_bd_ports vauxn7] [get_bd_pins xadc_0/vauxn7]
  connect_bd_net -net vauxp14_1 [get_bd_ports vauxp14] [get_bd_pins xadc_0/vauxp14]
  connect_bd_net -net vauxp15_1 [get_bd_ports vauxp15] [get_bd_pins xadc_0/vauxp15]
  connect_bd_net -net vauxp6_1 [get_bd_ports vauxp6] [get_bd_pins xadc_0/vauxp6]
  connect_bd_net -net vauxp7_1 [get_bd_ports vauxp7] [get_bd_pins xadc_0/vauxp7]
  connect_bd_net -net vga_0_Hcnt_signal [get_bd_pins colorDetect_0/VtcHCnt] [get_bd_pins dilate_0/VtcHCnt] [get_bd_pins erode_0/VtcHCnt] [get_bd_pins region_cut_0/valid_h_cnt]
  connect_bd_net -net vga_0_Vcnt_signal [get_bd_pins colorDetect_0/VtcVCnt] [get_bd_pins dilate_0/VtcVCnt] [get_bd_pins erode_0/VtcVCnt] [get_bd_pins region_cut_0/valid_v_cnt]
  connect_bd_net -net vga_0_vga_h_cnt [get_bd_pins ram_read_0/vga_h_cnt] [get_bd_pins region_cut_0/vga_h_cnt] [get_bd_pins vga_0/vga_h_cnt]
  connect_bd_net -net vga_0_vga_hsync [get_bd_ports vga_hsync] [get_bd_pins vga_0/vga_hsync]
  connect_bd_net -net vga_0_vga_v_cnt [get_bd_pins ram_read_0/vga_v_cnt] [get_bd_pins region_cut_0/vga_v_cnt] [get_bd_pins vga_0/vga_v_cnt]
  connect_bd_net -net vga_0_vga_valid [get_bd_pins ram_read_0/valid] [get_bd_pins vga_0/vga_valid]
  connect_bd_net -net vga_0_vga_vsync [get_bd_ports vga_vsync] [get_bd_pins vga_0/vga_vsync]
  connect_bd_net -net vsync_1 [get_bd_ports OV7725_VSYNC] [get_bd_pins cam_ov7670_ov7725_0/vsync] [get_bd_pins servo_ctrl_0/vsync_in]
  connect_bd_net -net xadc_0_aux_out_6 [get_bd_pins servo_ctrl_0/ad_data_y] [get_bd_pins xadc_0/aux_out_6]
  connect_bd_net -net xadc_0_aux_out_7 [get_bd_pins servo_ctrl_0/ad_data_x] [get_bd_pins xadc_0/aux_out_7]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins debounce_0/clr] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


