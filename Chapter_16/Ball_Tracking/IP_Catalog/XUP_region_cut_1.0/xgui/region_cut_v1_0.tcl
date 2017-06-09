# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "SHOW_HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SHOW_H_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SHOW_V_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SHOW_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.SHOW_HEIGHT { PARAM_VALUE.SHOW_HEIGHT } {
	# Procedure called to update SHOW_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SHOW_HEIGHT { PARAM_VALUE.SHOW_HEIGHT } {
	# Procedure called to validate SHOW_HEIGHT
	return true
}

proc update_PARAM_VALUE.SHOW_H_START { PARAM_VALUE.SHOW_H_START } {
	# Procedure called to update SHOW_H_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SHOW_H_START { PARAM_VALUE.SHOW_H_START } {
	# Procedure called to validate SHOW_H_START
	return true
}

proc update_PARAM_VALUE.SHOW_V_START { PARAM_VALUE.SHOW_V_START } {
	# Procedure called to update SHOW_V_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SHOW_V_START { PARAM_VALUE.SHOW_V_START } {
	# Procedure called to validate SHOW_V_START
	return true
}

proc update_PARAM_VALUE.SHOW_WIDTH { PARAM_VALUE.SHOW_WIDTH } {
	# Procedure called to update SHOW_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SHOW_WIDTH { PARAM_VALUE.SHOW_WIDTH } {
	# Procedure called to validate SHOW_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.SHOW_H_START { MODELPARAM_VALUE.SHOW_H_START PARAM_VALUE.SHOW_H_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SHOW_H_START}] ${MODELPARAM_VALUE.SHOW_H_START}
}

proc update_MODELPARAM_VALUE.SHOW_V_START { MODELPARAM_VALUE.SHOW_V_START PARAM_VALUE.SHOW_V_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SHOW_V_START}] ${MODELPARAM_VALUE.SHOW_V_START}
}

proc update_MODELPARAM_VALUE.SHOW_WIDTH { MODELPARAM_VALUE.SHOW_WIDTH PARAM_VALUE.SHOW_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SHOW_WIDTH}] ${MODELPARAM_VALUE.SHOW_WIDTH}
}

proc update_MODELPARAM_VALUE.SHOW_HEIGHT { MODELPARAM_VALUE.SHOW_HEIGHT PARAM_VALUE.SHOW_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SHOW_HEIGHT}] ${MODELPARAM_VALUE.SHOW_HEIGHT}
}

