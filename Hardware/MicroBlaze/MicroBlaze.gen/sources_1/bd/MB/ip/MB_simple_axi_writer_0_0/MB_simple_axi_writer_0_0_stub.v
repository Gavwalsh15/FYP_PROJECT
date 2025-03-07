// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Fri Mar  7 16:13:16 2025
// Host        : DESKTOP-R5RVK16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_simple_axi_writer_0_0/MB_simple_axi_writer_0_0_stub.v
// Design      : MB_simple_axi_writer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "simple_axi_writer,Vivado 2024.1.2" *)
module MB_simple_axi_writer_0_0(GPIO_start, GPIO_complete, M_AXI_ACLK, 
  M_AXI_ARESETN, M_AXI_WDATA, M_AXI_WSTRB, M_AXI_AWADDR, M_AXI_AWPROT, M_AXI_AWVALID, 
  M_AXI_AWREADY, M_AXI_WVALID, M_AXI_WREADY, M_AXI_BRESP, M_AXI_BVALID, M_AXI_BREADY, 
  M_AXI_ARADDR, M_AXI_ARPROT, M_AXI_ARVALID, M_AXI_ARREADY, M_AXI_RDATA, M_AXI_RRESP, 
  M_AXI_RVALID, M_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="GPIO_start[2:0],GPIO_complete,M_AXI_ARESETN,M_AXI_WDATA[31:0],M_AXI_WSTRB[3:0],M_AXI_AWADDR[31:0],M_AXI_AWPROT[2:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WVALID,M_AXI_WREADY,M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARADDR[31:0],M_AXI_ARPROT[2:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RDATA[31:0],M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_RREADY" */
/* synthesis syn_force_seq_prim="M_AXI_ACLK" */;
  input [2:0]GPIO_start;
  output GPIO_complete;
  input M_AXI_ACLK /* synthesis syn_isclock = 1 */;
  input M_AXI_ARESETN;
  output [31:0]M_AXI_WDATA;
  output [3:0]M_AXI_WSTRB;
  output [31:0]M_AXI_AWADDR;
  output [2:0]M_AXI_AWPROT;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  input [1:0]M_AXI_BRESP;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  output [31:0]M_AXI_ARADDR;
  output [2:0]M_AXI_ARPROT;
  output M_AXI_ARVALID;
  input M_AXI_ARREADY;
  input [31:0]M_AXI_RDATA;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RVALID;
  output M_AXI_RREADY;
endmodule
