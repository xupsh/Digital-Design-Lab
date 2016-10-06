
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/vga_v1_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "TYPE" -parent ${Page_0}
  ipgui::add_static_text $IPINST -name "Input Clock" -parent ${Page_0} -text {All supported video standards requires 60 Hz refresh rate monitor

VGA - Requires 25 MHz pixel clock
SVGA - Requires 40 MHz pixel clock
XVGA - Requires 65 MHz pixel clock
SXGA - Requires 108 MHz pixel clock}


}

proc update_PARAM_VALUE.TYPE { PARAM_VALUE.TYPE } {
	# Procedure called to update TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE { PARAM_VALUE.TYPE } {
	# Procedure called to validate TYPE
	return true
}


proc update_MODELPARAM_VALUE.TYPE { MODELPARAM_VALUE.TYPE PARAM_VALUE.TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE}] ${MODELPARAM_VALUE.TYPE}
}

