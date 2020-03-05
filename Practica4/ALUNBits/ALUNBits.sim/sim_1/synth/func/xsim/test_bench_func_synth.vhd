-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Mar  4 20:43:02 2020
-- Host        : OUTERHEAVEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/YaKerTaker/Google
--               Drive/8vo/Arquitectura-Computadoras/Practica4/ALUNBits/ALUNBits.sim/sim_1/synth/func/xsim/test_bench_func_synth.vhd}
-- Design      : ALUNBits
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALUNBits is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aluop : in STD_LOGIC_VECTOR ( 3 downto 0 );
    res : out STD_LOGIC_VECTOR ( 3 downto 0 );
    banderas : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ALUNBits : entity is true;
  attribute n : integer;
  attribute n of ALUNBits : entity is 4;
end ALUNBits;

architecture STRUCTURE of ALUNBits is
  signal a_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal aluop_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal b_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal banderas_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \banderas_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \banderas_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \banderas_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \banderas_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal c_1 : STD_LOGIC;
  signal c_2 : STD_LOGIC;
  signal c_3 : STD_LOGIC;
  signal \ciclo[1].alu0/a3_out\ : STD_LOGIC;
  signal \ciclo[2].alu0/a3_out\ : STD_LOGIC;
  signal \ciclo[2].alu0/b2_out\ : STD_LOGIC;
  signal \ciclo[3].alu0/a3_out\ : STD_LOGIC;
  signal \ciclo[3].alu0/b2_out\ : STD_LOGIC;
  signal res_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \banderas_OBUF[1]_inst_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \banderas_OBUF[1]_inst_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \res_OBUF[1]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \res_OBUF[1]_inst_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \res_OBUF[2]_inst_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \res_OBUF[3]_inst_i_2\ : label is "soft_lutpair0";
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
\aluop_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => aluop(0),
      O => aluop_IBUF(0)
    );
\aluop_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => aluop(1),
      O => aluop_IBUF(1)
    );
\aluop_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => aluop(2),
      O => aluop_IBUF(2)
    );
\aluop_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => aluop(3),
      O => aluop_IBUF(3)
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
\banderas_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => banderas_OBUF(0),
      O => banderas(0)
    );
\banderas_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088888000808000"
    )
        port map (
      I0 => aluop_IBUF(1),
      I1 => aluop_IBUF(0),
      I2 => \ciclo[3].alu0/a3_out\,
      I3 => b_IBUF(3),
      I4 => aluop_IBUF(2),
      I5 => c_3,
      O => banderas_OBUF(0)
    );
\banderas_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => banderas_OBUF(1),
      O => banderas(1)
    );
\banderas_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => res_OBUF(0),
      I1 => \banderas_OBUF[1]_inst_i_2_n_0\,
      I2 => \banderas_OBUF[1]_inst_i_3_n_0\,
      I3 => \banderas_OBUF[1]_inst_i_4_n_0\,
      I4 => res_OBUF(2),
      I5 => res_OBUF(1),
      O => banderas_OBUF(1)
    );
\banderas_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220233223320220"
    )
        port map (
      I0 => aluop_IBUF(0),
      I1 => aluop_IBUF(1),
      I2 => a_IBUF(3),
      I3 => aluop_IBUF(3),
      I4 => b_IBUF(3),
      I5 => aluop_IBUF(2),
      O => \banderas_OBUF[1]_inst_i_2_n_0\
    );
\banderas_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E81717E8"
    )
        port map (
      I0 => c_2,
      I1 => \ciclo[2].alu0/b2_out\,
      I2 => \ciclo[2].alu0/a3_out\,
      I3 => \ciclo[3].alu0/a3_out\,
      I4 => \ciclo[3].alu0/b2_out\,
      I5 => \banderas_OBUF[1]_inst_i_7_n_0\,
      O => \banderas_OBUF[1]_inst_i_3_n_0\
    );
\banderas_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000699600000000"
    )
        port map (
      I0 => aluop_IBUF(3),
      I1 => a_IBUF(3),
      I2 => aluop_IBUF(2),
      I3 => b_IBUF(3),
      I4 => aluop_IBUF(0),
      I5 => aluop_IBUF(1),
      O => \banderas_OBUF[1]_inst_i_4_n_0\
    );
\banderas_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => aluop_IBUF(2),
      I1 => b_IBUF(2),
      O => \ciclo[2].alu0/b2_out\
    );
\banderas_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => aluop_IBUF(2),
      I1 => b_IBUF(3),
      O => \ciclo[3].alu0/b2_out\
    );
\banderas_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aluop_IBUF(1),
      I1 => aluop_IBUF(0),
      O => \banderas_OBUF[1]_inst_i_7_n_0\
    );
\banderas_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => banderas_OBUF(2),
      O => banderas(2)
    );
\banderas_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => banderas_OBUF(3),
      O => banderas(3)
    );
\banderas_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008080080000080"
    )
        port map (
      I0 => aluop_IBUF(1),
      I1 => aluop_IBUF(0),
      I2 => c_3,
      I3 => aluop_IBUF(2),
      I4 => b_IBUF(3),
      I5 => \ciclo[3].alu0/a3_out\,
      O => banderas_OBUF(3)
    );
\res_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(0),
      O => res(0)
    );
\res_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33C69967DBE1428"
    )
        port map (
      I0 => aluop_IBUF(2),
      I1 => a_IBUF(0),
      I2 => aluop_IBUF(3),
      I3 => b_IBUF(0),
      I4 => aluop_IBUF(0),
      I5 => aluop_IBUF(1),
      O => res_OBUF(0)
    );
\res_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(1),
      O => res(1)
    );
\res_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996C33CCFFC0CC0"
    )
        port map (
      I0 => c_1,
      I1 => \ciclo[1].alu0/a3_out\,
      I2 => aluop_IBUF(2),
      I3 => b_IBUF(1),
      I4 => aluop_IBUF(0),
      I5 => aluop_IBUF(1),
      O => res_OBUF(1)
    );
\res_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => a_IBUF(0),
      I1 => aluop_IBUF(3),
      I2 => b_IBUF(0),
      I3 => aluop_IBUF(2),
      O => c_1
    );
\res_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => aluop_IBUF(3),
      I1 => a_IBUF(1),
      O => \ciclo[1].alu0/a3_out\
    );
\res_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(2),
      O => res(2)
    );
\res_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996C33CCFFC0CC0"
    )
        port map (
      I0 => c_2,
      I1 => \ciclo[2].alu0/a3_out\,
      I2 => aluop_IBUF(2),
      I3 => b_IBUF(2),
      I4 => aluop_IBUF(0),
      I5 => aluop_IBUF(1),
      O => res_OBUF(2)
    );
\res_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27726F604EE46F60"
    )
        port map (
      I0 => a_IBUF(1),
      I1 => aluop_IBUF(3),
      I2 => b_IBUF(1),
      I3 => aluop_IBUF(2),
      I4 => b_IBUF(0),
      I5 => a_IBUF(0),
      O => c_2
    );
\res_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => aluop_IBUF(3),
      I1 => a_IBUF(2),
      O => \ciclo[2].alu0/a3_out\
    );
\res_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => banderas_OBUF(2),
      O => res(3)
    );
\res_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996C33CCFFC0CC0"
    )
        port map (
      I0 => c_3,
      I1 => \ciclo[3].alu0/a3_out\,
      I2 => aluop_IBUF(2),
      I3 => b_IBUF(3),
      I4 => aluop_IBUF(0),
      I5 => aluop_IBUF(1),
      O => banderas_OBUF(2)
    );
\res_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FF60660"
    )
        port map (
      I0 => a_IBUF(2),
      I1 => aluop_IBUF(3),
      I2 => b_IBUF(2),
      I3 => aluop_IBUF(2),
      I4 => c_2,
      O => c_3
    );
\res_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => aluop_IBUF(3),
      I1 => a_IBUF(3),
      O => \ciclo[3].alu0/a3_out\
    );
end STRUCTURE;
