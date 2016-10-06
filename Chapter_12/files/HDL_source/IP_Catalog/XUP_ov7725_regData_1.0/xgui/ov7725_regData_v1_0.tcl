# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Read_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SET_OV7725" -parent ${Page_0}


}

proc update_PARAM_VALUE.Read_DATA { PARAM_VALUE.Read_DATA } {
	# Procedure called to update Read_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Read_DATA { PARAM_VALUE.Read_DATA } {
	# Procedure called to validate Read_DATA
	return true
}

proc update_PARAM_VALUE.SET_OV7725 { PARAM_VALUE.SET_OV7725 } {
	# Procedure called to update SET_OV7725 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SET_OV7725 { PARAM_VALUE.SET_OV7725 } {
	# Procedure called to validate SET_OV7725
	return true
}


proc update_MODELPARAM_VALUE.Read_DATA { MODELPARAM_VALUE.Read_DATA PARAM_VALUE.Read_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Read_DATA}] ${MODELPARAM_VALUE.Read_DATA}
}

proc update_MODELPARAM_VALUE.SET_OV7725 { MODELPARAM_VALUE.SET_OV7725 PARAM_VALUE.SET_OV7725 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SET_OV7725}] ${MODELPARAM_VALUE.SET_OV7725}
}

