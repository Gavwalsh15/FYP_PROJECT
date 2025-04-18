vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" \
"../../../bd/MB/ip/MB_uart_0_0/sim/MB_uart_0_0.v" \
"../../../bd/MB/ip/MB_clk_wiz_1/MB_clk_wiz_1_clk_wiz.v" \
"../../../bd/MB/ip/MB_clk_wiz_1/MB_clk_wiz_1.v" \
"../../../bd/MB/ip/MB_sha256_0_1/sim/MB_sha256_0_1.v" \
"../../../bd/MB/sim/MB.v" \

vlog -work xil_defaultlib \
"glbl.v"

