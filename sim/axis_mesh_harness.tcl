----------------------------------------
# TOP-LEVEL TEMPLATE - BEGIN
#
# QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# construct paths to the files required to simulate the IP in your Quartus
# project. By default, the IP script assumes that you are launching the
# simulator from the IP script location. If launching from another
# location, set QSYS_SIMDIR to the output directory you specified when you
# generated the IP script, relative to the directory from which you launch
# the simulator.
#
set QSYS_SIMDIR /home/sobla/workspace/noc/rtl/sim/
#
# Source the generated IP simulation script.
source $QSYS_SIMDIR/mentor/msim_setup.tcl
#
# Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
#
# Call command to compile the Quartus EDA simulation library.
# dev_com
#
# Call command to compile the Quartus-generated IP simulation files.
# com
#
# Add commands to compile all design files and testbench files, including
# the top level. (These are all the files required for simulation other
# than the files compiled by the Quartus-generated IP simulation script)
#
vlog +acc $QSYS_SIMDIR/../testbench/axis_mesh_harness_tb.sv $QSYS_SIMDIR/../*sv $QSYS_SIMDIR/../test_harness/*sv
#
# Set the top-level simulation or testbench module/entity name, which is
# used by the elab command to elaborate the top level.
#
set TOP_LEVEL_NAME axis_mesh_harness_tb
#
# Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
#
# Call command to elaborate your design and testbench.
elab_debug
#
add wave -position insertpoint  \
sim:/axis_mesh_harness_tb/ticks \
sim:/axis_mesh_harness_tb/axis_in_tvalid \
sim:/axis_mesh_harness_tb/axis_in_tready \
sim:/axis_mesh_harness_tb/axis_in_tdata \
sim:/axis_mesh_harness_tb/axis_in_tlast \
sim:/axis_mesh_harness_tb/axis_in_tdest \
sim:/axis_mesh_harness_tb/axis_in_tid \
sim:/axis_mesh_harness_tb/axis_out_tvalid \
sim:/axis_mesh_harness_tb/axis_out_tready \
sim:/axis_mesh_harness_tb/axis_out_tdata \
sim:/axis_mesh_harness_tb/axis_out_tlast \
sim:/axis_mesh_harness_tb/axis_out_tdest \
sim:/axis_mesh_harness_tb/axis_out_tid \
sim:/axis_mesh_harness_tb/done \
sim:/axis_mesh_harness_tb/sent_packets \
sim:/axis_mesh_harness_tb/recv_packets \
sim:/axis_mesh_harness_tb/error
add wave -position insertpoint  \
sim:/axis_mesh_harness_tb/clk \
sim:/axis_mesh_harness_tb/rst_n

add wave -position insertpoint  \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/clk} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/rst_n} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/data_in} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/dest_in} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/is_tail_in} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/send_in} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/credit_out} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/data_out} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/dest_out} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/is_tail_out} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/send_out} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/credit_in} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/route_table} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/route_table_out} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/route_table_select} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/receiving_packet} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/transiting_packet} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/dest_buffer_out} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/dest_buffer_empty} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/dest_buffer_rdreq} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/flit_buffer_out} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/flit_buffer_is_tail_out} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/flit_buffer_empty} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/flit_buffer_rdreq} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/flit_buffer_valid} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/request} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/hold} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/grant} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/grant_mask} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/flit_reg0} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/flit_reg0_valid} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/pipeline_enable} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/data_out_packed} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/flit_out_valid} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/data_out_reg} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/data_out_reg_valid} \
{sim:/axis_mesh_harness_tb/dut/noc/router_gen/for_rows[0]/for_cols[0]/router_inst/credit_counter}
# Run the simulation.
run -a
#
# Report success to the shell.
# exit -code 0
#
# TOP-LEVEL TEMPLATE - END