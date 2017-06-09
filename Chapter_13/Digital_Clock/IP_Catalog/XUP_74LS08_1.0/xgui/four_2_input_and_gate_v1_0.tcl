# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ipgui::add_page $IPINST -name "Page 0" -layout vertical]
	set Component_Name [ipgui::add_param $IPINST -parent $Page0 -name Component_Name]
	set Delay [ipgui::add_param $IPINST -parent $Page0 -name Delay]
}

proc update_PARAM_VALUE.Delay { PARAM_VALUE.Delay } {
	# Procedure called to update Delay when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Delay { PARAM_VALUE.Delay } {
	# Procedure called to validate Delay
	return true
}


proc update_MODELPARAM_VALUE.Delay { MODELPARAM_VALUE.Delay PARAM_VALUE.Delay } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Delay}] ${MODELPARAM_VALUE.Delay}
}

