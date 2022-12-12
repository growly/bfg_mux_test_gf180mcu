set ::env(PDK) "gf180mcuC"
set ::env(STD_CELL_LIBRARY) "gf180mcu_fd_sc_mcu7t5v0"

set ::env(DESIGN_NAME) bfg_mux_test

set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$::env(DESIGN_DIR)/src/bfg_mux_test.v \
        $::env(DESIGN_DIR)/src/gf180_mux.v"

set ::env(EXTRA_LEFS) "$::env(DESIGN_DIR)/lef/gf180_mux.lef"

set ::env(EXTRA_GDS_FILES) "$::env(DESIGN_DIR)/gds/gf180_mux.gds"

set ::env(MACRO_PLACEMENT_CFG) "$::env(DESIGN_DIR)/macro_placement.cfg"

set ::env(MACRO_BLOCKAGES_LAYER) {}
set ::env(PL_MACRO_HALO) {10 10}
set ::env(PL_MACRO_CHANNEL) {10 10}

set ::env(DESIGN_IS_CORE) 0

set ::env(CLOCK_TREE_SYNTH) 0
set ::env(CLOCK_PORT) ""

#set ::env(PDN_CFG) "/dev/null"
set ::env(FP_PDN_CHECK_NODES) 0

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 150 100"

set ::env(FP_CORE_UTIL) 25

#set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

set ::env(PL_SKIP_INITIAL_PLACEMENT) 0
set ::env(PL_RANDOM_GLB_PLACEMENT) 1
set ::env(PL_BASIC_PLACEMENT) 1
set ::env(PL_TARGET_DENSITY) 0.49

set ::env(SYNTH_MAX_FANOUT) 4

# Maximum layer used for routing is metal 4.
# This is because this macro will be inserted in a top level (user_project_wrapper) 
# where the PDN is planned on metal 5. So, to avoid having shorts between routes
# in this macro and the top level metal 5 stripes, we have to restrict routes to metal4.  
# 
set ::env(RT_MAX_LAYER) {Metal4}
set ::env(GRT_ALLOW_CONGESTION) 1

# You can draw more power domains if you need to 
set ::env(VDD_NETS) [list {vdd}]
set ::env(GND_NETS) [list {vss}]

set ::env(DIODE_INSERTION_STRATEGY) 4 
# If you're going to use multiple power domains, then disable cvc run.
set ::env(RUN_CVC) 1
