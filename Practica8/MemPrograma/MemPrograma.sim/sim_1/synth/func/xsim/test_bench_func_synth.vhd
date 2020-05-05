-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Apr  6 20:45:17 2020
-- Host        : OUTERHEAVEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/YaKerTaker/Google
--               Drive/8vo/Arquitectura-Computadoras/Practica8/MemPrograma/MemPrograma.sim/sim_1/synth/func/xsim/test_bench_func_synth.vhd}
-- Design      : MemoriaPrograma
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MemoriaPrograma is
  port (
    pc : in STD_LOGIC_VECTOR ( 9 downto 0 );
    inst : out STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MemoriaPrograma : entity is true;
  attribute m : integer;
  attribute m of MemoriaPrograma : entity is 10;
  attribute n : integer;
  attribute n of MemoriaPrograma : entity is 25;
end MemoriaPrograma;

architecture STRUCTURE of MemoriaPrograma is
  signal inst_OBUF : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \inst_OBUF[24]_inst_i_2_n_0\ : STD_LOGIC;
  signal pc_IBUF : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \inst_OBUF[0]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \inst_OBUF[12]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \inst_OBUF[13]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \inst_OBUF[14]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \inst_OBUF[16]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \inst_OBUF[17]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \inst_OBUF[18]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \inst_OBUF[1]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \inst_OBUF[20]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \inst_OBUF[21]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \inst_OBUF[22]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \inst_OBUF[23]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \inst_OBUF[2]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \inst_OBUF[3]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \inst_OBUF[6]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \inst_OBUF[8]_inst_i_1\ : label is "soft_lutpair1";
begin
\inst_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(0),
      O => inst(0)
    );
\inst_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00300020"
    )
        port map (
      I0 => pc_IBUF(0),
      I1 => pc_IBUF(1),
      I2 => \inst_OBUF[24]_inst_i_2_n_0\,
      I3 => pc_IBUF(2),
      I4 => pc_IBUF(3),
      O => inst_OBUF(0)
    );
\inst_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => inst(10)
    );
\inst_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => inst(11)
    );
\inst_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(12),
      O => inst(12)
    );
\inst_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00204000"
    )
        port map (
      I0 => pc_IBUF(0),
      I1 => pc_IBUF(1),
      I2 => \inst_OBUF[24]_inst_i_2_n_0\,
      I3 => pc_IBUF(2),
      I4 => pc_IBUF(3),
      O => inst_OBUF(12)
    );
\inst_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(13),
      O => inst(13)
    );
\inst_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => pc_IBUF(1),
      I1 => \inst_OBUF[24]_inst_i_2_n_0\,
      I2 => pc_IBUF(2),
      I3 => pc_IBUF(3),
      O => inst_OBUF(13)
    );
\inst_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(14),
      O => inst(14)
    );
\inst_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => pc_IBUF(3),
      I1 => pc_IBUF(2),
      I2 => \inst_OBUF[24]_inst_i_2_n_0\,
      I3 => pc_IBUF(1),
      I4 => pc_IBUF(0),
      O => inst_OBUF(14)
    );
\inst_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => inst(15)
    );
\inst_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(16),
      O => inst(16)
    );
\inst_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40500000"
    )
        port map (
      I0 => pc_IBUF(3),
      I1 => pc_IBUF(1),
      I2 => \inst_OBUF[24]_inst_i_2_n_0\,
      I3 => pc_IBUF(2),
      I4 => pc_IBUF(0),
      O => inst_OBUF(16)
    );
\inst_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(17),
      O => inst(17)
    );
\inst_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => pc_IBUF(3),
      I1 => pc_IBUF(2),
      I2 => \inst_OBUF[24]_inst_i_2_n_0\,
      I3 => pc_IBUF(1),
      O => inst_OBUF(17)
    );
\inst_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(18),
      O => inst(18)
    );
\inst_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => pc_IBUF(1),
      I1 => \inst_OBUF[24]_inst_i_2_n_0\,
      I2 => pc_IBUF(2),
      I3 => pc_IBUF(3),
      O => inst_OBUF(18)
    );
\inst_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => inst(19)
    );
\inst_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(1),
      O => inst(1)
    );
\inst_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C400000"
    )
        port map (
      I0 => pc_IBUF(1),
      I1 => \inst_OBUF[24]_inst_i_2_n_0\,
      I2 => pc_IBUF(2),
      I3 => pc_IBUF(3),
      I4 => pc_IBUF(0),
      O => inst_OBUF(1)
    );
\inst_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(20),
      O => inst(20)
    );
\inst_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3200B700"
    )
        port map (
      I0 => pc_IBUF(0),
      I1 => pc_IBUF(3),
      I2 => pc_IBUF(1),
      I3 => \inst_OBUF[24]_inst_i_2_n_0\,
      I4 => pc_IBUF(2),
      O => inst_OBUF(20)
    );
\inst_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(21),
      O => inst(21)
    );
\inst_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E02000"
    )
        port map (
      I0 => pc_IBUF(0),
      I1 => pc_IBUF(1),
      I2 => \inst_OBUF[24]_inst_i_2_n_0\,
      I3 => pc_IBUF(2),
      I4 => pc_IBUF(3),
      O => inst_OBUF(21)
    );
\inst_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(22),
      O => inst(22)
    );
\inst_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34000C00"
    )
        port map (
      I0 => pc_IBUF(0),
      I1 => pc_IBUF(3),
      I2 => pc_IBUF(2),
      I3 => \inst_OBUF[24]_inst_i_2_n_0\,
      I4 => pc_IBUF(1),
      O => inst_OBUF(22)
    );
\inst_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(23),
      O => inst(23)
    );
\inst_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => pc_IBUF(3),
      I1 => pc_IBUF(2),
      I2 => \inst_OBUF[24]_inst_i_2_n_0\,
      I3 => pc_IBUF(1),
      I4 => pc_IBUF(0),
      O => inst_OBUF(23)
    );
\inst_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(24),
      O => inst(24)
    );
\inst_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => pc_IBUF(1),
      I1 => \inst_OBUF[24]_inst_i_2_n_0\,
      I2 => pc_IBUF(2),
      I3 => pc_IBUF(3),
      O => inst_OBUF(24)
    );
\inst_OBUF[24]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pc_IBUF(6),
      I1 => pc_IBUF(4),
      I2 => pc_IBUF(8),
      I3 => pc_IBUF(9),
      I4 => pc_IBUF(5),
      I5 => pc_IBUF(7),
      O => \inst_OBUF[24]_inst_i_2_n_0\
    );
\inst_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(2),
      O => inst(2)
    );
\inst_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => pc_IBUF(3),
      I1 => pc_IBUF(2),
      I2 => \inst_OBUF[24]_inst_i_2_n_0\,
      I3 => pc_IBUF(1),
      I4 => pc_IBUF(0),
      O => inst_OBUF(2)
    );
\inst_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(3),
      O => inst(3)
    );
\inst_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C080000"
    )
        port map (
      I0 => pc_IBUF(1),
      I1 => \inst_OBUF[24]_inst_i_2_n_0\,
      I2 => pc_IBUF(2),
      I3 => pc_IBUF(3),
      I4 => pc_IBUF(0),
      O => inst_OBUF(3)
    );
\inst_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(4),
      O => inst(4)
    );
\inst_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(4),
      O => inst(5)
    );
\inst_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(4),
      O => inst(6)
    );
\inst_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => pc_IBUF(3),
      I1 => pc_IBUF(2),
      I2 => \inst_OBUF[24]_inst_i_2_n_0\,
      I3 => pc_IBUF(1),
      I4 => pc_IBUF(0),
      O => inst_OBUF(4)
    );
\inst_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => inst(7)
    );
\inst_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => inst_OBUF(8),
      O => inst(8)
    );
\inst_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => pc_IBUF(3),
      I1 => pc_IBUF(2),
      I2 => \inst_OBUF[24]_inst_i_2_n_0\,
      I3 => pc_IBUF(1),
      I4 => pc_IBUF(0),
      O => inst_OBUF(8)
    );
\inst_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => inst(9)
    );
\pc_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pc(0),
      O => pc_IBUF(0)
    );
\pc_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pc(1),
      O => pc_IBUF(1)
    );
\pc_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pc(2),
      O => pc_IBUF(2)
    );
\pc_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pc(3),
      O => pc_IBUF(3)
    );
\pc_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pc(4),
      O => pc_IBUF(4)
    );
\pc_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pc(5),
      O => pc_IBUF(5)
    );
\pc_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pc(6),
      O => pc_IBUF(6)
    );
\pc_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pc(7),
      O => pc_IBUF(7)
    );
\pc_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pc(8),
      O => pc_IBUF(8)
    );
\pc_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pc(9),
      O => pc_IBUF(9)
    );
end STRUCTURE;
