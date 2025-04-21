//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sat Apr 19 18:41:29 2025
//Host        : DESKTOP-R5RVK16 running 64-bit major release  (build 9200)
//Command     : generate_target MB_wrapper.bd
//Design      : MB_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MB_wrapper
   (reset,
    rx_0,
    sys_clock,
    tx_0);
  input reset;
  input rx_0;
  input sys_clock;
  output tx_0;

  wire reset;
  wire rx_0;
  wire sys_clock;
  wire tx_0;

  MB MB_i
       (.reset(reset),
        .rx_0(rx_0),
        .sys_clock(sys_clock),
        .tx_0(tx_0));
endmodule
