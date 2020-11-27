# User config
set ::env(DESIGN_NAME) logo_test

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(MACRO_PLACEMENT_CFG) $::env(DESIGN_DIR)/macro_placement.cfg
set ::env(PDN_CFG) $::env(DESIGN_DIR)/pdn.tcl

# turn off clock
#set ::env(CLOCK_TREE_SYNTH) 0
#set ::env(CLOCK_PORT) ""
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 1500 1500"

# set ::env(CLOCK_PERIOD) "100"
# set ::env(CLOCK_PORT) "clk"

# set ::env(FP_CORE_UTIL) 5;
# set ::env(PL_TARGET_DENSITY) 0.01


set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

set ::env(EXTRA_LEFS) [glob $::env(DESIGN_DIR)/macros/lef/*.lef]
set ::env(EXTRA_GDS_FILES) [glob $::env(DESIGN_DIR)/macros/gds/*.gds]
