transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" -l xpm -l xil_defaultlib \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" -l xpm -l xil_defaultlib \
"../../../bd/MB/ip/MB_uart_0_0/sim/MB_uart_0_0.v" \
"../../../bd/MB/ip/MB_clk_wiz_1/MB_clk_wiz_1_clk_wiz.v" \
"../../../bd/MB/ip/MB_clk_wiz_1/MB_clk_wiz_1.v" \
"../../../bd/MB/ip/MB_sha256_0_1/sim/MB_sha256_0_1.v" \
"../../../bd/MB/sim/MB.v" \

vlog -work xil_defaultlib \
"glbl.v"

