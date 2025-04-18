-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Apr 18 15:52:43 2025
-- Host        : DESKTOP-R5RVK16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_uart_0_0/MB_uart_0_0_stub.vhdl
-- Design      : MB_uart_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MB_uart_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    message_block : out STD_LOGIC_VECTOR ( 511 downto 0 );
    message_ready : out STD_LOGIC;
    single_hash : out STD_LOGIC;
    large_hash : out STD_LOGIC;
    byte_count : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end MB_uart_0_0;

architecture stub of MB_uart_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,rx,tx,message_block[511:0],message_ready,single_hash,large_hash,byte_count[8:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart,Vivado 2024.1";
begin
end;
