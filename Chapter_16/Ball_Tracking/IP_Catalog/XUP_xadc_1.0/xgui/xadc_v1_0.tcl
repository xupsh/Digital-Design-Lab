# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "init_read" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read_reg00" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read_reg01" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read_reg02" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read_reg06" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read_reg10" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read_reg11" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read_reg12" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read_reg13" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read_waitdrdy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "reg00_waitdrdy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "reg01_waitdrdy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "reg02_waitdrdy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "reg06_waitdrdy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "reg10_waitdrdy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "reg11_waitdrdy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "reg12_waitdrdy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "reg13_waitdrdy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "write_waitdrdy" -parent ${Page_0}


}

proc update_PARAM_VALUE.init_read { PARAM_VALUE.init_read } {
	# Procedure called to update init_read when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.init_read { PARAM_VALUE.init_read } {
	# Procedure called to validate init_read
	return true
}

proc update_PARAM_VALUE.read_reg00 { PARAM_VALUE.read_reg00 } {
	# Procedure called to update read_reg00 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_reg00 { PARAM_VALUE.read_reg00 } {
	# Procedure called to validate read_reg00
	return true
}

proc update_PARAM_VALUE.read_reg01 { PARAM_VALUE.read_reg01 } {
	# Procedure called to update read_reg01 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_reg01 { PARAM_VALUE.read_reg01 } {
	# Procedure called to validate read_reg01
	return true
}

proc update_PARAM_VALUE.read_reg02 { PARAM_VALUE.read_reg02 } {
	# Procedure called to update read_reg02 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_reg02 { PARAM_VALUE.read_reg02 } {
	# Procedure called to validate read_reg02
	return true
}

proc update_PARAM_VALUE.read_reg06 { PARAM_VALUE.read_reg06 } {
	# Procedure called to update read_reg06 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_reg06 { PARAM_VALUE.read_reg06 } {
	# Procedure called to validate read_reg06
	return true
}

proc update_PARAM_VALUE.read_reg10 { PARAM_VALUE.read_reg10 } {
	# Procedure called to update read_reg10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_reg10 { PARAM_VALUE.read_reg10 } {
	# Procedure called to validate read_reg10
	return true
}

proc update_PARAM_VALUE.read_reg11 { PARAM_VALUE.read_reg11 } {
	# Procedure called to update read_reg11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_reg11 { PARAM_VALUE.read_reg11 } {
	# Procedure called to validate read_reg11
	return true
}

proc update_PARAM_VALUE.read_reg12 { PARAM_VALUE.read_reg12 } {
	# Procedure called to update read_reg12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_reg12 { PARAM_VALUE.read_reg12 } {
	# Procedure called to validate read_reg12
	return true
}

proc update_PARAM_VALUE.read_reg13 { PARAM_VALUE.read_reg13 } {
	# Procedure called to update read_reg13 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_reg13 { PARAM_VALUE.read_reg13 } {
	# Procedure called to validate read_reg13
	return true
}

proc update_PARAM_VALUE.read_waitdrdy { PARAM_VALUE.read_waitdrdy } {
	# Procedure called to update read_waitdrdy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_waitdrdy { PARAM_VALUE.read_waitdrdy } {
	# Procedure called to validate read_waitdrdy
	return true
}

proc update_PARAM_VALUE.reg00_waitdrdy { PARAM_VALUE.reg00_waitdrdy } {
	# Procedure called to update reg00_waitdrdy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg00_waitdrdy { PARAM_VALUE.reg00_waitdrdy } {
	# Procedure called to validate reg00_waitdrdy
	return true
}

proc update_PARAM_VALUE.reg01_waitdrdy { PARAM_VALUE.reg01_waitdrdy } {
	# Procedure called to update reg01_waitdrdy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg01_waitdrdy { PARAM_VALUE.reg01_waitdrdy } {
	# Procedure called to validate reg01_waitdrdy
	return true
}

proc update_PARAM_VALUE.reg02_waitdrdy { PARAM_VALUE.reg02_waitdrdy } {
	# Procedure called to update reg02_waitdrdy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg02_waitdrdy { PARAM_VALUE.reg02_waitdrdy } {
	# Procedure called to validate reg02_waitdrdy
	return true
}

proc update_PARAM_VALUE.reg06_waitdrdy { PARAM_VALUE.reg06_waitdrdy } {
	# Procedure called to update reg06_waitdrdy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg06_waitdrdy { PARAM_VALUE.reg06_waitdrdy } {
	# Procedure called to validate reg06_waitdrdy
	return true
}

proc update_PARAM_VALUE.reg10_waitdrdy { PARAM_VALUE.reg10_waitdrdy } {
	# Procedure called to update reg10_waitdrdy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg10_waitdrdy { PARAM_VALUE.reg10_waitdrdy } {
	# Procedure called to validate reg10_waitdrdy
	return true
}

proc update_PARAM_VALUE.reg11_waitdrdy { PARAM_VALUE.reg11_waitdrdy } {
	# Procedure called to update reg11_waitdrdy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg11_waitdrdy { PARAM_VALUE.reg11_waitdrdy } {
	# Procedure called to validate reg11_waitdrdy
	return true
}

proc update_PARAM_VALUE.reg12_waitdrdy { PARAM_VALUE.reg12_waitdrdy } {
	# Procedure called to update reg12_waitdrdy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg12_waitdrdy { PARAM_VALUE.reg12_waitdrdy } {
	# Procedure called to validate reg12_waitdrdy
	return true
}

proc update_PARAM_VALUE.reg13_waitdrdy { PARAM_VALUE.reg13_waitdrdy } {
	# Procedure called to update reg13_waitdrdy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg13_waitdrdy { PARAM_VALUE.reg13_waitdrdy } {
	# Procedure called to validate reg13_waitdrdy
	return true
}

proc update_PARAM_VALUE.write_waitdrdy { PARAM_VALUE.write_waitdrdy } {
	# Procedure called to update write_waitdrdy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.write_waitdrdy { PARAM_VALUE.write_waitdrdy } {
	# Procedure called to validate write_waitdrdy
	return true
}


proc update_MODELPARAM_VALUE.init_read { MODELPARAM_VALUE.init_read PARAM_VALUE.init_read } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.init_read}] ${MODELPARAM_VALUE.init_read}
}

proc update_MODELPARAM_VALUE.read_waitdrdy { MODELPARAM_VALUE.read_waitdrdy PARAM_VALUE.read_waitdrdy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_waitdrdy}] ${MODELPARAM_VALUE.read_waitdrdy}
}

proc update_MODELPARAM_VALUE.write_waitdrdy { MODELPARAM_VALUE.write_waitdrdy PARAM_VALUE.write_waitdrdy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.write_waitdrdy}] ${MODELPARAM_VALUE.write_waitdrdy}
}

proc update_MODELPARAM_VALUE.read_reg00 { MODELPARAM_VALUE.read_reg00 PARAM_VALUE.read_reg00 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_reg00}] ${MODELPARAM_VALUE.read_reg00}
}

proc update_MODELPARAM_VALUE.reg00_waitdrdy { MODELPARAM_VALUE.reg00_waitdrdy PARAM_VALUE.reg00_waitdrdy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg00_waitdrdy}] ${MODELPARAM_VALUE.reg00_waitdrdy}
}

proc update_MODELPARAM_VALUE.read_reg01 { MODELPARAM_VALUE.read_reg01 PARAM_VALUE.read_reg01 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_reg01}] ${MODELPARAM_VALUE.read_reg01}
}

proc update_MODELPARAM_VALUE.reg01_waitdrdy { MODELPARAM_VALUE.reg01_waitdrdy PARAM_VALUE.reg01_waitdrdy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg01_waitdrdy}] ${MODELPARAM_VALUE.reg01_waitdrdy}
}

proc update_MODELPARAM_VALUE.read_reg02 { MODELPARAM_VALUE.read_reg02 PARAM_VALUE.read_reg02 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_reg02}] ${MODELPARAM_VALUE.read_reg02}
}

proc update_MODELPARAM_VALUE.reg02_waitdrdy { MODELPARAM_VALUE.reg02_waitdrdy PARAM_VALUE.reg02_waitdrdy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg02_waitdrdy}] ${MODELPARAM_VALUE.reg02_waitdrdy}
}

proc update_MODELPARAM_VALUE.read_reg06 { MODELPARAM_VALUE.read_reg06 PARAM_VALUE.read_reg06 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_reg06}] ${MODELPARAM_VALUE.read_reg06}
}

proc update_MODELPARAM_VALUE.reg06_waitdrdy { MODELPARAM_VALUE.reg06_waitdrdy PARAM_VALUE.reg06_waitdrdy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg06_waitdrdy}] ${MODELPARAM_VALUE.reg06_waitdrdy}
}

proc update_MODELPARAM_VALUE.read_reg10 { MODELPARAM_VALUE.read_reg10 PARAM_VALUE.read_reg10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_reg10}] ${MODELPARAM_VALUE.read_reg10}
}

proc update_MODELPARAM_VALUE.reg10_waitdrdy { MODELPARAM_VALUE.reg10_waitdrdy PARAM_VALUE.reg10_waitdrdy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg10_waitdrdy}] ${MODELPARAM_VALUE.reg10_waitdrdy}
}

proc update_MODELPARAM_VALUE.read_reg11 { MODELPARAM_VALUE.read_reg11 PARAM_VALUE.read_reg11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_reg11}] ${MODELPARAM_VALUE.read_reg11}
}

proc update_MODELPARAM_VALUE.reg11_waitdrdy { MODELPARAM_VALUE.reg11_waitdrdy PARAM_VALUE.reg11_waitdrdy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg11_waitdrdy}] ${MODELPARAM_VALUE.reg11_waitdrdy}
}

proc update_MODELPARAM_VALUE.read_reg12 { MODELPARAM_VALUE.read_reg12 PARAM_VALUE.read_reg12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_reg12}] ${MODELPARAM_VALUE.read_reg12}
}

proc update_MODELPARAM_VALUE.reg12_waitdrdy { MODELPARAM_VALUE.reg12_waitdrdy PARAM_VALUE.reg12_waitdrdy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg12_waitdrdy}] ${MODELPARAM_VALUE.reg12_waitdrdy}
}

proc update_MODELPARAM_VALUE.read_reg13 { MODELPARAM_VALUE.read_reg13 PARAM_VALUE.read_reg13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_reg13}] ${MODELPARAM_VALUE.read_reg13}
}

proc update_MODELPARAM_VALUE.reg13_waitdrdy { MODELPARAM_VALUE.reg13_waitdrdy PARAM_VALUE.reg13_waitdrdy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg13_waitdrdy}] ${MODELPARAM_VALUE.reg13_waitdrdy}
}

