-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Feb 22 16:12:39 2020
-- Host        : OUTERHEAVEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/YaKerTaker/Google
--               Drive/8vo/Arquitectura-Computadoras/Practica3/SumAcarrAnt/SumAcarrAnt.sim/sim_1/synth/func/xsim/test_bench_func_synth.vhd}
-- Design      : sum_AnticNbits
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sum_AnticNbits is
  port (
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cin : in STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sum_AnticNbits : entity is true;
end sum_AnticNbits;

architecture STRUCTURE of sum_AnticNbits is
  signal a_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal b_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cin_IBUF : STD_LOGIC;
  signal cout_OBUF : STD_LOGIC;
  signal s_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \s_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \s_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \s_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \s_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \s_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_OBUF[0]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_OBUF[1]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_OBUF[3]_inst_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_OBUF[3]_inst_i_3\ : label is "soft_lutpair1";
begin
\a_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(0),
      O => a_IBUF(0)
    );
\a_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(1),
      O => a_IBUF(1)
    );
\a_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(2),
      O => a_IBUF(2)
    );
\a_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(3),
      O => a_IBUF(3)
    );
\a_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(4),
      O => a_IBUF(4)
    );
\a_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(5),
      O => a_IBUF(5)
    );
\a_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(6),
      O => a_IBUF(6)
    );
\a_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(7),
      O => a_IBUF(7)
    );
\b_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(0),
      O => b_IBUF(0)
    );
\b_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(1),
      O => b_IBUF(1)
    );
\b_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(2),
      O => b_IBUF(2)
    );
\b_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(3),
      O => b_IBUF(3)
    );
\b_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(4),
      O => b_IBUF(4)
    );
\b_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(5),
      O => b_IBUF(5)
    );
\b_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(6),
      O => b_IBUF(6)
    );
\b_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(7),
      O => b_IBUF(7)
    );
cin_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => cin,
      O => cin_IBUF
    );
cout_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => cout_OBUF,
      O => cout
    );
cout_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => b_IBUF(7),
      I1 => a_IBUF(6),
      I2 => \s_OBUF[7]_inst_i_3_n_0\,
      I3 => b_IBUF(6),
      I4 => a_IBUF(7),
      O => cout_OBUF
    );
\s_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(0),
      O => s(0)
    );
\s_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(0),
      I1 => a_IBUF(0),
      I2 => cin_IBUF,
      O => s_OBUF(0)
    );
\s_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(1),
      O => s(1)
    );
\s_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => b_IBUF(1),
      I1 => a_IBUF(1),
      I2 => cin_IBUF,
      I3 => a_IBUF(0),
      I4 => b_IBUF(0),
      O => s_OBUF(1)
    );
\s_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(2),
      O => s(2)
    );
\s_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => \s_OBUF[3]_inst_i_2_n_0\,
      I2 => a_IBUF(2),
      I3 => \s_OBUF[3]_inst_i_3_n_0\,
      O => s_OBUF(2)
    );
\s_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(3),
      O => s(3)
    );
\s_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5EDA548ED5A485A"
    )
        port map (
      I0 => a_IBUF(3),
      I1 => \s_OBUF[3]_inst_i_2_n_0\,
      I2 => b_IBUF(3),
      I3 => b_IBUF(2),
      I4 => \s_OBUF[3]_inst_i_3_n_0\,
      I5 => a_IBUF(2),
      O => s_OBUF(3)
    );
\s_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0115577F"
    )
        port map (
      I0 => b_IBUF(1),
      I1 => a_IBUF(0),
      I2 => b_IBUF(0),
      I3 => cin_IBUF,
      I4 => a_IBUF(1),
      O => \s_OBUF[3]_inst_i_2_n_0\
    );
\s_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => b_IBUF(1),
      I1 => b_IBUF(0),
      I2 => a_IBUF(0),
      I3 => cin_IBUF,
      I4 => a_IBUF(1),
      O => \s_OBUF[3]_inst_i_3_n_0\
    );
\s_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(4),
      O => s(4)
    );
\s_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_IBUF(4),
      I1 => \s_OBUF[5]_inst_i_2_n_0\,
      I2 => b_IBUF(4),
      I3 => \s_OBUF[5]_inst_i_3_n_0\,
      O => s_OBUF(4)
    );
\s_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(5),
      O => s(5)
    );
\s_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5EDA548ED5A485A"
    )
        port map (
      I0 => b_IBUF(5),
      I1 => \s_OBUF[5]_inst_i_2_n_0\,
      I2 => a_IBUF(5),
      I3 => a_IBUF(4),
      I4 => \s_OBUF[5]_inst_i_3_n_0\,
      I5 => b_IBUF(4),
      O => s_OBUF(5)
    );
\s_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"105175F7"
    )
        port map (
      I0 => a_IBUF(3),
      I1 => a_IBUF(2),
      I2 => \s_OBUF[3]_inst_i_2_n_0\,
      I3 => b_IBUF(2),
      I4 => b_IBUF(3),
      O => \s_OBUF[5]_inst_i_2_n_0\
    );
\s_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => a_IBUF(3),
      I1 => a_IBUF(2),
      I2 => \s_OBUF[3]_inst_i_3_n_0\,
      I3 => b_IBUF(2),
      I4 => b_IBUF(3),
      O => \s_OBUF[5]_inst_i_3_n_0\
    );
\s_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(6),
      O => s(6)
    );
\s_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => b_IBUF(6),
      I1 => \s_OBUF[7]_inst_i_2_n_0\,
      I2 => a_IBUF(6),
      I3 => \s_OBUF[7]_inst_i_3_n_0\,
      O => s_OBUF(6)
    );
\s_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(7),
      O => s(7)
    );
\s_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5EDA548ED5A485A"
    )
        port map (
      I0 => b_IBUF(7),
      I1 => \s_OBUF[7]_inst_i_2_n_0\,
      I2 => a_IBUF(7),
      I3 => b_IBUF(6),
      I4 => \s_OBUF[7]_inst_i_3_n_0\,
      I5 => a_IBUF(6),
      O => s_OBUF(7)
    );
\s_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"105175F7"
    )
        port map (
      I0 => b_IBUF(5),
      I1 => b_IBUF(4),
      I2 => \s_OBUF[5]_inst_i_2_n_0\,
      I3 => a_IBUF(4),
      I4 => a_IBUF(5),
      O => \s_OBUF[7]_inst_i_2_n_0\
    );
\s_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => b_IBUF(5),
      I1 => b_IBUF(4),
      I2 => \s_OBUF[5]_inst_i_3_n_0\,
      I3 => a_IBUF(4),
      I4 => a_IBUF(5),
      O => \s_OBUF[7]_inst_i_3_n_0\
    );
end STRUCTURE;
