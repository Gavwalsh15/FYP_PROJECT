// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Nov  9 12:45:24 2024
// Host        : DESKTOP-VANOK20 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_axi_bram_ctrl_0_bram_2/MB_axi_bram_ctrl_0_bram_2_sim_netlist.v
// Design      : MB_axi_bram_ctrl_0_bram_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MB_axi_bram_ctrl_0_bram_2,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module MB_axi_bram_ctrl_0_bram_2
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "MB_axi_bram_ctrl_0_bram_2.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  MB_axi_bram_ctrl_0_bram_2_blk_mem_gen_v8_4_8 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59936)
`pragma protect data_block
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
tiPTuL1ayPE5LMlObXltrjSmMQ49PjUb1zINK6Q=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
