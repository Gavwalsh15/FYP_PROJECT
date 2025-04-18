//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Fri Apr 18 15:52:05 2025
//Host        : DESKTOP-R5RVK16 running 64-bit major release  (build 9200)
//Command     : generate_target MB.bd
//Design      : MB
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MB,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MB,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=59,da_board_cnt=30,da_bram_cntlr_cnt=17,da_clkrst_cnt=27,da_mb_cnt=22,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "MB.hwdef" *) 
module MB
   (reset,
    rx_0,
    sys_clock,
    tx_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  input rx_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN MB_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;
  output tx_0;

  wire clk_wiz_clk_out1;
  wire reset_1;
  wire rx_0_1;
  wire sha256_0_done;
  wire [255:0]sha256_0_hash;
  wire sys_clock_1;
  wire uart_0_large_hash;
  wire [511:0]uart_0_message_block;
  wire uart_0_message_ready;
  wire uart_0_single_hash;
  wire uart_0_tx;

  assign reset_1 = reset;
  assign rx_0_1 = rx_0;
  assign sys_clock_1 = sys_clock;
  assign tx_0 = uart_0_tx;
  MB_clk_wiz_1 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .reset(reset_1));
  MB_sha256_0_1 sha256_0
       (.clk(clk_wiz_clk_out1),
        .done(sha256_0_done),
        .hash(sha256_0_hash),
        .large_hash(uart_0_large_hash),
        .message_block(uart_0_message_block),
        .reset(reset_1),
        .start(uart_0_message_ready),
        .start_hash(uart_0_single_hash));
  MB_uart_0_0 uart_0
       (.clk(clk_wiz_clk_out1),
        .large_hash(uart_0_large_hash),
        .message_block(uart_0_message_block),
        .message_ready(uart_0_message_ready),
        .reset(reset_1),
        .rx(rx_0_1),
        .single_hash(uart_0_single_hash),
        .tx(uart_0_tx));
endmodule
