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
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 256 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {MB_i/sha256_0/hash[0]} {MB_i/sha256_0/hash[1]} {MB_i/sha256_0/hash[2]} {MB_i/sha256_0/hash[3]} {MB_i/sha256_0/hash[4]} {MB_i/sha256_0/hash[5]} {MB_i/sha256_0/hash[6]} {MB_i/sha256_0/hash[7]} {MB_i/sha256_0/hash[8]} {MB_i/sha256_0/hash[9]} {MB_i/sha256_0/hash[10]} {MB_i/sha256_0/hash[11]} {MB_i/sha256_0/hash[12]} {MB_i/sha256_0/hash[13]} {MB_i/sha256_0/hash[14]} {MB_i/sha256_0/hash[15]} {MB_i/sha256_0/hash[16]} {MB_i/sha256_0/hash[17]} {MB_i/sha256_0/hash[18]} {MB_i/sha256_0/hash[19]} {MB_i/sha256_0/hash[20]} {MB_i/sha256_0/hash[21]} {MB_i/sha256_0/hash[22]} {MB_i/sha256_0/hash[23]} {MB_i/sha256_0/hash[24]} {MB_i/sha256_0/hash[25]} {MB_i/sha256_0/hash[26]} {MB_i/sha256_0/hash[27]} {MB_i/sha256_0/hash[28]} {MB_i/sha256_0/hash[29]} {MB_i/sha256_0/hash[30]} {MB_i/sha256_0/hash[31]} {MB_i/sha256_0/hash[32]} {MB_i/sha256_0/hash[33]} {MB_i/sha256_0/hash[34]} {MB_i/sha256_0/hash[35]} {MB_i/sha256_0/hash[36]} {MB_i/sha256_0/hash[37]} {MB_i/sha256_0/hash[38]} {MB_i/sha256_0/hash[39]} {MB_i/sha256_0/hash[40]} {MB_i/sha256_0/hash[41]} {MB_i/sha256_0/hash[42]} {MB_i/sha256_0/hash[43]} {MB_i/sha256_0/hash[44]} {MB_i/sha256_0/hash[45]} {MB_i/sha256_0/hash[46]} {MB_i/sha256_0/hash[47]} {MB_i/sha256_0/hash[48]} {MB_i/sha256_0/hash[49]} {MB_i/sha256_0/hash[50]} {MB_i/sha256_0/hash[51]} {MB_i/sha256_0/hash[52]} {MB_i/sha256_0/hash[53]} {MB_i/sha256_0/hash[54]} {MB_i/sha256_0/hash[55]} {MB_i/sha256_0/hash[56]} {MB_i/sha256_0/hash[57]} {MB_i/sha256_0/hash[58]} {MB_i/sha256_0/hash[59]} {MB_i/sha256_0/hash[60]} {MB_i/sha256_0/hash[61]} {MB_i/sha256_0/hash[62]} {MB_i/sha256_0/hash[63]} {MB_i/sha256_0/hash[64]} {MB_i/sha256_0/hash[65]} {MB_i/sha256_0/hash[66]} {MB_i/sha256_0/hash[67]} {MB_i/sha256_0/hash[68]} {MB_i/sha256_0/hash[69]} {MB_i/sha256_0/hash[70]} {MB_i/sha256_0/hash[71]} {MB_i/sha256_0/hash[72]} {MB_i/sha256_0/hash[73]} {MB_i/sha256_0/hash[74]} {MB_i/sha256_0/hash[75]} {MB_i/sha256_0/hash[76]} {MB_i/sha256_0/hash[77]} {MB_i/sha256_0/hash[78]} {MB_i/sha256_0/hash[79]} {MB_i/sha256_0/hash[80]} {MB_i/sha256_0/hash[81]} {MB_i/sha256_0/hash[82]} {MB_i/sha256_0/hash[83]} {MB_i/sha256_0/hash[84]} {MB_i/sha256_0/hash[85]} {MB_i/sha256_0/hash[86]} {MB_i/sha256_0/hash[87]} {MB_i/sha256_0/hash[88]} {MB_i/sha256_0/hash[89]} {MB_i/sha256_0/hash[90]} {MB_i/sha256_0/hash[91]} {MB_i/sha256_0/hash[92]} {MB_i/sha256_0/hash[93]} {MB_i/sha256_0/hash[94]} {MB_i/sha256_0/hash[95]} {MB_i/sha256_0/hash[96]} {MB_i/sha256_0/hash[97]} {MB_i/sha256_0/hash[98]} {MB_i/sha256_0/hash[99]} {MB_i/sha256_0/hash[100]} {MB_i/sha256_0/hash[101]} {MB_i/sha256_0/hash[102]} {MB_i/sha256_0/hash[103]} {MB_i/sha256_0/hash[104]} {MB_i/sha256_0/hash[105]} {MB_i/sha256_0/hash[106]} {MB_i/sha256_0/hash[107]} {MB_i/sha256_0/hash[108]} {MB_i/sha256_0/hash[109]} {MB_i/sha256_0/hash[110]} {MB_i/sha256_0/hash[111]} {MB_i/sha256_0/hash[112]} {MB_i/sha256_0/hash[113]} {MB_i/sha256_0/hash[114]} {MB_i/sha256_0/hash[115]} {MB_i/sha256_0/hash[116]} {MB_i/sha256_0/hash[117]} {MB_i/sha256_0/hash[118]} {MB_i/sha256_0/hash[119]} {MB_i/sha256_0/hash[120]} {MB_i/sha256_0/hash[121]} {MB_i/sha256_0/hash[122]} {MB_i/sha256_0/hash[123]} {MB_i/sha256_0/hash[124]} {MB_i/sha256_0/hash[125]} {MB_i/sha256_0/hash[126]} {MB_i/sha256_0/hash[127]} {MB_i/sha256_0/hash[128]} {MB_i/sha256_0/hash[129]} {MB_i/sha256_0/hash[130]} {MB_i/sha256_0/hash[131]} {MB_i/sha256_0/hash[132]} {MB_i/sha256_0/hash[133]} {MB_i/sha256_0/hash[134]} {MB_i/sha256_0/hash[135]} {MB_i/sha256_0/hash[136]} {MB_i/sha256_0/hash[137]} {MB_i/sha256_0/hash[138]} {MB_i/sha256_0/hash[139]} {MB_i/sha256_0/hash[140]} {MB_i/sha256_0/hash[141]} {MB_i/sha256_0/hash[142]} {MB_i/sha256_0/hash[143]} {MB_i/sha256_0/hash[144]} {MB_i/sha256_0/hash[145]} {MB_i/sha256_0/hash[146]} {MB_i/sha256_0/hash[147]} {MB_i/sha256_0/hash[148]} {MB_i/sha256_0/hash[149]} {MB_i/sha256_0/hash[150]} {MB_i/sha256_0/hash[151]} {MB_i/sha256_0/hash[152]} {MB_i/sha256_0/hash[153]} {MB_i/sha256_0/hash[154]} {MB_i/sha256_0/hash[155]} {MB_i/sha256_0/hash[156]} {MB_i/sha256_0/hash[157]} {MB_i/sha256_0/hash[158]} {MB_i/sha256_0/hash[159]} {MB_i/sha256_0/hash[160]} {MB_i/sha256_0/hash[161]} {MB_i/sha256_0/hash[162]} {MB_i/sha256_0/hash[163]} {MB_i/sha256_0/hash[164]} {MB_i/sha256_0/hash[165]} {MB_i/sha256_0/hash[166]} {MB_i/sha256_0/hash[167]} {MB_i/sha256_0/hash[168]} {MB_i/sha256_0/hash[169]} {MB_i/sha256_0/hash[170]} {MB_i/sha256_0/hash[171]} {MB_i/sha256_0/hash[172]} {MB_i/sha256_0/hash[173]} {MB_i/sha256_0/hash[174]} {MB_i/sha256_0/hash[175]} {MB_i/sha256_0/hash[176]} {MB_i/sha256_0/hash[177]} {MB_i/sha256_0/hash[178]} {MB_i/sha256_0/hash[179]} {MB_i/sha256_0/hash[180]} {MB_i/sha256_0/hash[181]} {MB_i/sha256_0/hash[182]} {MB_i/sha256_0/hash[183]} {MB_i/sha256_0/hash[184]} {MB_i/sha256_0/hash[185]} {MB_i/sha256_0/hash[186]} {MB_i/sha256_0/hash[187]} {MB_i/sha256_0/hash[188]} {MB_i/sha256_0/hash[189]} {MB_i/sha256_0/hash[190]} {MB_i/sha256_0/hash[191]} {MB_i/sha256_0/hash[192]} {MB_i/sha256_0/hash[193]} {MB_i/sha256_0/hash[194]} {MB_i/sha256_0/hash[195]} {MB_i/sha256_0/hash[196]} {MB_i/sha256_0/hash[197]} {MB_i/sha256_0/hash[198]} {MB_i/sha256_0/hash[199]} {MB_i/sha256_0/hash[200]} {MB_i/sha256_0/hash[201]} {MB_i/sha256_0/hash[202]} {MB_i/sha256_0/hash[203]} {MB_i/sha256_0/hash[204]} {MB_i/sha256_0/hash[205]} {MB_i/sha256_0/hash[206]} {MB_i/sha256_0/hash[207]} {MB_i/sha256_0/hash[208]} {MB_i/sha256_0/hash[209]} {MB_i/sha256_0/hash[210]} {MB_i/sha256_0/hash[211]} {MB_i/sha256_0/hash[212]} {MB_i/sha256_0/hash[213]} {MB_i/sha256_0/hash[214]} {MB_i/sha256_0/hash[215]} {MB_i/sha256_0/hash[216]} {MB_i/sha256_0/hash[217]} {MB_i/sha256_0/hash[218]} {MB_i/sha256_0/hash[219]} {MB_i/sha256_0/hash[220]} {MB_i/sha256_0/hash[221]} {MB_i/sha256_0/hash[222]} {MB_i/sha256_0/hash[223]} {MB_i/sha256_0/hash[224]} {MB_i/sha256_0/hash[225]} {MB_i/sha256_0/hash[226]} {MB_i/sha256_0/hash[227]} {MB_i/sha256_0/hash[228]} {MB_i/sha256_0/hash[229]} {MB_i/sha256_0/hash[230]} {MB_i/sha256_0/hash[231]} {MB_i/sha256_0/hash[232]} {MB_i/sha256_0/hash[233]} {MB_i/sha256_0/hash[234]} {MB_i/sha256_0/hash[235]} {MB_i/sha256_0/hash[236]} {MB_i/sha256_0/hash[237]} {MB_i/sha256_0/hash[238]} {MB_i/sha256_0/hash[239]} {MB_i/sha256_0/hash[240]} {MB_i/sha256_0/hash[241]} {MB_i/sha256_0/hash[242]} {MB_i/sha256_0/hash[243]} {MB_i/sha256_0/hash[244]} {MB_i/sha256_0/hash[245]} {MB_i/sha256_0/hash[246]} {MB_i/sha256_0/hash[247]} {MB_i/sha256_0/hash[248]} {MB_i/sha256_0/hash[249]} {MB_i/sha256_0/hash[250]} {MB_i/sha256_0/hash[251]} {MB_i/sha256_0/hash[252]} {MB_i/sha256_0/hash[253]} {MB_i/sha256_0/hash[254]} {MB_i/sha256_0/hash[255]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 512 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {MB_i/sha256_0/message_block[0]} {MB_i/sha256_0/message_block[1]} {MB_i/sha256_0/message_block[2]} {MB_i/sha256_0/message_block[3]} {MB_i/sha256_0/message_block[4]} {MB_i/sha256_0/message_block[5]} {MB_i/sha256_0/message_block[6]} {MB_i/sha256_0/message_block[7]} {MB_i/sha256_0/message_block[8]} {MB_i/sha256_0/message_block[9]} {MB_i/sha256_0/message_block[10]} {MB_i/sha256_0/message_block[11]} {MB_i/sha256_0/message_block[12]} {MB_i/sha256_0/message_block[13]} {MB_i/sha256_0/message_block[14]} {MB_i/sha256_0/message_block[15]} {MB_i/sha256_0/message_block[16]} {MB_i/sha256_0/message_block[17]} {MB_i/sha256_0/message_block[18]} {MB_i/sha256_0/message_block[19]} {MB_i/sha256_0/message_block[20]} {MB_i/sha256_0/message_block[21]} {MB_i/sha256_0/message_block[22]} {MB_i/sha256_0/message_block[23]} {MB_i/sha256_0/message_block[24]} {MB_i/sha256_0/message_block[25]} {MB_i/sha256_0/message_block[26]} {MB_i/sha256_0/message_block[27]} {MB_i/sha256_0/message_block[28]} {MB_i/sha256_0/message_block[29]} {MB_i/sha256_0/message_block[30]} {MB_i/sha256_0/message_block[31]} {MB_i/sha256_0/message_block[32]} {MB_i/sha256_0/message_block[33]} {MB_i/sha256_0/message_block[34]} {MB_i/sha256_0/message_block[35]} {MB_i/sha256_0/message_block[36]} {MB_i/sha256_0/message_block[37]} {MB_i/sha256_0/message_block[38]} {MB_i/sha256_0/message_block[39]} {MB_i/sha256_0/message_block[40]} {MB_i/sha256_0/message_block[41]} {MB_i/sha256_0/message_block[42]} {MB_i/sha256_0/message_block[43]} {MB_i/sha256_0/message_block[44]} {MB_i/sha256_0/message_block[45]} {MB_i/sha256_0/message_block[46]} {MB_i/sha256_0/message_block[47]} {MB_i/sha256_0/message_block[48]} {MB_i/sha256_0/message_block[49]} {MB_i/sha256_0/message_block[50]} {MB_i/sha256_0/message_block[51]} {MB_i/sha256_0/message_block[52]} {MB_i/sha256_0/message_block[53]} {MB_i/sha256_0/message_block[54]} {MB_i/sha256_0/message_block[55]} {MB_i/sha256_0/message_block[56]} {MB_i/sha256_0/message_block[57]} {MB_i/sha256_0/message_block[58]} {MB_i/sha256_0/message_block[59]} {MB_i/sha256_0/message_block[60]} {MB_i/sha256_0/message_block[61]} {MB_i/sha256_0/message_block[62]} {MB_i/sha256_0/message_block[63]} {MB_i/sha256_0/message_block[64]} {MB_i/sha256_0/message_block[65]} {MB_i/sha256_0/message_block[66]} {MB_i/sha256_0/message_block[67]} {MB_i/sha256_0/message_block[68]} {MB_i/sha256_0/message_block[69]} {MB_i/sha256_0/message_block[70]} {MB_i/sha256_0/message_block[71]} {MB_i/sha256_0/message_block[72]} {MB_i/sha256_0/message_block[73]} {MB_i/sha256_0/message_block[74]} {MB_i/sha256_0/message_block[75]} {MB_i/sha256_0/message_block[76]} {MB_i/sha256_0/message_block[77]} {MB_i/sha256_0/message_block[78]} {MB_i/sha256_0/message_block[79]} {MB_i/sha256_0/message_block[80]} {MB_i/sha256_0/message_block[81]} {MB_i/sha256_0/message_block[82]} {MB_i/sha256_0/message_block[83]} {MB_i/sha256_0/message_block[84]} {MB_i/sha256_0/message_block[85]} {MB_i/sha256_0/message_block[86]} {MB_i/sha256_0/message_block[87]} {MB_i/sha256_0/message_block[88]} {MB_i/sha256_0/message_block[89]} {MB_i/sha256_0/message_block[90]} {MB_i/sha256_0/message_block[91]} {MB_i/sha256_0/message_block[92]} {MB_i/sha256_0/message_block[93]} {MB_i/sha256_0/message_block[94]} {MB_i/sha256_0/message_block[95]} {MB_i/sha256_0/message_block[96]} {MB_i/sha256_0/message_block[97]} {MB_i/sha256_0/message_block[98]} {MB_i/sha256_0/message_block[99]} {MB_i/sha256_0/message_block[100]} {MB_i/sha256_0/message_block[101]} {MB_i/sha256_0/message_block[102]} {MB_i/sha256_0/message_block[103]} {MB_i/sha256_0/message_block[104]} {MB_i/sha256_0/message_block[105]} {MB_i/sha256_0/message_block[106]} {MB_i/sha256_0/message_block[107]} {MB_i/sha256_0/message_block[108]} {MB_i/sha256_0/message_block[109]} {MB_i/sha256_0/message_block[110]} {MB_i/sha256_0/message_block[111]} {MB_i/sha256_0/message_block[112]} {MB_i/sha256_0/message_block[113]} {MB_i/sha256_0/message_block[114]} {MB_i/sha256_0/message_block[115]} {MB_i/sha256_0/message_block[116]} {MB_i/sha256_0/message_block[117]} {MB_i/sha256_0/message_block[118]} {MB_i/sha256_0/message_block[119]} {MB_i/sha256_0/message_block[120]} {MB_i/sha256_0/message_block[121]} {MB_i/sha256_0/message_block[122]} {MB_i/sha256_0/message_block[123]} {MB_i/sha256_0/message_block[124]} {MB_i/sha256_0/message_block[125]} {MB_i/sha256_0/message_block[126]} {MB_i/sha256_0/message_block[127]} {MB_i/sha256_0/message_block[128]} {MB_i/sha256_0/message_block[129]} {MB_i/sha256_0/message_block[130]} {MB_i/sha256_0/message_block[131]} {MB_i/sha256_0/message_block[132]} {MB_i/sha256_0/message_block[133]} {MB_i/sha256_0/message_block[134]} {MB_i/sha256_0/message_block[135]} {MB_i/sha256_0/message_block[136]} {MB_i/sha256_0/message_block[137]} {MB_i/sha256_0/message_block[138]} {MB_i/sha256_0/message_block[139]} {MB_i/sha256_0/message_block[140]} {MB_i/sha256_0/message_block[141]} {MB_i/sha256_0/message_block[142]} {MB_i/sha256_0/message_block[143]} {MB_i/sha256_0/message_block[144]} {MB_i/sha256_0/message_block[145]} {MB_i/sha256_0/message_block[146]} {MB_i/sha256_0/message_block[147]} {MB_i/sha256_0/message_block[148]} {MB_i/sha256_0/message_block[149]} {MB_i/sha256_0/message_block[150]} {MB_i/sha256_0/message_block[151]} {MB_i/sha256_0/message_block[152]} {MB_i/sha256_0/message_block[153]} {MB_i/sha256_0/message_block[154]} {MB_i/sha256_0/message_block[155]} {MB_i/sha256_0/message_block[156]} {MB_i/sha256_0/message_block[157]} {MB_i/sha256_0/message_block[158]} {MB_i/sha256_0/message_block[159]} {MB_i/sha256_0/message_block[160]} {MB_i/sha256_0/message_block[161]} {MB_i/sha256_0/message_block[162]} {MB_i/sha256_0/message_block[163]} {MB_i/sha256_0/message_block[164]} {MB_i/sha256_0/message_block[165]} {MB_i/sha256_0/message_block[166]} {MB_i/sha256_0/message_block[167]} {MB_i/sha256_0/message_block[168]} {MB_i/sha256_0/message_block[169]} {MB_i/sha256_0/message_block[170]} {MB_i/sha256_0/message_block[171]} {MB_i/sha256_0/message_block[172]} {MB_i/sha256_0/message_block[173]} {MB_i/sha256_0/message_block[174]} {MB_i/sha256_0/message_block[175]} {MB_i/sha256_0/message_block[176]} {MB_i/sha256_0/message_block[177]} {MB_i/sha256_0/message_block[178]} {MB_i/sha256_0/message_block[179]} {MB_i/sha256_0/message_block[180]} {MB_i/sha256_0/message_block[181]} {MB_i/sha256_0/message_block[182]} {MB_i/sha256_0/message_block[183]} {MB_i/sha256_0/message_block[184]} {MB_i/sha256_0/message_block[185]} {MB_i/sha256_0/message_block[186]} {MB_i/sha256_0/message_block[187]} {MB_i/sha256_0/message_block[188]} {MB_i/sha256_0/message_block[189]} {MB_i/sha256_0/message_block[190]} {MB_i/sha256_0/message_block[191]} {MB_i/sha256_0/message_block[192]} {MB_i/sha256_0/message_block[193]} {MB_i/sha256_0/message_block[194]} {MB_i/sha256_0/message_block[195]} {MB_i/sha256_0/message_block[196]} {MB_i/sha256_0/message_block[197]} {MB_i/sha256_0/message_block[198]} {MB_i/sha256_0/message_block[199]} {MB_i/sha256_0/message_block[200]} {MB_i/sha256_0/message_block[201]} {MB_i/sha256_0/message_block[202]} {MB_i/sha256_0/message_block[203]} {MB_i/sha256_0/message_block[204]} {MB_i/sha256_0/message_block[205]} {MB_i/sha256_0/message_block[206]} {MB_i/sha256_0/message_block[207]} {MB_i/sha256_0/message_block[208]} {MB_i/sha256_0/message_block[209]} {MB_i/sha256_0/message_block[210]} {MB_i/sha256_0/message_block[211]} {MB_i/sha256_0/message_block[212]} {MB_i/sha256_0/message_block[213]} {MB_i/sha256_0/message_block[214]} {MB_i/sha256_0/message_block[215]} {MB_i/sha256_0/message_block[216]} {MB_i/sha256_0/message_block[217]} {MB_i/sha256_0/message_block[218]} {MB_i/sha256_0/message_block[219]} {MB_i/sha256_0/message_block[220]} {MB_i/sha256_0/message_block[221]} {MB_i/sha256_0/message_block[222]} {MB_i/sha256_0/message_block[223]} {MB_i/sha256_0/message_block[224]} {MB_i/sha256_0/message_block[225]} {MB_i/sha256_0/message_block[226]} {MB_i/sha256_0/message_block[227]} {MB_i/sha256_0/message_block[228]} {MB_i/sha256_0/message_block[229]} {MB_i/sha256_0/message_block[230]} {MB_i/sha256_0/message_block[231]} {MB_i/sha256_0/message_block[232]} {MB_i/sha256_0/message_block[233]} {MB_i/sha256_0/message_block[234]} {MB_i/sha256_0/message_block[235]} {MB_i/sha256_0/message_block[236]} {MB_i/sha256_0/message_block[237]} {MB_i/sha256_0/message_block[238]} {MB_i/sha256_0/message_block[239]} {MB_i/sha256_0/message_block[240]} {MB_i/sha256_0/message_block[241]} {MB_i/sha256_0/message_block[242]} {MB_i/sha256_0/message_block[243]} {MB_i/sha256_0/message_block[244]} {MB_i/sha256_0/message_block[245]} {MB_i/sha256_0/message_block[246]} {MB_i/sha256_0/message_block[247]} {MB_i/sha256_0/message_block[248]} {MB_i/sha256_0/message_block[249]} {MB_i/sha256_0/message_block[250]} {MB_i/sha256_0/message_block[251]} {MB_i/sha256_0/message_block[252]} {MB_i/sha256_0/message_block[253]} {MB_i/sha256_0/message_block[254]} {MB_i/sha256_0/message_block[255]} {MB_i/sha256_0/message_block[256]} {MB_i/sha256_0/message_block[257]} {MB_i/sha256_0/message_block[258]} {MB_i/sha256_0/message_block[259]} {MB_i/sha256_0/message_block[260]} {MB_i/sha256_0/message_block[261]} {MB_i/sha256_0/message_block[262]} {MB_i/sha256_0/message_block[263]} {MB_i/sha256_0/message_block[264]} {MB_i/sha256_0/message_block[265]} {MB_i/sha256_0/message_block[266]} {MB_i/sha256_0/message_block[267]} {MB_i/sha256_0/message_block[268]} {MB_i/sha256_0/message_block[269]} {MB_i/sha256_0/message_block[270]} {MB_i/sha256_0/message_block[271]} {MB_i/sha256_0/message_block[272]} {MB_i/sha256_0/message_block[273]} {MB_i/sha256_0/message_block[274]} {MB_i/sha256_0/message_block[275]} {MB_i/sha256_0/message_block[276]} {MB_i/sha256_0/message_block[277]} {MB_i/sha256_0/message_block[278]} {MB_i/sha256_0/message_block[279]} {MB_i/sha256_0/message_block[280]} {MB_i/sha256_0/message_block[281]} {MB_i/sha256_0/message_block[282]} {MB_i/sha256_0/message_block[283]} {MB_i/sha256_0/message_block[284]} {MB_i/sha256_0/message_block[285]} {MB_i/sha256_0/message_block[286]} {MB_i/sha256_0/message_block[287]} {MB_i/sha256_0/message_block[288]} {MB_i/sha256_0/message_block[289]} {MB_i/sha256_0/message_block[290]} {MB_i/sha256_0/message_block[291]} {MB_i/sha256_0/message_block[292]} {MB_i/sha256_0/message_block[293]} {MB_i/sha256_0/message_block[294]} {MB_i/sha256_0/message_block[295]} {MB_i/sha256_0/message_block[296]} {MB_i/sha256_0/message_block[297]} {MB_i/sha256_0/message_block[298]} {MB_i/sha256_0/message_block[299]} {MB_i/sha256_0/message_block[300]} {MB_i/sha256_0/message_block[301]} {MB_i/sha256_0/message_block[302]} {MB_i/sha256_0/message_block[303]} {MB_i/sha256_0/message_block[304]} {MB_i/sha256_0/message_block[305]} {MB_i/sha256_0/message_block[306]} {MB_i/sha256_0/message_block[307]} {MB_i/sha256_0/message_block[308]} {MB_i/sha256_0/message_block[309]} {MB_i/sha256_0/message_block[310]} {MB_i/sha256_0/message_block[311]} {MB_i/sha256_0/message_block[312]} {MB_i/sha256_0/message_block[313]} {MB_i/sha256_0/message_block[314]} {MB_i/sha256_0/message_block[315]} {MB_i/sha256_0/message_block[316]} {MB_i/sha256_0/message_block[317]} {MB_i/sha256_0/message_block[318]} {MB_i/sha256_0/message_block[319]} {MB_i/sha256_0/message_block[320]} {MB_i/sha256_0/message_block[321]} {MB_i/sha256_0/message_block[322]} {MB_i/sha256_0/message_block[323]} {MB_i/sha256_0/message_block[324]} {MB_i/sha256_0/message_block[325]} {MB_i/sha256_0/message_block[326]} {MB_i/sha256_0/message_block[327]} {MB_i/sha256_0/message_block[328]} {MB_i/sha256_0/message_block[329]} {MB_i/sha256_0/message_block[330]} {MB_i/sha256_0/message_block[331]} {MB_i/sha256_0/message_block[332]} {MB_i/sha256_0/message_block[333]} {MB_i/sha256_0/message_block[334]} {MB_i/sha256_0/message_block[335]} {MB_i/sha256_0/message_block[336]} {MB_i/sha256_0/message_block[337]} {MB_i/sha256_0/message_block[338]} {MB_i/sha256_0/message_block[339]} {MB_i/sha256_0/message_block[340]} {MB_i/sha256_0/message_block[341]} {MB_i/sha256_0/message_block[342]} {MB_i/sha256_0/message_block[343]} {MB_i/sha256_0/message_block[344]} {MB_i/sha256_0/message_block[345]} {MB_i/sha256_0/message_block[346]} {MB_i/sha256_0/message_block[347]} {MB_i/sha256_0/message_block[348]} {MB_i/sha256_0/message_block[349]} {MB_i/sha256_0/message_block[350]} {MB_i/sha256_0/message_block[351]} {MB_i/sha256_0/message_block[352]} {MB_i/sha256_0/message_block[353]} {MB_i/sha256_0/message_block[354]} {MB_i/sha256_0/message_block[355]} {MB_i/sha256_0/message_block[356]} {MB_i/sha256_0/message_block[357]} {MB_i/sha256_0/message_block[358]} {MB_i/sha256_0/message_block[359]} {MB_i/sha256_0/message_block[360]} {MB_i/sha256_0/message_block[361]} {MB_i/sha256_0/message_block[362]} {MB_i/sha256_0/message_block[363]} {MB_i/sha256_0/message_block[364]} {MB_i/sha256_0/message_block[365]} {MB_i/sha256_0/message_block[366]} {MB_i/sha256_0/message_block[367]} {MB_i/sha256_0/message_block[368]} {MB_i/sha256_0/message_block[369]} {MB_i/sha256_0/message_block[370]} {MB_i/sha256_0/message_block[371]} {MB_i/sha256_0/message_block[372]} {MB_i/sha256_0/message_block[373]} {MB_i/sha256_0/message_block[374]} {MB_i/sha256_0/message_block[375]} {MB_i/sha256_0/message_block[376]} {MB_i/sha256_0/message_block[377]} {MB_i/sha256_0/message_block[378]} {MB_i/sha256_0/message_block[379]} {MB_i/sha256_0/message_block[380]} {MB_i/sha256_0/message_block[381]} {MB_i/sha256_0/message_block[382]} {MB_i/sha256_0/message_block[383]} {MB_i/sha256_0/message_block[384]} {MB_i/sha256_0/message_block[385]} {MB_i/sha256_0/message_block[386]} {MB_i/sha256_0/message_block[387]} {MB_i/sha256_0/message_block[388]} {MB_i/sha256_0/message_block[389]} {MB_i/sha256_0/message_block[390]} {MB_i/sha256_0/message_block[391]} {MB_i/sha256_0/message_block[392]} {MB_i/sha256_0/message_block[393]} {MB_i/sha256_0/message_block[394]} {MB_i/sha256_0/message_block[395]} {MB_i/sha256_0/message_block[396]} {MB_i/sha256_0/message_block[397]} {MB_i/sha256_0/message_block[398]} {MB_i/sha256_0/message_block[399]} {MB_i/sha256_0/message_block[400]} {MB_i/sha256_0/message_block[401]} {MB_i/sha256_0/message_block[402]} {MB_i/sha256_0/message_block[403]} {MB_i/sha256_0/message_block[404]} {MB_i/sha256_0/message_block[405]} {MB_i/sha256_0/message_block[406]} {MB_i/sha256_0/message_block[407]} {MB_i/sha256_0/message_block[408]} {MB_i/sha256_0/message_block[409]} {MB_i/sha256_0/message_block[410]} {MB_i/sha256_0/message_block[411]} {MB_i/sha256_0/message_block[412]} {MB_i/sha256_0/message_block[413]} {MB_i/sha256_0/message_block[414]} {MB_i/sha256_0/message_block[415]} {MB_i/sha256_0/message_block[416]} {MB_i/sha256_0/message_block[417]} {MB_i/sha256_0/message_block[418]} {MB_i/sha256_0/message_block[419]} {MB_i/sha256_0/message_block[420]} {MB_i/sha256_0/message_block[421]} {MB_i/sha256_0/message_block[422]} {MB_i/sha256_0/message_block[423]} {MB_i/sha256_0/message_block[424]} {MB_i/sha256_0/message_block[425]} {MB_i/sha256_0/message_block[426]} {MB_i/sha256_0/message_block[427]} {MB_i/sha256_0/message_block[428]} {MB_i/sha256_0/message_block[429]} {MB_i/sha256_0/message_block[430]} {MB_i/sha256_0/message_block[431]} {MB_i/sha256_0/message_block[432]} {MB_i/sha256_0/message_block[433]} {MB_i/sha256_0/message_block[434]} {MB_i/sha256_0/message_block[435]} {MB_i/sha256_0/message_block[436]} {MB_i/sha256_0/message_block[437]} {MB_i/sha256_0/message_block[438]} {MB_i/sha256_0/message_block[439]} {MB_i/sha256_0/message_block[440]} {MB_i/sha256_0/message_block[441]} {MB_i/sha256_0/message_block[442]} {MB_i/sha256_0/message_block[443]} {MB_i/sha256_0/message_block[444]} {MB_i/sha256_0/message_block[445]} {MB_i/sha256_0/message_block[446]} {MB_i/sha256_0/message_block[447]} {MB_i/sha256_0/message_block[448]} {MB_i/sha256_0/message_block[449]} {MB_i/sha256_0/message_block[450]} {MB_i/sha256_0/message_block[451]} {MB_i/sha256_0/message_block[452]} {MB_i/sha256_0/message_block[453]} {MB_i/sha256_0/message_block[454]} {MB_i/sha256_0/message_block[455]} {MB_i/sha256_0/message_block[456]} {MB_i/sha256_0/message_block[457]} {MB_i/sha256_0/message_block[458]} {MB_i/sha256_0/message_block[459]} {MB_i/sha256_0/message_block[460]} {MB_i/sha256_0/message_block[461]} {MB_i/sha256_0/message_block[462]} {MB_i/sha256_0/message_block[463]} {MB_i/sha256_0/message_block[464]} {MB_i/sha256_0/message_block[465]} {MB_i/sha256_0/message_block[466]} {MB_i/sha256_0/message_block[467]} {MB_i/sha256_0/message_block[468]} {MB_i/sha256_0/message_block[469]} {MB_i/sha256_0/message_block[470]} {MB_i/sha256_0/message_block[471]} {MB_i/sha256_0/message_block[472]} {MB_i/sha256_0/message_block[473]} {MB_i/sha256_0/message_block[474]} {MB_i/sha256_0/message_block[475]} {MB_i/sha256_0/message_block[476]} {MB_i/sha256_0/message_block[477]} {MB_i/sha256_0/message_block[478]} {MB_i/sha256_0/message_block[479]} {MB_i/sha256_0/message_block[480]} {MB_i/sha256_0/message_block[481]} {MB_i/sha256_0/message_block[482]} {MB_i/sha256_0/message_block[483]} {MB_i/sha256_0/message_block[484]} {MB_i/sha256_0/message_block[485]} {MB_i/sha256_0/message_block[486]} {MB_i/sha256_0/message_block[487]} {MB_i/sha256_0/message_block[488]} {MB_i/sha256_0/message_block[489]} {MB_i/sha256_0/message_block[490]} {MB_i/sha256_0/message_block[491]} {MB_i/sha256_0/message_block[492]} {MB_i/sha256_0/message_block[493]} {MB_i/sha256_0/message_block[494]} {MB_i/sha256_0/message_block[495]} {MB_i/sha256_0/message_block[496]} {MB_i/sha256_0/message_block[497]} {MB_i/sha256_0/message_block[498]} {MB_i/sha256_0/message_block[499]} {MB_i/sha256_0/message_block[500]} {MB_i/sha256_0/message_block[501]} {MB_i/sha256_0/message_block[502]} {MB_i/sha256_0/message_block[503]} {MB_i/sha256_0/message_block[504]} {MB_i/sha256_0/message_block[505]} {MB_i/sha256_0/message_block[506]} {MB_i/sha256_0/message_block[507]} {MB_i/sha256_0/message_block[508]} {MB_i/sha256_0/message_block[509]} {MB_i/sha256_0/message_block[510]} {MB_i/sha256_0/message_block[511]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 9 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {MB_i/uart_0/byte_count[0]} {MB_i/uart_0/byte_count[1]} {MB_i/uart_0/byte_count[2]} {MB_i/uart_0/byte_count[3]} {MB_i/uart_0/byte_count[4]} {MB_i/uart_0/byte_count[5]} {MB_i/uart_0/byte_count[6]} {MB_i/uart_0/byte_count[7]} {MB_i/uart_0/byte_count[8]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out1]
