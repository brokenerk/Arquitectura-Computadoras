-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Apr  3 20:24:30 2020
-- Host        : OUTERHEAVEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/YaKerTaker/Google
--               Drive/8vo/Arquitectura-Computadoras/Practica7/MemDatos/MemDatos.sim/sim_1/synth/func/xsim/tb_MemoriaDatos_func_synth.vhd}
-- Design      : Arreglo
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arreglo is
  port (
    addW : in STD_LOGIC_VECTOR ( 4 downto 0 );
    addR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dataIn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    wd : in STD_LOGIC;
    dataOut : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Arreglo : entity is true;
end Arreglo;

architecture STRUCTURE of Arreglo is
  signal addR_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal addW_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal dataIn_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dataOut_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wd_IBUF : STD_LOGIC;
  signal NLW_aux_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_aux_reg_0_15_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_aux_reg_0_15_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_aux_reg_0_15_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of aux_reg_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of aux_reg_0_15_0_5 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of aux_reg_0_15_0_5 : label is "aux";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of aux_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of aux_reg_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of aux_reg_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of aux_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of aux_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of aux_reg_0_15_6_7 : label is "";
  attribute RTL_RAM_BITS of aux_reg_0_15_6_7 : label is 128;
  attribute RTL_RAM_NAME of aux_reg_0_15_6_7 : label is "aux";
  attribute ram_addr_begin of aux_reg_0_15_6_7 : label is 0;
  attribute ram_addr_end of aux_reg_0_15_6_7 : label is 15;
  attribute ram_offset of aux_reg_0_15_6_7 : label is 0;
  attribute ram_slice_begin of aux_reg_0_15_6_7 : label is 6;
  attribute ram_slice_end of aux_reg_0_15_6_7 : label is 7;
begin
\addR_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addR(0),
      O => addR_IBUF(0)
    );
\addR_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addR(1),
      O => addR_IBUF(1)
    );
\addR_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addR(2),
      O => addR_IBUF(2)
    );
\addR_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addR(3),
      O => addR_IBUF(3)
    );
\addW_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addW(0),
      O => addW_IBUF(0)
    );
\addW_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addW(1),
      O => addW_IBUF(1)
    );
\addW_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addW(2),
      O => addW_IBUF(2)
    );
\addW_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addW(3),
      O => addW_IBUF(3)
    );
aux_reg_0_15_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addR_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addR_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addR_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addW_IBUF(3 downto 0),
      DIA(1 downto 0) => dataIn_IBUF(1 downto 0),
      DIB(1 downto 0) => dataIn_IBUF(3 downto 2),
      DIC(1 downto 0) => dataIn_IBUF(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dataOut_OBUF(1 downto 0),
      DOB(1 downto 0) => dataOut_OBUF(3 downto 2),
      DOC(1 downto 0) => dataOut_OBUF(5 downto 4),
      DOD(1 downto 0) => NLW_aux_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => wd_IBUF
    );
aux_reg_0_15_6_7: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addR_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addR_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addR_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addW_IBUF(3 downto 0),
      DIA(1 downto 0) => dataIn_IBUF(7 downto 6),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dataOut_OBUF(7 downto 6),
      DOB(1 downto 0) => NLW_aux_reg_0_15_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_aux_reg_0_15_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_aux_reg_0_15_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => wd_IBUF
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\dataIn_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => dataIn(0),
      O => dataIn_IBUF(0)
    );
\dataIn_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => dataIn(1),
      O => dataIn_IBUF(1)
    );
\dataIn_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => dataIn(2),
      O => dataIn_IBUF(2)
    );
\dataIn_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => dataIn(3),
      O => dataIn_IBUF(3)
    );
\dataIn_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => dataIn(4),
      O => dataIn_IBUF(4)
    );
\dataIn_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => dataIn(5),
      O => dataIn_IBUF(5)
    );
\dataIn_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => dataIn(6),
      O => dataIn_IBUF(6)
    );
\dataIn_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => dataIn(7),
      O => dataIn_IBUF(7)
    );
\dataOut_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOut_OBUF(0),
      O => dataOut(0)
    );
\dataOut_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOut_OBUF(1),
      O => dataOut(1)
    );
\dataOut_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOut_OBUF(2),
      O => dataOut(2)
    );
\dataOut_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOut_OBUF(3),
      O => dataOut(3)
    );
\dataOut_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOut_OBUF(4),
      O => dataOut(4)
    );
\dataOut_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOut_OBUF(5),
      O => dataOut(5)
    );
\dataOut_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOut_OBUF(6),
      O => dataOut(6)
    );
\dataOut_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOut_OBUF(7),
      O => dataOut(7)
    );
wd_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => wd,
      O => wd_IBUF
    );
end STRUCTURE;
