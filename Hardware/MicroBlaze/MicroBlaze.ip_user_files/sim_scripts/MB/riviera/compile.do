transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_26
vlib riviera/xil_defaultlib
vlib riviera/axi_bram_ctrl_v4_1_10
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/axi_intc_v4_1_19
vlib riviera/lib_cdc_v1_0_3
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_34
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_uartlite_v2_0_36
vlib riviera/xlconstant_v1_1_9
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/smartconnect_v1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_32
vlib riviera/axi_vip_v1_1_18
vlib riviera/microblaze_v11_0_13
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_24

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_26 riviera/mdm_v3_2_26
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_bram_ctrl_v4_1_10 riviera/axi_bram_ctrl_v4_1_10
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap axi_intc_v4_1_19 riviera/axi_intc_v4_1_19
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_34 riviera/axi_gpio_v2_0_34
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_36 riviera/axi_uartlite_v2_0_36
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_32 riviera/axi_register_slice_v2_1_32
vmap axi_vip_v1_1_18 riviera/axi_vip_v1_1_18
vmap microblaze_v11_0_13 riviera/microblaze_v11_0_13
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 riviera/lmb_bram_if_cntlr_v4_0_24

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../MicroBlaze.srcs/sources_1/bd/MB/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_26 -93  -incr \
"../../../../MicroBlaze.srcs/sources_1/bd/MB/ipshared/feb7/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_mdm_1_5/sim/MB_mdm_1_5.vhd" \

vcom -work axi_bram_ctrl_v4_1_10 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/14fa/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_axi_bram_ctrl_0_3/sim/MB_axi_bram_ctrl_0_3.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_bram_ctrl_0_bram_2/sim/MB_axi_bram_ctrl_0_bram_2.v" \

vcom -work axi_intc_v4_1_19 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/558f/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_axi_intc_0_0/sim/MB_axi_intc_0_0.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_34 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/376d/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_axi_gpio_1_0/sim/MB_axi_gpio_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_simple_axi_writer_0_0/sim/MB_simple_axi_writer_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_axi_gpio_0_0/sim/MB_axi_gpio_0_0.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_36 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0cb/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_axi_uartlite_0_1/sim/MB_axi_uartlite_0_1.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/sim/bd_c147.v" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_0/sim/bd_c147_one_0.v" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_1/sim/bd_c147_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_2/sim/bd_c147_arinsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_3/sim/bd_c147_rinsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_4/sim/bd_c147_awinsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_5/sim/bd_c147_winsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_6/sim/bd_c147_binsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_7/sim/bd_c147_aroutsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_8/sim/bd_c147_routsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_9/sim/bd_c147_awoutsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_10/sim/bd_c147_woutsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_11/sim/bd_c147_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_12/sim/bd_c147_arni_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_13/sim/bd_c147_rni_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_14/sim/bd_c147_awni_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_15/sim/bd_c147_wni_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_16/sim/bd_c147_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_17/sim/bd_c147_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_18/sim/bd_c147_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_19/sim/bd_c147_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_20/sim/bd_c147_s00a2s_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_21/sim/bd_c147_sarn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_22/sim/bd_c147_srn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_23/sim/bd_c147_sawn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_24/sim/bd_c147_swn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_25/sim/bd_c147_sbn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_26/sim/bd_c147_s01mmu_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_27/sim/bd_c147_s01tr_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_28/sim/bd_c147_s01sic_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_29/sim/bd_c147_s01a2s_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_30/sim/bd_c147_sarn_1.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_31/sim/bd_c147_srn_1.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_32/sim/bd_c147_sawn_1.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_33/sim/bd_c147_swn_1.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_34/sim/bd_c147_sbn_1.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_35/sim/bd_c147_m00s2a_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_36/sim/bd_c147_m00arn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_37/sim/bd_c147_m00rn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_38/sim/bd_c147_m00awn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_39/sim/bd_c147_m00wn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_40/sim/bd_c147_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_41/sim/bd_c147_m00e_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_42/sim/bd_c147_m01s2a_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_43/sim/bd_c147_m01arn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_44/sim/bd_c147_m01rn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_45/sim/bd_c147_m01awn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_46/sim/bd_c147_m01wn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_47/sim/bd_c147_m01bn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_48/sim/bd_c147_m01e_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_49/sim/bd_c147_m02s2a_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_50/sim/bd_c147_m02arn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_51/sim/bd_c147_m02rn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_52/sim/bd_c147_m02awn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_53/sim/bd_c147_m02wn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_54/sim/bd_c147_m02bn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_55/sim/bd_c147_m02e_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_56/sim/bd_c147_m03s2a_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_57/sim/bd_c147_m03arn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_58/sim/bd_c147_m03rn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_59/sim/bd_c147_m03awn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_60/sim/bd_c147_m03wn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_61/sim/bd_c147_m03bn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_62/sim/bd_c147_m03e_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_63/sim/bd_c147_m04s2a_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_64/sim/bd_c147_m04arn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_65/sim/bd_c147_m04rn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_66/sim/bd_c147_m04awn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_67/sim/bd_c147_m04wn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_68/sim/bd_c147_m04bn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_3/bd_0/ip/ip_69/sim/bd_c147_m04e_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_32  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/676c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_18  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/1f8d/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_axi_smc_3/sim/MB_axi_smc_3.v" \

vcom -work microblaze_v11_0_13 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_microblaze_0_6/sim/MB_microblaze_0_6.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_dlmb_v10_8/sim/MB_dlmb_v10_8.vhd" \
"../../../bd/MB/ip/MB_ilmb_v10_8/sim/MB_ilmb_v10_8.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24 -93  -incr \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_dlmb_bram_if_cntlr_8/sim/MB_dlmb_bram_if_cntlr_8.vhd" \
"../../../bd/MB/ip/MB_ilmb_bram_if_cntlr_8/sim/MB_ilmb_bram_if_cntlr_8.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l axi_intc_v4_1_19 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_34 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_36 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_32 -l axi_vip_v1_1_18 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 \
"../../../bd/MB/ip/MB_lmb_bram_8/sim/MB_lmb_bram_8.v" \
"../../../bd/MB/sim/MB.v" \
"../../../bd/MB/ip/MB_clk_wiz_0_2/MB_clk_wiz_0_2_clk_wiz.v" \
"../../../bd/MB/ip/MB_clk_wiz_0_2/MB_clk_wiz_0_2.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MB/ip/MB_rst_clk_wiz_0_50M_0/sim/MB_rst_clk_wiz_0_50M_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

