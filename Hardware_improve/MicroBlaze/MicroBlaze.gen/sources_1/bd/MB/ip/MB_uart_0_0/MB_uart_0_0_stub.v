// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Apr 18 15:52:43 2025
// Host        : DESKTOP-R5RVK16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_uart_0_0/MB_uart_0_0_stub.v
// Design      : MB_uart_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart,Vivado 2024.1" *)
module MB_uart_0_0(clk, reset, rx, tx, message_block, message_ready, 
  single_hash, large_hash, byte_count)
/* synthesis syn_black_box black_box_pad_pin="reset,rx,tx,message_block[511:0],message_ready,single_hash,large_hash,byte_count[8:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input rx;
  output tx;
  output [511:0]message_block;
  output message_ready;
  output single_hash;
  output large_hash;
  output [8:0]byte_count;
endmodule
