# User config
set ::env(DESIGN_NAME) logo_test

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(MACRO_PLACEMENT_CFG) $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/macro_placement.cfg

# turn off clock
set ::env(CLOCK_TREE_SYNTH) 0
set ::env(CLOCK_PORT) ""

set ::env(FP_CORE_UTIL) 5;                                                                   
set ::env(PL_TARGET_DENSITY) 0.5 


set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

