## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
#set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]


## Switches
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports {sw[0]}]
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports {sw[1]}]
#set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports {sw[2]}]
#set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports {sw[3]}]
#set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports {sw[4]}]
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports {sw[5]}]
#set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports {sw[6]}]
#set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports {sw[7]}]
#set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVCMOS33 } [get_ports {sw[8]}]
#set_property -dict { PACKAGE_PIN T3    IOSTANDARD LVCMOS33 } [get_ports {sw[9]}]
#set_property -dict { PACKAGE_PIN T2    IOSTANDARD LVCMOS33 } [get_ports {sw[10]}]
#set_property -dict { PACKAGE_PIN R3    IOSTANDARD LVCMOS33 } [get_ports {sw[11]}]
#set_property -dict { PACKAGE_PIN W2    IOSTANDARD LVCMOS33 } [get_ports {sw[12]}]
#set_property -dict { PACKAGE_PIN U1    IOSTANDARD LVCMOS33 } [get_ports {sw[13]}]
#set_property -dict { PACKAGE_PIN T1    IOSTANDARD LVCMOS33 } [get_ports {sw[14]}]
#set_property -dict { PACKAGE_PIN R2    IOSTANDARD LVCMOS33 } [get_ports {sw[15]}]


## LEDs
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports {led[0]}]
#set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports {led[1]}]
#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports {led[2]}]
#set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports {led[3]}]
#set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports {led[4]}]
#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports {led[5]}]
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports {led[6]}]
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports {led[7]}]
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports {led[8]}]
#set_property -dict { PACKAGE_PIN V3    IOSTANDARD LVCMOS33 } [get_ports {led[9]}]
#set_property -dict { PACKAGE_PIN W3    IOSTANDARD LVCMOS33 } [get_ports {led[10]}]
#set_property -dict { PACKAGE_PIN U3    IOSTANDARD LVCMOS33 } [get_ports {led[11]}]
#set_property -dict { PACKAGE_PIN P3    IOSTANDARD LVCMOS33 } [get_ports {led[12]}]
#set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports {led[13]}]
#set_property -dict { PACKAGE_PIN P1    IOSTANDARD LVCMOS33 } [get_ports {led[14]}]
#set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports {led[15]}]


##7 Segment Display
#set_property -dict { PACKAGE_PIN W7   IOSTANDARD LVCMOS33 } [get_ports {seg[0]}]
#set_property -dict { PACKAGE_PIN W6   IOSTANDARD LVCMOS33 } [get_ports {seg[1]}]
#set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports {seg[2]}]
#set_property -dict { PACKAGE_PIN V8   IOSTANDARD LVCMOS33 } [get_ports {seg[3]}]
#set_property -dict { PACKAGE_PIN U5   IOSTANDARD LVCMOS33 } [get_ports {seg[4]}]
#set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports {seg[5]}]
#set_property -dict { PACKAGE_PIN U7   IOSTANDARD LVCMOS33 } [get_ports {seg[6]}]

#set_property -dict { PACKAGE_PIN V7   IOSTANDARD LVCMOS33 } [get_ports dp]

#set_property -dict { PACKAGE_PIN U2   IOSTANDARD LVCMOS33 } [get_ports {an[0]}]
#set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports {an[1]}]
#set_property -dict { PACKAGE_PIN V4   IOSTANDARD LVCMOS33 } [get_ports {an[2]}]
#set_property -dict { PACKAGE_PIN W4   IOSTANDARD LVCMOS33 } [get_ports {an[3]}]


##Buttons
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports btnC]
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports btnU]
#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports btnL]
#set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports btnR]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports btnD]


##Pmod Header JA
#set_property -dict { PACKAGE_PIN J1   IOSTANDARD LVCMOS33 } [get_ports {JA[0]}];#Sch name = JA1
#set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 } [get_ports {JA[1]}];#Sch name = JA2
#set_property -dict { PACKAGE_PIN J2   IOSTANDARD LVCMOS33 } [get_ports {JA[2]}];#Sch name = JA3
#set_property -dict { PACKAGE_PIN G2   IOSTANDARD LVCMOS33 } [get_ports {JA[3]}];#Sch name = JA4
#set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports {JA[4]}];#Sch name = JA7
#set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports {JA[5]}];#Sch name = JA8
#set_property -dict { PACKAGE_PIN H2   IOSTANDARD LVCMOS33 } [get_ports {JA[6]}];#Sch name = JA9
#set_property -dict { PACKAGE_PIN G3   IOSTANDARD LVCMOS33 } [get_ports {JA[7]}];#Sch name = JA10

##Pmod Header JB
#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports {JB[0]}];#Sch name = JB1
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports {JB[1]}];#Sch name = JB2
#set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports {JB[2]}];#Sch name = JB3
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports {JB[3]}];#Sch name = JB4
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports {JB[4]}];#Sch name = JB7
#set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports {JB[5]}];#Sch name = JB8
#set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports {JB[6]}];#Sch name = JB9
#set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports {JB[7]}];#Sch name = JB10

##Pmod Header JC
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports {JC[0]}];#Sch name = JC1
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports {JC[1]}];#Sch name = JC2
#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports {JC[2]}];#Sch name = JC3
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports {JC[3]}];#Sch name = JC4
#set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports {JC[4]}];#Sch name = JC7
#set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports {JC[5]}];#Sch name = JC8
#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports {JC[6]}];#Sch name = JC9
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports {JC[7]}];#Sch name = JC10

##Pmod Header JXADC
#set_property -dict { PACKAGE_PIN J3   IOSTANDARD LVCMOS33 } [get_ports {JXADC[0]}];#Sch name = XA1_P
#set_property -dict { PACKAGE_PIN L3   IOSTANDARD LVCMOS33 } [get_ports {JXADC[1]}];#Sch name = XA2_P
#set_property -dict { PACKAGE_PIN M2   IOSTANDARD LVCMOS33 } [get_ports {JXADC[2]}];#Sch name = XA3_P
#set_property -dict { PACKAGE_PIN N2   IOSTANDARD LVCMOS33 } [get_ports {JXADC[3]}];#Sch name = XA4_P
#set_property -dict { PACKAGE_PIN K3   IOSTANDARD LVCMOS33 } [get_ports {JXADC[4]}];#Sch name = XA1_N
#set_property -dict { PACKAGE_PIN M3   IOSTANDARD LVCMOS33 } [get_ports {JXADC[5]}];#Sch name = XA2_N
#set_property -dict { PACKAGE_PIN M1   IOSTANDARD LVCMOS33 } [get_ports {JXADC[6]}];#Sch name = XA3_N
#set_property -dict { PACKAGE_PIN N1   IOSTANDARD LVCMOS33 } [get_ports {JXADC[7]}];#Sch name = XA4_N


##VGA Connector
#set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports {vgaRed[0]}]
#set_property -dict { PACKAGE_PIN H19   IOSTANDARD LVCMOS33 } [get_ports {vgaRed[1]}]
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports {vgaRed[2]}]
#set_property -dict { PACKAGE_PIN N19   IOSTANDARD LVCMOS33 } [get_ports {vgaRed[3]}]
#set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports {vgaBlue[0]}]
#set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports {vgaBlue[1]}]
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports {vgaBlue[2]}]
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports {vgaBlue[3]}]
#set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports {vgaGreen[0]}]
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports {vgaGreen[1]}]
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports {vgaGreen[2]}]
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports {vgaGreen[3]}]
#set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports Hsync]
#set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports Vsync]


##USB-RS232 Interface
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports rx_0]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports tx_0]


##USB HID (PS/2)
#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33   PULLUP true } [get_ports PS2Clk]
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33   PULLUP true } [get_ports PS2Data]


##Quad SPI Flash
##Note that CCLK_0 cannot be placed in 7 series devices. You can access it using the
##STARTUPE2 primitive.
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports {QspiDB[0]}]
#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports {QspiDB[1]}]
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports {QspiDB[2]}]
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports {QspiDB[3]}]
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports QspiCSn]


## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## SPI configuration mode options for QSPI boot, can be used for all designs
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]





connect_debug_port u_ila_0/probe6 [get_nets [list MB_i/sha256_0/reset_hash]]


connect_debug_port u_ila_0/probe2 [get_nets [list {MB_i/uart_0/inst/byte_count[0]} {MB_i/uart_0/inst/byte_count[1]} {MB_i/uart_0/inst/byte_count[2]} {MB_i/uart_0/inst/byte_count[3]} {MB_i/uart_0/inst/byte_count[4]} {MB_i/uart_0/inst/byte_count[5]} {MB_i/uart_0/inst/byte_count[6]} {MB_i/uart_0/inst/byte_count[7]} {MB_i/uart_0/inst/byte_count[8]}]]





connect_debug_port u_ila_0/probe5 [get_nets [list MB_i/sha256_0/large_hash]]
connect_debug_port u_ila_0/probe6 [get_nets [list MB_i/uart_0/large_hash]]
connect_debug_port u_ila_0/probe7 [get_nets [list MB_i/uart_0/message_ready]]
connect_debug_port u_ila_0/probe8 [get_nets [list MB_i/uart_0/single_hash]]
connect_debug_port u_ila_0/probe9 [get_nets [list MB_i/sha256_0/start]]
connect_debug_port u_ila_0/probe10 [get_nets [list MB_i/sha256_0/start_hash]]









connect_debug_port u_ila_1/probe0 [get_nets [list {MB_i/uart_0/inst/tx_byte_count[0]} {MB_i/uart_0/inst/tx_byte_count[1]} {MB_i/uart_0/inst/tx_byte_count[2]} {MB_i/uart_0/inst/tx_byte_count[3]} {MB_i/uart_0/inst/tx_byte_count[4]} {MB_i/uart_0/inst/tx_byte_count[5]}]]


connect_debug_port u_ila_1/probe0 [get_nets [list MB_i/uart_0/inst/tx_byte_count]]


connect_debug_port u_ila_1/probe1 [get_nets [list {MB_i/uart_0/inst/tx_data[0]} {MB_i/uart_0/inst/tx_data[1]} {MB_i/uart_0/inst/tx_data[2]} {MB_i/uart_0/inst/tx_data[3]} {MB_i/uart_0/inst/tx_data[4]} {MB_i/uart_0/inst/tx_data[5]} {MB_i/uart_0/inst/tx_data[6]} {MB_i/uart_0/inst/tx_data[7]}]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list MB_i/clk_wiz/inst/clk_out1]]
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe0]
set_property port_width 256 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {MB_i/uart_0/hash[0]} {MB_i/uart_0/hash[1]} {MB_i/uart_0/hash[2]} {MB_i/uart_0/hash[3]} {MB_i/uart_0/hash[4]} {MB_i/uart_0/hash[5]} {MB_i/uart_0/hash[6]} {MB_i/uart_0/hash[7]} {MB_i/uart_0/hash[8]} {MB_i/uart_0/hash[9]} {MB_i/uart_0/hash[10]} {MB_i/uart_0/hash[11]} {MB_i/uart_0/hash[12]} {MB_i/uart_0/hash[13]} {MB_i/uart_0/hash[14]} {MB_i/uart_0/hash[15]} {MB_i/uart_0/hash[16]} {MB_i/uart_0/hash[17]} {MB_i/uart_0/hash[18]} {MB_i/uart_0/hash[19]} {MB_i/uart_0/hash[20]} {MB_i/uart_0/hash[21]} {MB_i/uart_0/hash[22]} {MB_i/uart_0/hash[23]} {MB_i/uart_0/hash[24]} {MB_i/uart_0/hash[25]} {MB_i/uart_0/hash[26]} {MB_i/uart_0/hash[27]} {MB_i/uart_0/hash[28]} {MB_i/uart_0/hash[29]} {MB_i/uart_0/hash[30]} {MB_i/uart_0/hash[31]} {MB_i/uart_0/hash[32]} {MB_i/uart_0/hash[33]} {MB_i/uart_0/hash[34]} {MB_i/uart_0/hash[35]} {MB_i/uart_0/hash[36]} {MB_i/uart_0/hash[37]} {MB_i/uart_0/hash[38]} {MB_i/uart_0/hash[39]} {MB_i/uart_0/hash[40]} {MB_i/uart_0/hash[41]} {MB_i/uart_0/hash[42]} {MB_i/uart_0/hash[43]} {MB_i/uart_0/hash[44]} {MB_i/uart_0/hash[45]} {MB_i/uart_0/hash[46]} {MB_i/uart_0/hash[47]} {MB_i/uart_0/hash[48]} {MB_i/uart_0/hash[49]} {MB_i/uart_0/hash[50]} {MB_i/uart_0/hash[51]} {MB_i/uart_0/hash[52]} {MB_i/uart_0/hash[53]} {MB_i/uart_0/hash[54]} {MB_i/uart_0/hash[55]} {MB_i/uart_0/hash[56]} {MB_i/uart_0/hash[57]} {MB_i/uart_0/hash[58]} {MB_i/uart_0/hash[59]} {MB_i/uart_0/hash[60]} {MB_i/uart_0/hash[61]} {MB_i/uart_0/hash[62]} {MB_i/uart_0/hash[63]} {MB_i/uart_0/hash[64]} {MB_i/uart_0/hash[65]} {MB_i/uart_0/hash[66]} {MB_i/uart_0/hash[67]} {MB_i/uart_0/hash[68]} {MB_i/uart_0/hash[69]} {MB_i/uart_0/hash[70]} {MB_i/uart_0/hash[71]} {MB_i/uart_0/hash[72]} {MB_i/uart_0/hash[73]} {MB_i/uart_0/hash[74]} {MB_i/uart_0/hash[75]} {MB_i/uart_0/hash[76]} {MB_i/uart_0/hash[77]} {MB_i/uart_0/hash[78]} {MB_i/uart_0/hash[79]} {MB_i/uart_0/hash[80]} {MB_i/uart_0/hash[81]} {MB_i/uart_0/hash[82]} {MB_i/uart_0/hash[83]} {MB_i/uart_0/hash[84]} {MB_i/uart_0/hash[85]} {MB_i/uart_0/hash[86]} {MB_i/uart_0/hash[87]} {MB_i/uart_0/hash[88]} {MB_i/uart_0/hash[89]} {MB_i/uart_0/hash[90]} {MB_i/uart_0/hash[91]} {MB_i/uart_0/hash[92]} {MB_i/uart_0/hash[93]} {MB_i/uart_0/hash[94]} {MB_i/uart_0/hash[95]} {MB_i/uart_0/hash[96]} {MB_i/uart_0/hash[97]} {MB_i/uart_0/hash[98]} {MB_i/uart_0/hash[99]} {MB_i/uart_0/hash[100]} {MB_i/uart_0/hash[101]} {MB_i/uart_0/hash[102]} {MB_i/uart_0/hash[103]} {MB_i/uart_0/hash[104]} {MB_i/uart_0/hash[105]} {MB_i/uart_0/hash[106]} {MB_i/uart_0/hash[107]} {MB_i/uart_0/hash[108]} {MB_i/uart_0/hash[109]} {MB_i/uart_0/hash[110]} {MB_i/uart_0/hash[111]} {MB_i/uart_0/hash[112]} {MB_i/uart_0/hash[113]} {MB_i/uart_0/hash[114]} {MB_i/uart_0/hash[115]} {MB_i/uart_0/hash[116]} {MB_i/uart_0/hash[117]} {MB_i/uart_0/hash[118]} {MB_i/uart_0/hash[119]} {MB_i/uart_0/hash[120]} {MB_i/uart_0/hash[121]} {MB_i/uart_0/hash[122]} {MB_i/uart_0/hash[123]} {MB_i/uart_0/hash[124]} {MB_i/uart_0/hash[125]} {MB_i/uart_0/hash[126]} {MB_i/uart_0/hash[127]} {MB_i/uart_0/hash[128]} {MB_i/uart_0/hash[129]} {MB_i/uart_0/hash[130]} {MB_i/uart_0/hash[131]} {MB_i/uart_0/hash[132]} {MB_i/uart_0/hash[133]} {MB_i/uart_0/hash[134]} {MB_i/uart_0/hash[135]} {MB_i/uart_0/hash[136]} {MB_i/uart_0/hash[137]} {MB_i/uart_0/hash[138]} {MB_i/uart_0/hash[139]} {MB_i/uart_0/hash[140]} {MB_i/uart_0/hash[141]} {MB_i/uart_0/hash[142]} {MB_i/uart_0/hash[143]} {MB_i/uart_0/hash[144]} {MB_i/uart_0/hash[145]} {MB_i/uart_0/hash[146]} {MB_i/uart_0/hash[147]} {MB_i/uart_0/hash[148]} {MB_i/uart_0/hash[149]} {MB_i/uart_0/hash[150]} {MB_i/uart_0/hash[151]} {MB_i/uart_0/hash[152]} {MB_i/uart_0/hash[153]} {MB_i/uart_0/hash[154]} {MB_i/uart_0/hash[155]} {MB_i/uart_0/hash[156]} {MB_i/uart_0/hash[157]} {MB_i/uart_0/hash[158]} {MB_i/uart_0/hash[159]} {MB_i/uart_0/hash[160]} {MB_i/uart_0/hash[161]} {MB_i/uart_0/hash[162]} {MB_i/uart_0/hash[163]} {MB_i/uart_0/hash[164]} {MB_i/uart_0/hash[165]} {MB_i/uart_0/hash[166]} {MB_i/uart_0/hash[167]} {MB_i/uart_0/hash[168]} {MB_i/uart_0/hash[169]} {MB_i/uart_0/hash[170]} {MB_i/uart_0/hash[171]} {MB_i/uart_0/hash[172]} {MB_i/uart_0/hash[173]} {MB_i/uart_0/hash[174]} {MB_i/uart_0/hash[175]} {MB_i/uart_0/hash[176]} {MB_i/uart_0/hash[177]} {MB_i/uart_0/hash[178]} {MB_i/uart_0/hash[179]} {MB_i/uart_0/hash[180]} {MB_i/uart_0/hash[181]} {MB_i/uart_0/hash[182]} {MB_i/uart_0/hash[183]} {MB_i/uart_0/hash[184]} {MB_i/uart_0/hash[185]} {MB_i/uart_0/hash[186]} {MB_i/uart_0/hash[187]} {MB_i/uart_0/hash[188]} {MB_i/uart_0/hash[189]} {MB_i/uart_0/hash[190]} {MB_i/uart_0/hash[191]} {MB_i/uart_0/hash[192]} {MB_i/uart_0/hash[193]} {MB_i/uart_0/hash[194]} {MB_i/uart_0/hash[195]} {MB_i/uart_0/hash[196]} {MB_i/uart_0/hash[197]} {MB_i/uart_0/hash[198]} {MB_i/uart_0/hash[199]} {MB_i/uart_0/hash[200]} {MB_i/uart_0/hash[201]} {MB_i/uart_0/hash[202]} {MB_i/uart_0/hash[203]} {MB_i/uart_0/hash[204]} {MB_i/uart_0/hash[205]} {MB_i/uart_0/hash[206]} {MB_i/uart_0/hash[207]} {MB_i/uart_0/hash[208]} {MB_i/uart_0/hash[209]} {MB_i/uart_0/hash[210]} {MB_i/uart_0/hash[211]} {MB_i/uart_0/hash[212]} {MB_i/uart_0/hash[213]} {MB_i/uart_0/hash[214]} {MB_i/uart_0/hash[215]} {MB_i/uart_0/hash[216]} {MB_i/uart_0/hash[217]} {MB_i/uart_0/hash[218]} {MB_i/uart_0/hash[219]} {MB_i/uart_0/hash[220]} {MB_i/uart_0/hash[221]} {MB_i/uart_0/hash[222]} {MB_i/uart_0/hash[223]} {MB_i/uart_0/hash[224]} {MB_i/uart_0/hash[225]} {MB_i/uart_0/hash[226]} {MB_i/uart_0/hash[227]} {MB_i/uart_0/hash[228]} {MB_i/uart_0/hash[229]} {MB_i/uart_0/hash[230]} {MB_i/uart_0/hash[231]} {MB_i/uart_0/hash[232]} {MB_i/uart_0/hash[233]} {MB_i/uart_0/hash[234]} {MB_i/uart_0/hash[235]} {MB_i/uart_0/hash[236]} {MB_i/uart_0/hash[237]} {MB_i/uart_0/hash[238]} {MB_i/uart_0/hash[239]} {MB_i/uart_0/hash[240]} {MB_i/uart_0/hash[241]} {MB_i/uart_0/hash[242]} {MB_i/uart_0/hash[243]} {MB_i/uart_0/hash[244]} {MB_i/uart_0/hash[245]} {MB_i/uart_0/hash[246]} {MB_i/uart_0/hash[247]} {MB_i/uart_0/hash[248]} {MB_i/uart_0/hash[249]} {MB_i/uart_0/hash[250]} {MB_i/uart_0/hash[251]} {MB_i/uart_0/hash[252]} {MB_i/uart_0/hash[253]} {MB_i/uart_0/hash[254]} {MB_i/uart_0/hash[255]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list MB_i/uart_0/hash_done]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list MB_i/clk_wiz/inst/clk_out2]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 2 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {MB_i/uart_0/inst/tx_state__0[0]} {MB_i/uart_0/inst/tx_state__0[1]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_1_clk_out2]
