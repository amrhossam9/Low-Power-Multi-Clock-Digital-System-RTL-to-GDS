
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#1. Master Clocks UART_CLK
set REF_CLK_NAME REF_CLK
set REF_CLK_PER 10
set UART_CLK_NAME UART_CLK
set UART_CLK_PER 271.26
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1

create_clock -name $REF_CLK_NAME -period $REF_CLK_PER -waveform "0 [expr $REF_CLK_PER/2]" [get_ports REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $REF_CLK_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $REF_CLK_NAME]

create_clock -name $UART_CLK_NAME -period $UART_CLK_PER -waveform "0 [expr $UART_CLK_PER/2]" [get_ports UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $UART_CLK_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $UART_CLK_NAME]

#2. Generated clocks

create_generated_clock -master_clock $UART_CLK_NAME -source [get_ports UART_CLK] \
                       -name "RX_CLK" [get_port ClkDiv_RX_BLOCK/O_div_clk] \
                       -divide_by 1

create_generated_clock -master_clock $UART_CLK_NAME -source [get_ports UART_CLK] \
                       -name "TX_CLK" [get_port ClkDiv_TX_BLOCK/O_div_clk] \
                       -divide_by 32

create_generated_clock -master_clock $REF_CLK_NAME -source [get_ports REF_CLK] \
                       -name "ALU_CLK" [get_port CLK_GATE_BLOCK/GATED_CLK] \
                       -divide_by 1

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks RX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks RX_CLK]

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks TX_CLK]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW  [get_clocks TX_CLK]

set DFT_CLK_NAME scan_clk
set DFT_CLK_PER 10000
set DFT_CLK_SETUP_SKEW 0.025
set DFT_CLK_HOLD_SKEW 0.01

create_clock -name $DFT_CLK_NAME -period $DFT_CLK_PER -waveform "0 [expr $DFT_CLK_PER/2]" [get_ports scan_clk]
set_clock_uncertainty -setup $DFT_CLK_SETUP_SKEW [get_clocks $DFT_CLK_NAME]
set_clock_uncertainty -hold $DFT_CLK_HOLD_SKEW  [get_clocks $DFT_CLK_NAME]	

####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks "REF_CLK ALU_CLK"]  \
                               -group [get_clocks "UART_CLK TX_CLK RX_CLK"] \
                               -group [get_clocks "scan_clk"]

####################################################################################
           #########################################################
             #### Section 3 : #set input/output delay on ports ####
           #########################################################
####################################################################################

set in1_delay  [expr 0.2*$UART_CLK_PER]
set out1_delay [expr 0.2*$UART_CLK_PER]
set out2_delay [expr 0.2*$UART_CLK_PER]

set_input_delay $in1_delay -clock "$UART_CLK_NAME" [get_port UART_RX_IN]

#Constrain Output Paths

set_output_delay $out2_delay -clock "TX_CLK" [get_port UART_TX_O]
set_output_delay $out1_delay -clock "RX_CLK" [get_port parity_error]
set_output_delay $out1_delay -clock "RX_CLK" [get_port framing_error]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port UART_RX_IN]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.5 [get_port UART_TX_O]
set_load 0.5 [get_port parity_error]
set_load 0.5 [get_port framing_error]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 8 : set_case_analysis ####
           #########################################################
####################################################################################

set_case_analysis 0 [get_port test_mode]

####################################################################################

