# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ipgui::add_page $IPINST -name "Page 0" -layout vertical]
	set Component_Name [ipgui::add_param $IPINST -parent $Page0 -name Component_Name]
	set func_sra [ipgui::add_param $IPINST -parent $Page0 -name func_sra]
	set func_srl [ipgui::add_param $IPINST -parent $Page0 -name func_srl]
	set func_sll [ipgui::add_param $IPINST -parent $Page0 -name func_sll]
	set func_xor [ipgui::add_param $IPINST -parent $Page0 -name func_xor]
	set func_or [ipgui::add_param $IPINST -parent $Page0 -name func_or]
	set func_and [ipgui::add_param $IPINST -parent $Page0 -name func_and]
	set func_sub [ipgui::add_param $IPINST -parent $Page0 -name func_sub]
	set func_add [ipgui::add_param $IPINST -parent $Page0 -name func_add]
	set st_reset [ipgui::add_param $IPINST -parent $Page0 -name st_reset]
	set st_wrom [ipgui::add_param $IPINST -parent $Page0 -name st_wrom]
	set st_run [ipgui::add_param $IPINST -parent $Page0 -name st_run]
	set st_load [ipgui::add_param $IPINST -parent $Page0 -name st_load]
	set st_idle [ipgui::add_param $IPINST -parent $Page0 -name st_idle]
	set sl_bh [ipgui::add_param $IPINST -parent $Page0 -name sl_bh]
	set sl_bl [ipgui::add_param $IPINST -parent $Page0 -name sl_bl]
	set sl_ah [ipgui::add_param $IPINST -parent $Page0 -name sl_ah]
	set sl_al [ipgui::add_param $IPINST -parent $Page0 -name sl_al]
	set cmd_sra [ipgui::add_param $IPINST -parent $Page0 -name cmd_sra]
	set cmd_srl [ipgui::add_param $IPINST -parent $Page0 -name cmd_srl]
	set cmd_sll [ipgui::add_param $IPINST -parent $Page0 -name cmd_sll]
	set cmd_xor [ipgui::add_param $IPINST -parent $Page0 -name cmd_xor]
	set cmd_or [ipgui::add_param $IPINST -parent $Page0 -name cmd_or]
	set cmd_and [ipgui::add_param $IPINST -parent $Page0 -name cmd_and]
	set cmd_sub [ipgui::add_param $IPINST -parent $Page0 -name cmd_sub]
	set cmd_add [ipgui::add_param $IPINST -parent $Page0 -name cmd_add]
}

proc update_PARAM_VALUE.func_sra { PARAM_VALUE.func_sra } {
	# Procedure called to update func_sra when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.func_sra { PARAM_VALUE.func_sra } {
	# Procedure called to validate func_sra
	return true
}

proc update_PARAM_VALUE.func_srl { PARAM_VALUE.func_srl } {
	# Procedure called to update func_srl when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.func_srl { PARAM_VALUE.func_srl } {
	# Procedure called to validate func_srl
	return true
}

proc update_PARAM_VALUE.func_sll { PARAM_VALUE.func_sll } {
	# Procedure called to update func_sll when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.func_sll { PARAM_VALUE.func_sll } {
	# Procedure called to validate func_sll
	return true
}

proc update_PARAM_VALUE.func_xor { PARAM_VALUE.func_xor } {
	# Procedure called to update func_xor when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.func_xor { PARAM_VALUE.func_xor } {
	# Procedure called to validate func_xor
	return true
}

proc update_PARAM_VALUE.func_or { PARAM_VALUE.func_or } {
	# Procedure called to update func_or when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.func_or { PARAM_VALUE.func_or } {
	# Procedure called to validate func_or
	return true
}

proc update_PARAM_VALUE.func_and { PARAM_VALUE.func_and } {
	# Procedure called to update func_and when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.func_and { PARAM_VALUE.func_and } {
	# Procedure called to validate func_and
	return true
}

proc update_PARAM_VALUE.func_sub { PARAM_VALUE.func_sub } {
	# Procedure called to update func_sub when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.func_sub { PARAM_VALUE.func_sub } {
	# Procedure called to validate func_sub
	return true
}

proc update_PARAM_VALUE.func_add { PARAM_VALUE.func_add } {
	# Procedure called to update func_add when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.func_add { PARAM_VALUE.func_add } {
	# Procedure called to validate func_add
	return true
}

proc update_PARAM_VALUE.st_reset { PARAM_VALUE.st_reset } {
	# Procedure called to update st_reset when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.st_reset { PARAM_VALUE.st_reset } {
	# Procedure called to validate st_reset
	return true
}

proc update_PARAM_VALUE.st_wrom { PARAM_VALUE.st_wrom } {
	# Procedure called to update st_wrom when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.st_wrom { PARAM_VALUE.st_wrom } {
	# Procedure called to validate st_wrom
	return true
}

proc update_PARAM_VALUE.st_run { PARAM_VALUE.st_run } {
	# Procedure called to update st_run when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.st_run { PARAM_VALUE.st_run } {
	# Procedure called to validate st_run
	return true
}

proc update_PARAM_VALUE.st_load { PARAM_VALUE.st_load } {
	# Procedure called to update st_load when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.st_load { PARAM_VALUE.st_load } {
	# Procedure called to validate st_load
	return true
}

proc update_PARAM_VALUE.st_idle { PARAM_VALUE.st_idle } {
	# Procedure called to update st_idle when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.st_idle { PARAM_VALUE.st_idle } {
	# Procedure called to validate st_idle
	return true
}

proc update_PARAM_VALUE.sl_bh { PARAM_VALUE.sl_bh } {
	# Procedure called to update sl_bh when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sl_bh { PARAM_VALUE.sl_bh } {
	# Procedure called to validate sl_bh
	return true
}

proc update_PARAM_VALUE.sl_bl { PARAM_VALUE.sl_bl } {
	# Procedure called to update sl_bl when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sl_bl { PARAM_VALUE.sl_bl } {
	# Procedure called to validate sl_bl
	return true
}

proc update_PARAM_VALUE.sl_ah { PARAM_VALUE.sl_ah } {
	# Procedure called to update sl_ah when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sl_ah { PARAM_VALUE.sl_ah } {
	# Procedure called to validate sl_ah
	return true
}

proc update_PARAM_VALUE.sl_al { PARAM_VALUE.sl_al } {
	# Procedure called to update sl_al when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sl_al { PARAM_VALUE.sl_al } {
	# Procedure called to validate sl_al
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

proc update_MODELPARAM_VALUE.sl_al { MODELPARAM_VALUE.sl_al PARAM_VALUE.sl_al } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sl_al}] ${MODELPARAM_VALUE.sl_al}
}

proc update_MODELPARAM_VALUE.sl_ah { MODELPARAM_VALUE.sl_ah PARAM_VALUE.sl_ah } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sl_ah}] ${MODELPARAM_VALUE.sl_ah}
}

proc update_MODELPARAM_VALUE.sl_bl { MODELPARAM_VALUE.sl_bl PARAM_VALUE.sl_bl } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sl_bl}] ${MODELPARAM_VALUE.sl_bl}
}

proc update_MODELPARAM_VALUE.sl_bh { MODELPARAM_VALUE.sl_bh PARAM_VALUE.sl_bh } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sl_bh}] ${MODELPARAM_VALUE.sl_bh}
}

proc update_MODELPARAM_VALUE.st_idle { MODELPARAM_VALUE.st_idle PARAM_VALUE.st_idle } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.st_idle}] ${MODELPARAM_VALUE.st_idle}
}

proc update_MODELPARAM_VALUE.st_load { MODELPARAM_VALUE.st_load PARAM_VALUE.st_load } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.st_load}] ${MODELPARAM_VALUE.st_load}
}

proc update_MODELPARAM_VALUE.st_run { MODELPARAM_VALUE.st_run PARAM_VALUE.st_run } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.st_run}] ${MODELPARAM_VALUE.st_run}
}

proc update_MODELPARAM_VALUE.st_wrom { MODELPARAM_VALUE.st_wrom PARAM_VALUE.st_wrom } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.st_wrom}] ${MODELPARAM_VALUE.st_wrom}
}

proc update_MODELPARAM_VALUE.st_reset { MODELPARAM_VALUE.st_reset PARAM_VALUE.st_reset } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.st_reset}] ${MODELPARAM_VALUE.st_reset}
}

proc update_MODELPARAM_VALUE.func_add { MODELPARAM_VALUE.func_add PARAM_VALUE.func_add } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.func_add}] ${MODELPARAM_VALUE.func_add}
}

proc update_MODELPARAM_VALUE.func_sub { MODELPARAM_VALUE.func_sub PARAM_VALUE.func_sub } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.func_sub}] ${MODELPARAM_VALUE.func_sub}
}

proc update_MODELPARAM_VALUE.func_and { MODELPARAM_VALUE.func_and PARAM_VALUE.func_and } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.func_and}] ${MODELPARAM_VALUE.func_and}
}

proc update_MODELPARAM_VALUE.func_or { MODELPARAM_VALUE.func_or PARAM_VALUE.func_or } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.func_or}] ${MODELPARAM_VALUE.func_or}
}

proc update_MODELPARAM_VALUE.func_xor { MODELPARAM_VALUE.func_xor PARAM_VALUE.func_xor } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.func_xor}] ${MODELPARAM_VALUE.func_xor}
}

proc update_MODELPARAM_VALUE.func_sll { MODELPARAM_VALUE.func_sll PARAM_VALUE.func_sll } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.func_sll}] ${MODELPARAM_VALUE.func_sll}
}

proc update_MODELPARAM_VALUE.func_srl { MODELPARAM_VALUE.func_srl PARAM_VALUE.func_srl } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.func_srl}] ${MODELPARAM_VALUE.func_srl}
}

proc update_MODELPARAM_VALUE.func_sra { MODELPARAM_VALUE.func_sra PARAM_VALUE.func_sra } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.func_sra}] ${MODELPARAM_VALUE.func_sra}
}

