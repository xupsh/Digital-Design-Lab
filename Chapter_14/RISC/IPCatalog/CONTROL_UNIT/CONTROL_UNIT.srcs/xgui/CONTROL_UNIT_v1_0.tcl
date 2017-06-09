# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ipgui::add_page $IPINST -name "Page 0" -layout vertical]
	set Component_Name [ipgui::add_param $IPINST -parent $Page0 -name Component_Name]
	set cmd_jal [ipgui::add_param $IPINST -parent $Page0 -name cmd_jal]
	set cmd_j [ipgui::add_param $IPINST -parent $Page0 -name cmd_j]
	set cmd_lui [ipgui::add_param $IPINST -parent $Page0 -name cmd_lui]
	set cmd_bne [ipgui::add_param $IPINST -parent $Page0 -name cmd_bne]
	set cmd_beq [ipgui::add_param $IPINST -parent $Page0 -name cmd_beq]
	set cmd_sw [ipgui::add_param $IPINST -parent $Page0 -name cmd_sw]
	set cmd_lw [ipgui::add_param $IPINST -parent $Page0 -name cmd_lw]
	set cmd_xori [ipgui::add_param $IPINST -parent $Page0 -name cmd_xori]
	set cmd_ori [ipgui::add_param $IPINST -parent $Page0 -name cmd_ori]
	set cmd_andi [ipgui::add_param $IPINST -parent $Page0 -name cmd_andi]
	set cmd_addi [ipgui::add_param $IPINST -parent $Page0 -name cmd_addi]
	set cmd_jr [ipgui::add_param $IPINST -parent $Page0 -name cmd_jr]
	set cmd_sra [ipgui::add_param $IPINST -parent $Page0 -name cmd_sra]
	set cmd_srl [ipgui::add_param $IPINST -parent $Page0 -name cmd_srl]
	set cmd_sll [ipgui::add_param $IPINST -parent $Page0 -name cmd_sll]
	set cmd_xor [ipgui::add_param $IPINST -parent $Page0 -name cmd_xor]
	set cmd_or [ipgui::add_param $IPINST -parent $Page0 -name cmd_or]
	set cmd_and [ipgui::add_param $IPINST -parent $Page0 -name cmd_and]
	set cmd_sub [ipgui::add_param $IPINST -parent $Page0 -name cmd_sub]
	set cmd_add [ipgui::add_param $IPINST -parent $Page0 -name cmd_add]
}

proc update_PARAM_VALUE.cmd_jal { PARAM_VALUE.cmd_jal } {
	# Procedure called to update cmd_jal when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_jal { PARAM_VALUE.cmd_jal } {
	# Procedure called to validate cmd_jal
	return true
}

proc update_PARAM_VALUE.cmd_j { PARAM_VALUE.cmd_j } {
	# Procedure called to update cmd_j when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_j { PARAM_VALUE.cmd_j } {
	# Procedure called to validate cmd_j
	return true
}

proc update_PARAM_VALUE.cmd_lui { PARAM_VALUE.cmd_lui } {
	# Procedure called to update cmd_lui when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_lui { PARAM_VALUE.cmd_lui } {
	# Procedure called to validate cmd_lui
	return true
}

proc update_PARAM_VALUE.cmd_bne { PARAM_VALUE.cmd_bne } {
	# Procedure called to update cmd_bne when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_bne { PARAM_VALUE.cmd_bne } {
	# Procedure called to validate cmd_bne
	return true
}

proc update_PARAM_VALUE.cmd_beq { PARAM_VALUE.cmd_beq } {
	# Procedure called to update cmd_beq when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_beq { PARAM_VALUE.cmd_beq } {
	# Procedure called to validate cmd_beq
	return true
}

proc update_PARAM_VALUE.cmd_sw { PARAM_VALUE.cmd_sw } {
	# Procedure called to update cmd_sw when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_sw { PARAM_VALUE.cmd_sw } {
	# Procedure called to validate cmd_sw
	return true
}

proc update_PARAM_VALUE.cmd_lw { PARAM_VALUE.cmd_lw } {
	# Procedure called to update cmd_lw when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_lw { PARAM_VALUE.cmd_lw } {
	# Procedure called to validate cmd_lw
	return true
}

proc update_PARAM_VALUE.cmd_xori { PARAM_VALUE.cmd_xori } {
	# Procedure called to update cmd_xori when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_xori { PARAM_VALUE.cmd_xori } {
	# Procedure called to validate cmd_xori
	return true
}

proc update_PARAM_VALUE.cmd_ori { PARAM_VALUE.cmd_ori } {
	# Procedure called to update cmd_ori when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_ori { PARAM_VALUE.cmd_ori } {
	# Procedure called to validate cmd_ori
	return true
}

proc update_PARAM_VALUE.cmd_andi { PARAM_VALUE.cmd_andi } {
	# Procedure called to update cmd_andi when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_andi { PARAM_VALUE.cmd_andi } {
	# Procedure called to validate cmd_andi
	return true
}

proc update_PARAM_VALUE.cmd_addi { PARAM_VALUE.cmd_addi } {
	# Procedure called to update cmd_addi when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_addi { PARAM_VALUE.cmd_addi } {
	# Procedure called to validate cmd_addi
	return true
}

proc update_PARAM_VALUE.cmd_jr { PARAM_VALUE.cmd_jr } {
	# Procedure called to update cmd_jr when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_jr { PARAM_VALUE.cmd_jr } {
	# Procedure called to validate cmd_jr
	return true
}

proc update_PARAM_VALUE.cmd_sra { PARAM_VALUE.cmd_sra } {
	# Procedure called to update cmd_sra when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_sra { PARAM_VALUE.cmd_sra } {
	# Procedure called to validate cmd_sra
	return true
}

proc update_PARAM_VALUE.cmd_srl { PARAM_VALUE.cmd_srl } {
	# Procedure called to update cmd_srl when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_srl { PARAM_VALUE.cmd_srl } {
	# Procedure called to validate cmd_srl
	return true
}

proc update_PARAM_VALUE.cmd_sll { PARAM_VALUE.cmd_sll } {
	# Procedure called to update cmd_sll when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_sll { PARAM_VALUE.cmd_sll } {
	# Procedure called to validate cmd_sll
	return true
}

proc update_PARAM_VALUE.cmd_xor { PARAM_VALUE.cmd_xor } {
	# Procedure called to update cmd_xor when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_xor { PARAM_VALUE.cmd_xor } {
	# Procedure called to validate cmd_xor
	return true
}

proc update_PARAM_VALUE.cmd_or { PARAM_VALUE.cmd_or } {
	# Procedure called to update cmd_or when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_or { PARAM_VALUE.cmd_or } {
	# Procedure called to validate cmd_or
	return true
}

proc update_PARAM_VALUE.cmd_and { PARAM_VALUE.cmd_and } {
	# Procedure called to update cmd_and when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_and { PARAM_VALUE.cmd_and } {
	# Procedure called to validate cmd_and
	return true
}

proc update_PARAM_VALUE.cmd_sub { PARAM_VALUE.cmd_sub } {
	# Procedure called to update cmd_sub when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_sub { PARAM_VALUE.cmd_sub } {
	# Procedure called to validate cmd_sub
	return true
}

proc update_PARAM_VALUE.cmd_add { PARAM_VALUE.cmd_add } {
	# Procedure called to update cmd_add when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cmd_add { PARAM_VALUE.cmd_add } {
	# Procedure called to validate cmd_add
	return true
}


proc update_MODELPARAM_VALUE.cmd_add { MODELPARAM_VALUE.cmd_add PARAM_VALUE.cmd_add } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_add}] ${MODELPARAM_VALUE.cmd_add}
}

proc update_MODELPARAM_VALUE.cmd_sub { MODELPARAM_VALUE.cmd_sub PARAM_VALUE.cmd_sub } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_sub}] ${MODELPARAM_VALUE.cmd_sub}
}

proc update_MODELPARAM_VALUE.cmd_and { MODELPARAM_VALUE.cmd_and PARAM_VALUE.cmd_and } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_and}] ${MODELPARAM_VALUE.cmd_and}
}

proc update_MODELPARAM_VALUE.cmd_or { MODELPARAM_VALUE.cmd_or PARAM_VALUE.cmd_or } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_or}] ${MODELPARAM_VALUE.cmd_or}
}

proc update_MODELPARAM_VALUE.cmd_xor { MODELPARAM_VALUE.cmd_xor PARAM_VALUE.cmd_xor } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_xor}] ${MODELPARAM_VALUE.cmd_xor}
}

proc update_MODELPARAM_VALUE.cmd_sll { MODELPARAM_VALUE.cmd_sll PARAM_VALUE.cmd_sll } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_sll}] ${MODELPARAM_VALUE.cmd_sll}
}

proc update_MODELPARAM_VALUE.cmd_srl { MODELPARAM_VALUE.cmd_srl PARAM_VALUE.cmd_srl } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_srl}] ${MODELPARAM_VALUE.cmd_srl}
}

proc update_MODELPARAM_VALUE.cmd_sra { MODELPARAM_VALUE.cmd_sra PARAM_VALUE.cmd_sra } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_sra}] ${MODELPARAM_VALUE.cmd_sra}
}

proc update_MODELPARAM_VALUE.cmd_jr { MODELPARAM_VALUE.cmd_jr PARAM_VALUE.cmd_jr } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_jr}] ${MODELPARAM_VALUE.cmd_jr}
}

proc update_MODELPARAM_VALUE.cmd_addi { MODELPARAM_VALUE.cmd_addi PARAM_VALUE.cmd_addi } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_addi}] ${MODELPARAM_VALUE.cmd_addi}
}

proc update_MODELPARAM_VALUE.cmd_andi { MODELPARAM_VALUE.cmd_andi PARAM_VALUE.cmd_andi } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_andi}] ${MODELPARAM_VALUE.cmd_andi}
}

proc update_MODELPARAM_VALUE.cmd_ori { MODELPARAM_VALUE.cmd_ori PARAM_VALUE.cmd_ori } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_ori}] ${MODELPARAM_VALUE.cmd_ori}
}

proc update_MODELPARAM_VALUE.cmd_xori { MODELPARAM_VALUE.cmd_xori PARAM_VALUE.cmd_xori } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_xori}] ${MODELPARAM_VALUE.cmd_xori}
}

proc update_MODELPARAM_VALUE.cmd_lw { MODELPARAM_VALUE.cmd_lw PARAM_VALUE.cmd_lw } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_lw}] ${MODELPARAM_VALUE.cmd_lw}
}

proc update_MODELPARAM_VALUE.cmd_sw { MODELPARAM_VALUE.cmd_sw PARAM_VALUE.cmd_sw } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_sw}] ${MODELPARAM_VALUE.cmd_sw}
}

proc update_MODELPARAM_VALUE.cmd_beq { MODELPARAM_VALUE.cmd_beq PARAM_VALUE.cmd_beq } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_beq}] ${MODELPARAM_VALUE.cmd_beq}
}

proc update_MODELPARAM_VALUE.cmd_bne { MODELPARAM_VALUE.cmd_bne PARAM_VALUE.cmd_bne } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_bne}] ${MODELPARAM_VALUE.cmd_bne}
}

proc update_MODELPARAM_VALUE.cmd_lui { MODELPARAM_VALUE.cmd_lui PARAM_VALUE.cmd_lui } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_lui}] ${MODELPARAM_VALUE.cmd_lui}
}

proc update_MODELPARAM_VALUE.cmd_j { MODELPARAM_VALUE.cmd_j PARAM_VALUE.cmd_j } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_j}] ${MODELPARAM_VALUE.cmd_j}
}

proc update_MODELPARAM_VALUE.cmd_jal { MODELPARAM_VALUE.cmd_jal PARAM_VALUE.cmd_jal } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cmd_jal}] ${MODELPARAM_VALUE.cmd_jal}
}

