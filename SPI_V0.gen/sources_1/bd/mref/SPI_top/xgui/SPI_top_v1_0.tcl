# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "D_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TX_SHIFT_FMT" -parent ${Page_0}


}

proc update_PARAM_VALUE.D_WIDTH { PARAM_VALUE.D_WIDTH } {
	# Procedure called to update D_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.D_WIDTH { PARAM_VALUE.D_WIDTH } {
	# Procedure called to validate D_WIDTH
	return true
}

proc update_PARAM_VALUE.TX_SHIFT_FMT { PARAM_VALUE.TX_SHIFT_FMT } {
	# Procedure called to update TX_SHIFT_FMT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TX_SHIFT_FMT { PARAM_VALUE.TX_SHIFT_FMT } {
	# Procedure called to validate TX_SHIFT_FMT
	return true
}


proc update_MODELPARAM_VALUE.D_WIDTH { MODELPARAM_VALUE.D_WIDTH PARAM_VALUE.D_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.D_WIDTH}] ${MODELPARAM_VALUE.D_WIDTH}
}

proc update_MODELPARAM_VALUE.TX_SHIFT_FMT { MODELPARAM_VALUE.TX_SHIFT_FMT PARAM_VALUE.TX_SHIFT_FMT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TX_SHIFT_FMT}] ${MODELPARAM_VALUE.TX_SHIFT_FMT}
}

