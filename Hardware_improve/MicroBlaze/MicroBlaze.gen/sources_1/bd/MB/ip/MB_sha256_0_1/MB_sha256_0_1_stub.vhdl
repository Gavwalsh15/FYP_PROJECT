-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Apr 18 00:30:27 2025
-- Host        : DESKTOP-R5RVK16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_sha256_0_1/MB_sha256_0_1_stub.vhdl
-- Design      : MB_sha256_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MB_sha256_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    start_hash : in STD_LOGIC;
    large_hash : in STD_LOGIC;
    start : in STD_LOGIC;
    message_block : in STD_LOGIC_VECTOR ( 511 downto 0 );
    hash : out STD_LOGIC_VECTOR ( 255 downto 0 );
    hash_started : out STD_LOGIC;
    done : out STD_LOGIC
  );

end MB_sha256_0_1;

architecture stub of MB_sha256_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,start_hash,large_hash,start,message_block[511:0],hash[255:0],hash_started,done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sha256,Vivado 2024.1";
begin
end;
