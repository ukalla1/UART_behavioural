# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDRS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BITCOUNTMAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATAWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RAMDEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SAMPLECOUNTMAX_RX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SAMPLECOUNTMAX_TX" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDRS_WIDTH { PARAM_VALUE.ADDRS_WIDTH } {
	# Procedure called to update ADDRS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDRS_WIDTH { PARAM_VALUE.ADDRS_WIDTH } {
	# Procedure called to validate ADDRS_WIDTH
	return true
}

proc update_PARAM_VALUE.BITCOUNTMAX { PARAM_VALUE.BITCOUNTMAX } {
	# Procedure called to update BITCOUNTMAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BITCOUNTMAX { PARAM_VALUE.BITCOUNTMAX } {
	# Procedure called to validate BITCOUNTMAX
	return true
}

proc update_PARAM_VALUE.DATAWIDTH { PARAM_VALUE.DATAWIDTH } {
	# Procedure called to update DATAWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATAWIDTH { PARAM_VALUE.DATAWIDTH } {
	# Procedure called to validate DATAWIDTH
	return true
}

proc update_PARAM_VALUE.RAMDEPTH { PARAM_VALUE.RAMDEPTH } {
	# Procedure called to update RAMDEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAMDEPTH { PARAM_VALUE.RAMDEPTH } {
	# Procedure called to validate RAMDEPTH
	return true
}

proc update_PARAM_VALUE.SAMPLECOUNTMAX_RX { PARAM_VALUE.SAMPLECOUNTMAX_RX } {
	# Procedure called to update SAMPLECOUNTMAX_RX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAMPLECOUNTMAX_RX { PARAM_VALUE.SAMPLECOUNTMAX_RX } {
	# Procedure called to validate SAMPLECOUNTMAX_RX
	return true
}

proc update_PARAM_VALUE.SAMPLECOUNTMAX_TX { PARAM_VALUE.SAMPLECOUNTMAX_TX } {
	# Procedure called to update SAMPLECOUNTMAX_TX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAMPLECOUNTMAX_TX { PARAM_VALUE.SAMPLECOUNTMAX_TX } {
	# Procedure called to validate SAMPLECOUNTMAX_TX
	return true
}


proc update_MODELPARAM_VALUE.DATAWIDTH { MODELPARAM_VALUE.DATAWIDTH PARAM_VALUE.DATAWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATAWIDTH}] ${MODELPARAM_VALUE.DATAWIDTH}
}

proc update_MODELPARAM_VALUE.BITCOUNTMAX { MODELPARAM_VALUE.BITCOUNTMAX PARAM_VALUE.BITCOUNTMAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BITCOUNTMAX}] ${MODELPARAM_VALUE.BITCOUNTMAX}
}

proc update_MODELPARAM_VALUE.SAMPLECOUNTMAX_RX { MODELPARAM_VALUE.SAMPLECOUNTMAX_RX PARAM_VALUE.SAMPLECOUNTMAX_RX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAMPLECOUNTMAX_RX}] ${MODELPARAM_VALUE.SAMPLECOUNTMAX_RX}
}

proc update_MODELPARAM_VALUE.SAMPLECOUNTMAX_TX { MODELPARAM_VALUE.SAMPLECOUNTMAX_TX PARAM_VALUE.SAMPLECOUNTMAX_TX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAMPLECOUNTMAX_TX}] ${MODELPARAM_VALUE.SAMPLECOUNTMAX_TX}
}

proc update_MODELPARAM_VALUE.RAMDEPTH { MODELPARAM_VALUE.RAMDEPTH PARAM_VALUE.RAMDEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAMDEPTH}] ${MODELPARAM_VALUE.RAMDEPTH}
}

proc update_MODELPARAM_VALUE.ADDRS_WIDTH { MODELPARAM_VALUE.ADDRS_WIDTH PARAM_VALUE.ADDRS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDRS_WIDTH}] ${MODELPARAM_VALUE.ADDRS_WIDTH}
}

