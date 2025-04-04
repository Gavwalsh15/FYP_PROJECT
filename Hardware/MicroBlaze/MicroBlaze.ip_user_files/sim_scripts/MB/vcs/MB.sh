#!/bin/bash -f
#**********************************************************************************************************
# Vivado (TM) v2024.1.2 (64-bit)
#
# Script generated by Vivado on Fri Mar 21 12:30:58 +0000 2025
# SW Build 5164865 on Thu Sep  5 14:37:11 MDT 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved. 
#
# Filename     : MB.sh
# Simulator    : Synopsys Verilog Compiler Simulator
# Description  : Simulation script generated by export_simulation Tcl command
# Purpose      : Run 'compile', 'elaborate', 'simulate' steps for compiling, elaborating and simulating the
#                design. The script will copy the library mapping file from the compiled library directory,
#                create design library directories and library mappings in the mapping file.
#
# Usage        : MB.sh
#                MB.sh [-lib_map_path] [-step] [-keep_index] [-noclean_files]*
#                MB.sh [-reset_run]
#                MB.sh [-reset_log]
#                MB.sh [-help]
#
#               * The -noclean_files switch is deprecated and will not peform any function (by default, the
#                 simulator generated files will not be removed unless -reset_run switch is used)
#
# Prerequisite : Before running export_simulation, you must first compile the AMD simulation library
#                using the 'compile_simlib' Tcl command (for more information, run 'compile_simlib -help'
#                command in the Vivado Tcl shell). After compiling the library, specify the -lib_map_path
#                switch with the directory path where the library is created while generating the script
#                with export_simulation.
#
#                Alternatively, you can set the library path by setting the following project property:-
#
#                 set_property compxlib.<simulator>_compiled_library_dir <path> [current_project]
#
#                You can also point to the simulation library by either setting the 'lib_map_path' global
#                variable in this script or specify it with the '-lib_map_path' switch while executing this
#                script (type 'MB.sh -help' for more information).
#
#                Note: For pure RTL based designs, the -lib_map_path switch can be specified later with the
#                generated script, but if design is targetted for system simulation containing SystemC/C++/C
#                sources, then the library path MUST be specified upfront when calling export_simulation.
#
#                For more information, refer 'Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#**********************************************************************************************************

# catch pipeline exit status
set -Eeuo pipefail

# set vhdlan compile options
vhdlan_opts="-full64 -l .tmp_log"

# set vlogan compile options
vlogan_opts="-full64 -l .tmp_log"

# set vcs elaboration options
vcs_elab_opts="-full64 -t ps -licqueue -l elaborate.log"

# set vcs simulation options
vcs_sim_opts="-ucli -licqueue -l simulate.log "

# set design libraries
design_libs=(xilinx_vip xpm axi_lite_ipif_v3_0_4 mdm_v3_2_26 xil_defaultlib axi_bram_ctrl_v4_1_10 blk_mem_gen_v8_4_8 lib_cdc_v1_0_3 interrupt_control_v3_1_5 axi_gpio_v2_0_34 lib_pkg_v1_0_4 lib_srl_fifo_v1_0_4 axi_uartlite_v2_0_36 microblaze_v11_0_13 lmb_v10_v3_0_14 lmb_bram_if_cntlr_v4_0_24 proc_sys_reset_v5_0_15 xlconstant_v1_1_9 smartconnect_v1_0 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_32 axi_vip_v1_1_18)

# simulation root library directory
sim_lib_dir="vcs_lib"

# script info
echo -e "MB.sh - Script generated by export_simulation (Vivado v2024.1.2 (64-bit)-id)\n"

# main steps
run()
{
  check_args $*
  setup
  if [[ ($b_step == 1) ]]; then
    case $step in
      "compile" )
       init_lib
       compile
      ;;
      "elaborate" )
       elaborate
      ;;
      "simulate" )
       simulate
      ;;
      * )
        echo -e "ERROR: Invalid or missing step '$step' (type \"./MB.sh -help\" for more information)\n"
        exit 1
      esac
  else
    init_lib
    compile
    elaborate
    simulate
  fi
}

# RUN_STEP: <compile>
compile()
{
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee compile.log; cat .tmp_log > vlogan.log 2>/dev/null

  vlogan -work xpm $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work xpm $vhdlan_opts \
  "C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log > vhdlan.log 2>/dev/null

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
  "../../../../MicroBlaze.srcs/sources_1/bd/MB/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work mdm_v3_2_26 $vhdlan_opts \
  "../../../../MicroBlaze.srcs/sources_1/bd/MB/ipshared/feb7/hdl/mdm_v3_2_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/MB/ip/MB_mdm_1_5/sim/MB_mdm_1_5.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_bram_ctrl_v4_1_10 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/14fa/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/MB/ip/MB_axi_bram_ctrl_0_3/sim/MB_axi_bram_ctrl_0_3.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work blk_mem_gen_v8_4_8 $vlogan_opts +v2k +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_bram_ctrl_0_bram_2/sim/MB_axi_bram_ctrl_0_bram_2.v" \
  "../../../bd/MB/ip/MB_simple_axi_writer_0_0/sim/MB_simple_axi_writer_0_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work lib_cdc_v1_0_3 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work interrupt_control_v3_1_5 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_gpio_v2_0_34 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/376d/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/MB/ip/MB_axi_gpio_0_0/sim/MB_axi_gpio_0_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work lib_pkg_v1_0_4 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work lib_srl_fifo_v1_0_4 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_uartlite_v2_0_36 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0cb/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/MB/ip/MB_axi_uartlite_0_1/sim/MB_axi_uartlite_0_1.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work microblaze_v11_0_13 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/MB/ip/MB_microblaze_0_6/sim/MB_microblaze_0_6.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work lmb_v10_v3_0_14 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/MB/ip/MB_dlmb_v10_8/sim/MB_dlmb_v10_8.vhd" \
  "../../../bd/MB/ip/MB_ilmb_v10_8/sim/MB_ilmb_v10_8.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work lmb_bram_if_cntlr_v4_0_24 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/MB/ip/MB_dlmb_bram_if_cntlr_8/sim/MB_dlmb_bram_if_cntlr_8.vhd" \
  "../../../bd/MB/ip/MB_ilmb_bram_if_cntlr_8/sim/MB_ilmb_bram_if_cntlr_8.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_lmb_bram_8/sim/MB_lmb_bram_8.v" \
  "../../../bd/MB/ip/MB_clk_wiz_0_2/MB_clk_wiz_0_2_clk_wiz.v" \
  "../../../bd/MB/ip/MB_clk_wiz_0_2/MB_clk_wiz_0_2.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work proc_sys_reset_v5_0_15 $vhdlan_opts \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/MB/ip/MB_rst_clk_wiz_0_50M_0/sim/MB_rst_clk_wiz_0_50M_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/sim/bd_0306.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xlconstant_v1_1_9 $vlogan_opts +v2k +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_0/sim/bd_0306_one_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_1/sim/bd_0306_psr_aclk_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_2/sim/bd_0306_arinsw_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_3/sim/bd_0306_rinsw_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_4/sim/bd_0306_awinsw_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_5/sim/bd_0306_winsw_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_6/sim/bd_0306_binsw_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_7/sim/bd_0306_aroutsw_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_8/sim/bd_0306_routsw_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_9/sim/bd_0306_awoutsw_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_10/sim/bd_0306_woutsw_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_11/sim/bd_0306_boutsw_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_12/sim/bd_0306_arni_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_13/sim/bd_0306_rni_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_14/sim/bd_0306_awni_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_15/sim/bd_0306_wni_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_16/sim/bd_0306_bni_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_17/sim/bd_0306_s00mmu_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_18/sim/bd_0306_s00tr_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_19/sim/bd_0306_s00sic_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_20/sim/bd_0306_s00a2s_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_21/sim/bd_0306_sarn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_22/sim/bd_0306_srn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_23/sim/bd_0306_sawn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_24/sim/bd_0306_swn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_25/sim/bd_0306_sbn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_26/sim/bd_0306_s01mmu_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_27/sim/bd_0306_s01tr_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_28/sim/bd_0306_s01sic_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_29/sim/bd_0306_s01a2s_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_30/sim/bd_0306_sarn_1.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_31/sim/bd_0306_srn_1.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_32/sim/bd_0306_sawn_1.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_33/sim/bd_0306_swn_1.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_34/sim/bd_0306_sbn_1.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_35/sim/bd_0306_m00s2a_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_36/sim/bd_0306_m00arn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_37/sim/bd_0306_m00rn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_38/sim/bd_0306_m00awn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_39/sim/bd_0306_m00wn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_40/sim/bd_0306_m00bn_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work smartconnect_v1_0 $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_41/sim/bd_0306_m00e_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_42/sim/bd_0306_m01s2a_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_43/sim/bd_0306_m01arn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_44/sim/bd_0306_m01rn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_45/sim/bd_0306_m01awn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_46/sim/bd_0306_m01wn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_47/sim/bd_0306_m01bn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_48/sim/bd_0306_m01e_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_49/sim/bd_0306_m02s2a_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_50/sim/bd_0306_m02arn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_51/sim/bd_0306_m02rn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_52/sim/bd_0306_m02awn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_53/sim/bd_0306_m02wn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_54/sim/bd_0306_m02bn_0.sv" \
  "../../../bd/MB/ip/MB_axi_smc_4/bd_0/ip/ip_55/sim/bd_0306_m02e_0.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_register_slice_v2_1_32 $vlogan_opts +v2k +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/676c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_vip_v1_1_18 $vlogan_opts -sverilog +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/1f8d/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" +incdir+"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/MB/ip/MB_axi_smc_4/sim/MB_axi_smc_4.v" \
  "../../../bd/MB/sim/MB.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
  glbl.v \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null
}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.MB xil_defaultlib.glbl -o MB_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./MB_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  # delete previous files for a clean rerun
  if [[ ($b_reset_run == 1) ]]; then
    reset_run
    echo -e "INFO: Simulation run files deleted.\n"
    exit 0
  fi

 # delete previous log files
  if [[ ($b_reset_log == 1) ]]; then
    reset_log
    echo -e "INFO: Simulation run log files deleted.\n"
    exit 0
  fi

  # add any setup/initialization commands here:-

  # <user specific commands>

}

# simulator index file/library directory processing
init_lib()
{
  if [[ ($b_keep_index == 1) ]]; then
    # keep previous design library mappings
    true
  else
    # define design library mappings
    create_lib_mappings
  fi

  if [[ ($b_keep_index == 1) ]]; then
    # do not recreate design library directories
    true
  else
    # create design library directories
    create_lib_dir
  fi
}

# define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($lib_map_path == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file


  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# create design library directory
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi
  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key MB_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .tmp_log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log lib_sc.so 64 AN.DB csrc MB_simv.daidir vcs_lib c.obj)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# delete generated log files from the previous run
reset_log()
{
  files_to_remove=(vlogan.log vhdlan.log compile.log elaborate.log simulate.log .tmp_log)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# check switch argument value
check_arg_value()
{
  if [[ ($1 == "-step") && (($2 != "compile") && ($2 != "elaborate") && ($2 != "simulate")) ]];then
    echo -e "ERROR: Invalid or missing step '$2' (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($1 == "-lib_map_path") && ($2 == "") ]];then
    echo -e "ERROR: Simulation library directory path not specified (type \"./MB.sh -help\" for more information)\n"
    exit 1
  fi
}

# check command line arguments
check_args()
{
  arg_count=$#
  if [[ ("$#" == 1) && (("$1" == "-help") || ("$1" == "-h")) ]]; then
    usage
  fi
  while [[ "$#" -gt 0 ]]; do
    case $1 in
      -step)          check_arg_value $1 $2;step=$2;         b_step=1;         shift;;
      -lib_map_path)  check_arg_value $1 $2;lib_map_path=$2; b_lib_map_path=1; shift;;
      -gen_bypass)    b_gen_bypass=1    ;;
      -reset_run)     b_reset_run=1     ;;
      -reset_log)     b_reset_log=1     ;;
      -keep_index)    b_keep_index=1    ;;
      -noclean_files) b_noclean_files=1 ;;
      -help|-h)       ;;
      *) echo -e "ERROR: Invalid option specified '$1' (type "./top.sh -help" for more information)\n"; exit 1 ;;
    esac
     shift
  done

  # -reset_run is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_run == 1) ]]; then
    echo -e "ERROR: -reset_run switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -reset_log is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_log == 1) ]]; then
    echo -e "ERROR: -reset_log switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -keep_index is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_keep_index == 1) ]]; then
    echo -e "ERROR: -keep_index switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -noclean_files is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_noclean_files == 1) ]]; then
    echo -e "ERROR: -noclean_files switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi
}

# script usage
usage()
{
  msg="Usage: MB.sh [-help]\n\
Usage: MB.sh [-step]\n\
Usage: MB.sh [-lib_map_path]\n\
Usage: MB.sh [-reset_run]\n\
Usage: MB.sh [-reset_log]\n\
Usage: MB.sh [-keep_index]\n\
Usage: MB.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-step <name>] -- Execute specified step (compile, elaborate, simulate)\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Delete simulator generated data files from the previous run and recreate simulator setup\n\
file/library mappings for a clean run. This switch will not execute steps defined in the script.\n\n\
NOTE: To keep simulator index file settings from the previous run, use the -keep_index switch\n\
NOTE: To regenerate simulator index file but keep the simulator generated files, use the -noclean_files switch\n\n\
[-reset_log] -- Delete simulator generated log files from the previous run\n\n\
[-keep_index] -- Keep simulator index file settings from the previous run\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run\n"
  echo -e $msg
  exit 0
}

# initialize globals
step=""
lib_map_path=""
b_step=0
b_lib_map_path=0
b_gen_bypass=0
b_reset_run=0
b_reset_log=0
b_keep_index=0
b_noclean_files=0

# launch script
run $*
