// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Apr 18 00:30:27 2025
// Host        : DESKTOP-R5RVK16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_sha256_0_1/MB_sha256_0_1_stub.v
// Design      : MB_sha256_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sha256,Vivado 2024.1" *)
module MB_sha256_0_1(clk, reset, start_hash, large_hash, start, 
  message_block, hash, hash_started, done)
/* synthesis syn_black_box black_box_pad_pin="reset,start_hash,large_hash,start,message_block[511:0],hash[255:0],hash_started,done" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input start_hash;
  input large_hash;
  input start;
  input [511:0]message_block;
  output [255:0]hash;
  output hash_started;
  output done;
endmodule
