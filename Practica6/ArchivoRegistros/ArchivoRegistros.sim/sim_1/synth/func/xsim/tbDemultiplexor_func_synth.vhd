-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Mar 29 19:07:16 2020
-- Host        : OUTERHEAVEN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/YaKerTaker/Google
--               Drive/8vo/Arquitectura-Computadoras/Practica6/ArchivoRegistros/ArchivoRegistros.sim/sim_1/synth/func/xsim/tbDemultiplexor_func_synth.vhd}
-- Design      : ArchivoRegistros
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Demultiplexor is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \writeReg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \writeReg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \writeReg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \writeReg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \writeReg[3]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \writeReg[3]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \writeReg[3]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    writeReg_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_IBUF : in STD_LOGIC
  );
end Demultiplexor;

architecture STRUCTURE of Demultiplexor is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[15]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[15]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[15]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[15]_i_1__2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[15]_i_1__3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q[15]_i_1__4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q[15]_i_1__5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[15]_i_1__6\ : label is "soft_lutpair3";
begin
\q[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => writeReg_IBUF(3),
      I1 => writeReg_IBUF(2),
      I2 => wr_IBUF,
      I3 => writeReg_IBUF(0),
      I4 => writeReg_IBUF(1),
      O => E(0)
    );
\q[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => writeReg_IBUF(3),
      I1 => wr_IBUF,
      I2 => writeReg_IBUF(0),
      I3 => writeReg_IBUF(1),
      I4 => writeReg_IBUF(2),
      O => \writeReg[3]\(0)
    );
\q[15]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => writeReg_IBUF(3),
      I1 => writeReg_IBUF(2),
      I2 => writeReg_IBUF(1),
      I3 => wr_IBUF,
      I4 => writeReg_IBUF(0),
      O => \writeReg[3]_0\(0)
    );
\q[15]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => writeReg_IBUF(3),
      I1 => writeReg_IBUF(1),
      I2 => wr_IBUF,
      I3 => writeReg_IBUF(0),
      I4 => writeReg_IBUF(2),
      O => \writeReg[3]_1\(0)
    );
\q[15]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => writeReg_IBUF(3),
      I1 => writeReg_IBUF(2),
      I2 => writeReg_IBUF(1),
      I3 => writeReg_IBUF(0),
      I4 => wr_IBUF,
      O => \writeReg[3]_2\(0)
    );
\q[15]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => writeReg_IBUF(3),
      I1 => writeReg_IBUF(1),
      I2 => writeReg_IBUF(0),
      I3 => wr_IBUF,
      I4 => writeReg_IBUF(2),
      O => \writeReg[3]_3\(0)
    );
\q[15]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => writeReg_IBUF(3),
      I1 => writeReg_IBUF(0),
      I2 => wr_IBUF,
      I3 => writeReg_IBUF(1),
      I4 => writeReg_IBUF(2),
      O => \writeReg[3]_4\(0)
    );
\q[15]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => writeReg_IBUF(3),
      I1 => writeReg_IBUF(2),
      I2 => writeReg_IBUF(0),
      I3 => wr_IBUF,
      I4 => writeReg_IBUF(1),
      O => \writeReg[3]_5\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    writeReg_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Registro;

architecture STRUCTURE of Registro is
  signal \q[15]_i_1__6_n_0\ : STD_LOGIC;
begin
\q[15]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => writeReg_IBUF(2),
      I1 => writeReg_IBUF(0),
      I2 => wr_IBUF,
      I3 => writeReg_IBUF(1),
      I4 => writeReg_IBUF(3),
      O => \q[15]_i_1__6_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__6_n_0\,
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_0 : entity is "Registro";
end Registro_0;

architecture STRUCTURE of Registro_0 is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_1 is
  port (
    \readReg1[2]\ : out STD_LOGIC;
    \readReg1[2]_0\ : out STD_LOGIC;
    \readReg1[2]_1\ : out STD_LOGIC;
    \readReg1[2]_2\ : out STD_LOGIC;
    \readReg1[2]_3\ : out STD_LOGIC;
    \readReg1[2]_4\ : out STD_LOGIC;
    \readReg1[2]_5\ : out STD_LOGIC;
    \readReg1[2]_6\ : out STD_LOGIC;
    \readReg1[2]_7\ : out STD_LOGIC;
    \readReg1[2]_8\ : out STD_LOGIC;
    \readReg1[2]_9\ : out STD_LOGIC;
    \readReg1[2]_10\ : out STD_LOGIC;
    \readReg1[2]_11\ : out STD_LOGIC;
    \readReg1[2]_12\ : out STD_LOGIC;
    \readReg1[2]_13\ : out STD_LOGIC;
    \readReg1[2]_14\ : out STD_LOGIC;
    \readReg2[2]\ : out STD_LOGIC;
    \readReg2[2]_0\ : out STD_LOGIC;
    \readReg2[2]_1\ : out STD_LOGIC;
    \readReg2[2]_2\ : out STD_LOGIC;
    \readReg2[2]_3\ : out STD_LOGIC;
    \readReg2[2]_4\ : out STD_LOGIC;
    \readReg2[2]_5\ : out STD_LOGIC;
    \readReg2[2]_6\ : out STD_LOGIC;
    \readReg2[2]_7\ : out STD_LOGIC;
    \readReg2[2]_8\ : out STD_LOGIC;
    \readReg2[2]_9\ : out STD_LOGIC;
    \readReg2[2]_10\ : out STD_LOGIC;
    \readReg2[2]_11\ : out STD_LOGIC;
    \readReg2[2]_12\ : out STD_LOGIC;
    \readReg2[2]_13\ : out STD_LOGIC;
    \readReg2[2]_14\ : out STD_LOGIC;
    readReg1_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \readData1_OBUF[2]_inst_i_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \readData2_OBUF[15]_inst_i_3_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \readData2_OBUF[15]_inst_i_3_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \readData1_OBUF[15]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[14]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[13]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[12]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[11]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[10]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[9]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[8]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[7]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[6]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[5]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[4]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[3]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[1]_inst_i_1\ : in STD_LOGIC;
    \readData1_OBUF[0]_inst_i_1\ : in STD_LOGIC;
    readReg2_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \readData2_OBUF[15]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[14]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[13]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[12]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[11]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[10]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[9]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[8]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[7]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[6]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[5]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[4]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[3]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[2]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[1]_inst_i_1\ : in STD_LOGIC;
    \readData2_OBUF[0]_inst_i_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_1 : entity is "Registro";
end Registro_1;

architecture STRUCTURE of Registro_1 is
  signal \q_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_reg_n_0_[10]\ : STD_LOGIC;
  signal \q_reg_n_0_[11]\ : STD_LOGIC;
  signal \q_reg_n_0_[12]\ : STD_LOGIC;
  signal \q_reg_n_0_[13]\ : STD_LOGIC;
  signal \q_reg_n_0_[14]\ : STD_LOGIC;
  signal \q_reg_n_0_[15]\ : STD_LOGIC;
  signal \q_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_reg_n_0_[8]\ : STD_LOGIC;
  signal \q_reg_n_0_[9]\ : STD_LOGIC;
  signal \readData1_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[13]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[13]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
begin
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => \q_reg_n_0_[0]\
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(10),
      Q => \q_reg_n_0_[10]\
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(11),
      Q => \q_reg_n_0_[11]\
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(12),
      Q => \q_reg_n_0_[12]\
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(13),
      Q => \q_reg_n_0_[13]\
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(14),
      Q => \q_reg_n_0_[14]\
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(15),
      Q => \q_reg_n_0_[15]\
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => \q_reg_n_0_[1]\
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => \q_reg_n_0_[2]\
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => \q_reg_n_0_[3]\
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => \q_reg_n_0_[4]\
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => \q_reg_n_0_[5]\
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => \q_reg_n_0_[6]\
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => \q_reg_n_0_[7]\
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(8),
      Q => \q_reg_n_0_[8]\
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(9),
      Q => \q_reg_n_0_[9]\
    );
\readData1_OBUF[0]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[0]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[0]_inst_i_1\,
      O => \readReg1[2]_14\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(0),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(0),
      O => \readData1_OBUF[0]_inst_i_6_n_0\
    );
\readData1_OBUF[10]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[10]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[10]_inst_i_1\,
      O => \readReg1[2]_5\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => Q(10),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(10),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(10),
      O => \readData1_OBUF[10]_inst_i_6_n_0\
    );
\readData1_OBUF[11]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[11]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[11]_inst_i_1\,
      O => \readReg1[2]_4\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(11),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(11),
      O => \readData1_OBUF[11]_inst_i_6_n_0\
    );
\readData1_OBUF[12]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[12]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[12]_inst_i_1\,
      O => \readReg1[2]_3\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => Q(12),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(12),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(12),
      O => \readData1_OBUF[12]_inst_i_6_n_0\
    );
\readData1_OBUF[13]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[13]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[13]_inst_i_1\,
      O => \readReg1[2]_2\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => Q(13),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(13),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(13),
      O => \readData1_OBUF[13]_inst_i_6_n_0\
    );
\readData1_OBUF[14]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[14]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[14]_inst_i_1\,
      O => \readReg1[2]_1\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => Q(14),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(14),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(14),
      O => \readData1_OBUF[14]_inst_i_6_n_0\
    );
\readData1_OBUF[15]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[15]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[15]_inst_i_1\,
      O => \readReg1[2]_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => Q(15),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(15),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(15),
      O => \readData1_OBUF[15]_inst_i_6_n_0\
    );
\readData1_OBUF[1]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[1]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[1]_inst_i_1\,
      O => \readReg1[2]_13\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(1),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(1),
      O => \readData1_OBUF[1]_inst_i_6_n_0\
    );
\readData1_OBUF[2]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[2]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[2]_inst_i_1\,
      O => \readReg1[2]\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(2),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(2),
      O => \readData1_OBUF[2]_inst_i_6_n_0\
    );
\readData1_OBUF[3]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[3]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[3]_inst_i_1\,
      O => \readReg1[2]_12\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(3),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(3),
      O => \readData1_OBUF[3]_inst_i_6_n_0\
    );
\readData1_OBUF[4]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[4]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[4]_inst_i_1\,
      O => \readReg1[2]_11\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(4),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(4),
      O => \readData1_OBUF[4]_inst_i_6_n_0\
    );
\readData1_OBUF[5]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[5]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[5]_inst_i_1\,
      O => \readReg1[2]_10\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(5),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(5),
      O => \readData1_OBUF[5]_inst_i_6_n_0\
    );
\readData1_OBUF[6]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[6]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[6]_inst_i_1\,
      O => \readReg1[2]_9\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(6),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(6),
      O => \readData1_OBUF[6]_inst_i_6_n_0\
    );
\readData1_OBUF[7]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[7]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[7]_inst_i_1\,
      O => \readReg1[2]_8\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(7),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(7),
      O => \readData1_OBUF[7]_inst_i_6_n_0\
    );
\readData1_OBUF[8]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[8]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[8]_inst_i_1\,
      O => \readReg1[2]_7\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(8),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(8),
      O => \readData1_OBUF[8]_inst_i_6_n_0\
    );
\readData1_OBUF[9]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[9]_inst_i_6_n_0\,
      I1 => \readData1_OBUF[9]_inst_i_1\,
      O => \readReg1[2]_6\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(9),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(9),
      O => \readData1_OBUF[9]_inst_i_6_n_0\
    );
\readData2_OBUF[0]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[0]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[0]_inst_i_1\,
      O => \readReg2[2]_14\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(0),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(0),
      O => \readData2_OBUF[0]_inst_i_6_n_0\
    );
\readData2_OBUF[10]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[10]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[10]_inst_i_1\,
      O => \readReg2[2]_4\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => Q(10),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(10),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(10),
      O => \readData2_OBUF[10]_inst_i_6_n_0\
    );
\readData2_OBUF[11]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[11]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[11]_inst_i_1\,
      O => \readReg2[2]_3\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(11),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(11),
      O => \readData2_OBUF[11]_inst_i_6_n_0\
    );
\readData2_OBUF[12]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[12]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[12]_inst_i_1\,
      O => \readReg2[2]_2\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => Q(12),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(12),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(12),
      O => \readData2_OBUF[12]_inst_i_6_n_0\
    );
\readData2_OBUF[13]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[13]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[13]_inst_i_1\,
      O => \readReg2[2]_1\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => Q(13),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(13),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(13),
      O => \readData2_OBUF[13]_inst_i_6_n_0\
    );
\readData2_OBUF[14]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[14]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[14]_inst_i_1\,
      O => \readReg2[2]_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => Q(14),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(14),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(14),
      O => \readData2_OBUF[14]_inst_i_6_n_0\
    );
\readData2_OBUF[15]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[15]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[15]_inst_i_1\,
      O => \readReg2[2]\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => Q(15),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(15),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(15),
      O => \readData2_OBUF[15]_inst_i_6_n_0\
    );
\readData2_OBUF[1]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[1]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[1]_inst_i_1\,
      O => \readReg2[2]_13\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(1),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(1),
      O => \readData2_OBUF[1]_inst_i_6_n_0\
    );
\readData2_OBUF[2]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[2]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[2]_inst_i_1\,
      O => \readReg2[2]_12\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(2),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(2),
      O => \readData2_OBUF[2]_inst_i_6_n_0\
    );
\readData2_OBUF[3]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[3]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[3]_inst_i_1\,
      O => \readReg2[2]_11\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(3),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(3),
      O => \readData2_OBUF[3]_inst_i_6_n_0\
    );
\readData2_OBUF[4]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[4]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[4]_inst_i_1\,
      O => \readReg2[2]_10\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(4),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(4),
      O => \readData2_OBUF[4]_inst_i_6_n_0\
    );
\readData2_OBUF[5]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[5]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[5]_inst_i_1\,
      O => \readReg2[2]_9\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(5),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(5),
      O => \readData2_OBUF[5]_inst_i_6_n_0\
    );
\readData2_OBUF[6]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[6]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[6]_inst_i_1\,
      O => \readReg2[2]_8\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(6),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(6),
      O => \readData2_OBUF[6]_inst_i_6_n_0\
    );
\readData2_OBUF[7]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[7]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[7]_inst_i_1\,
      O => \readReg2[2]_7\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(7),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(7),
      O => \readData2_OBUF[7]_inst_i_6_n_0\
    );
\readData2_OBUF[8]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[8]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[8]_inst_i_1\,
      O => \readReg2[2]_6\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(8),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(8),
      O => \readData2_OBUF[8]_inst_i_6_n_0\
    );
\readData2_OBUF[9]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[9]_inst_i_6_n_0\,
      I1 => \readData2_OBUF[9]_inst_i_1\,
      O => \readReg2[2]_5\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3_0\(9),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_1\(9),
      O => \readData2_OBUF[9]_inst_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_10 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_IBUF : in STD_LOGIC;
    writeReg_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_10 : entity is "Registro";
end Registro_10;

architecture STRUCTURE of Registro_10 is
  signal \q[15]_i_1__0_n_0\ : STD_LOGIC;
begin
\q[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => wr_IBUF,
      I1 => writeReg_IBUF(0),
      I2 => writeReg_IBUF(1),
      I3 => writeReg_IBUF(2),
      I4 => writeReg_IBUF(3),
      O => \q[15]_i_1__0_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__0_n_0\,
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_11 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    writeReg_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_11 : entity is "Registro";
end Registro_11;

architecture STRUCTURE of Registro_11 is
  signal \q[15]_i_1__4_n_0\ : STD_LOGIC;
begin
\q[15]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => writeReg_IBUF(1),
      I1 => writeReg_IBUF(0),
      I2 => wr_IBUF,
      I3 => writeReg_IBUF(2),
      I4 => writeReg_IBUF(3),
      O => \q[15]_i_1__4_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__4_n_0\,
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_12 is
  port (
    \q_reg[2]_0\ : out STD_LOGIC;
    \q_reg[15]_0\ : out STD_LOGIC;
    \q_reg[14]_0\ : out STD_LOGIC;
    \q_reg[13]_0\ : out STD_LOGIC;
    \q_reg[12]_0\ : out STD_LOGIC;
    \q_reg[11]_0\ : out STD_LOGIC;
    \q_reg[10]_0\ : out STD_LOGIC;
    \q_reg[9]_0\ : out STD_LOGIC;
    \q_reg[8]_0\ : out STD_LOGIC;
    \q_reg[7]_0\ : out STD_LOGIC;
    \q_reg[6]_0\ : out STD_LOGIC;
    \q_reg[5]_0\ : out STD_LOGIC;
    \q_reg[4]_0\ : out STD_LOGIC;
    \q_reg[3]_0\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    \q_reg[15]_1\ : out STD_LOGIC;
    \q_reg[14]_1\ : out STD_LOGIC;
    \q_reg[13]_1\ : out STD_LOGIC;
    \q_reg[12]_1\ : out STD_LOGIC;
    \q_reg[11]_1\ : out STD_LOGIC;
    \q_reg[10]_1\ : out STD_LOGIC;
    \q_reg[9]_1\ : out STD_LOGIC;
    \q_reg[8]_1\ : out STD_LOGIC;
    \q_reg[7]_1\ : out STD_LOGIC;
    \q_reg[6]_1\ : out STD_LOGIC;
    \q_reg[5]_1\ : out STD_LOGIC;
    \q_reg[4]_1\ : out STD_LOGIC;
    \q_reg[3]_1\ : out STD_LOGIC;
    \q_reg[2]_1\ : out STD_LOGIC;
    \q_reg[1]_1\ : out STD_LOGIC;
    \q_reg[0]_1\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    readReg1_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readData2_OBUF[15]_inst_i_2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \readData2_OBUF[15]_inst_i_2_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    readReg2_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    writeReg_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_12 : entity is "Registro";
end Registro_12;

architecture STRUCTURE of Registro_12 is
  signal \q[15]_i_1__2_n_0\ : STD_LOGIC;
  signal \q_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_reg_n_0_[10]\ : STD_LOGIC;
  signal \q_reg_n_0_[11]\ : STD_LOGIC;
  signal \q_reg_n_0_[12]\ : STD_LOGIC;
  signal \q_reg_n_0_[13]\ : STD_LOGIC;
  signal \q_reg_n_0_[14]\ : STD_LOGIC;
  signal \q_reg_n_0_[15]\ : STD_LOGIC;
  signal \q_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_reg_n_0_[8]\ : STD_LOGIC;
  signal \q_reg_n_0_[9]\ : STD_LOGIC;
begin
\q[15]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => writeReg_IBUF(1),
      I1 => wr_IBUF,
      I2 => writeReg_IBUF(0),
      I3 => writeReg_IBUF(2),
      I4 => writeReg_IBUF(3),
      O => \q[15]_i_1__2_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(0),
      Q => \q_reg_n_0_[0]\
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(10),
      Q => \q_reg_n_0_[10]\
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(11),
      Q => \q_reg_n_0_[11]\
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(12),
      Q => \q_reg_n_0_[12]\
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(13),
      Q => \q_reg_n_0_[13]\
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(14),
      Q => \q_reg_n_0_[14]\
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(15),
      Q => \q_reg_n_0_[15]\
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(1),
      Q => \q_reg_n_0_[1]\
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(2),
      Q => \q_reg_n_0_[2]\
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(3),
      Q => \q_reg_n_0_[3]\
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(4),
      Q => \q_reg_n_0_[4]\
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(5),
      Q => \q_reg_n_0_[5]\
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(6),
      Q => \q_reg_n_0_[6]\
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(7),
      Q => \q_reg_n_0_[7]\
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(8),
      Q => \q_reg_n_0_[8]\
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__2_n_0\,
      CLR => AR(0),
      D => D(9),
      Q => \q_reg_n_0_[9]\
    );
\readData1_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(0),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(0),
      O => \q_reg[0]_0\
    );
\readData1_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => Q(10),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(10),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(10),
      O => \q_reg[10]_0\
    );
\readData1_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(11),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(11),
      O => \q_reg[11]_0\
    );
\readData1_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => Q(12),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(12),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(12),
      O => \q_reg[12]_0\
    );
\readData1_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => Q(13),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(13),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(13),
      O => \q_reg[13]_0\
    );
\readData1_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => Q(14),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(14),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(14),
      O => \q_reg[14]_0\
    );
\readData1_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => Q(15),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(15),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(15),
      O => \q_reg[15]_0\
    );
\readData1_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(1),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(1),
      O => \q_reg[1]_0\
    );
\readData1_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(2),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(2),
      O => \q_reg[2]_0\
    );
\readData1_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(3),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(3),
      O => \q_reg[3]_0\
    );
\readData1_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(4),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(4),
      O => \q_reg[4]_0\
    );
\readData1_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(5),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(5),
      O => \q_reg[5]_0\
    );
\readData1_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(6),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(6),
      O => \q_reg[6]_0\
    );
\readData1_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(7),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(7),
      O => \q_reg[7]_0\
    );
\readData1_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(8),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(8),
      O => \q_reg[8]_0\
    );
\readData1_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(9),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(9),
      O => \q_reg[9]_0\
    );
\readData2_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(0),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(0),
      O => \q_reg[0]_1\
    );
\readData2_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => Q(10),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(10),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(10),
      O => \q_reg[10]_1\
    );
\readData2_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(11),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(11),
      O => \q_reg[11]_1\
    );
\readData2_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => Q(12),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(12),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(12),
      O => \q_reg[12]_1\
    );
\readData2_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => Q(13),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(13),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(13),
      O => \q_reg[13]_1\
    );
\readData2_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => Q(14),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(14),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(14),
      O => \q_reg[14]_1\
    );
\readData2_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => Q(15),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(15),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(15),
      O => \q_reg[15]_1\
    );
\readData2_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(1),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(1),
      O => \q_reg[1]_1\
    );
\readData2_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(2),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(2),
      O => \q_reg[2]_1\
    );
\readData2_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(3),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(3),
      O => \q_reg[3]_1\
    );
\readData2_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(4),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(4),
      O => \q_reg[4]_1\
    );
\readData2_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(5),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(5),
      O => \q_reg[5]_1\
    );
\readData2_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(6),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(6),
      O => \q_reg[6]_1\
    );
\readData2_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(7),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(7),
      O => \q_reg[7]_1\
    );
\readData2_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(8),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(8),
      O => \q_reg[8]_1\
    );
\readData2_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2\(9),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_0\(9),
      O => \q_reg[9]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_13 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_13 : entity is "Registro";
end Registro_13;

architecture STRUCTURE of Registro_13 is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_14 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_14 : entity is "Registro";
end Registro_14;

architecture STRUCTURE of Registro_14 is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_2 : entity is "Registro";
end Registro_2;

architecture STRUCTURE of Registro_2 is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_3 : entity is "Registro";
end Registro_3;

architecture STRUCTURE of Registro_3 is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_4 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_4 : entity is "Registro";
end Registro_4;

architecture STRUCTURE of Registro_4 is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_5 is
  port (
    \q_reg[2]_0\ : out STD_LOGIC;
    \q_reg[15]_0\ : out STD_LOGIC;
    \q_reg[14]_0\ : out STD_LOGIC;
    \q_reg[13]_0\ : out STD_LOGIC;
    \q_reg[12]_0\ : out STD_LOGIC;
    \q_reg[11]_0\ : out STD_LOGIC;
    \q_reg[10]_0\ : out STD_LOGIC;
    \q_reg[9]_0\ : out STD_LOGIC;
    \q_reg[8]_0\ : out STD_LOGIC;
    \q_reg[7]_0\ : out STD_LOGIC;
    \q_reg[6]_0\ : out STD_LOGIC;
    \q_reg[5]_0\ : out STD_LOGIC;
    \q_reg[4]_0\ : out STD_LOGIC;
    \q_reg[3]_0\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    \q_reg[15]_1\ : out STD_LOGIC;
    \q_reg[14]_1\ : out STD_LOGIC;
    \q_reg[13]_1\ : out STD_LOGIC;
    \q_reg[12]_1\ : out STD_LOGIC;
    \q_reg[11]_1\ : out STD_LOGIC;
    \q_reg[10]_1\ : out STD_LOGIC;
    \q_reg[9]_1\ : out STD_LOGIC;
    \q_reg[8]_1\ : out STD_LOGIC;
    \q_reg[7]_1\ : out STD_LOGIC;
    \q_reg[6]_1\ : out STD_LOGIC;
    \q_reg[5]_1\ : out STD_LOGIC;
    \q_reg[4]_1\ : out STD_LOGIC;
    \q_reg[3]_1\ : out STD_LOGIC;
    \q_reg[2]_1\ : out STD_LOGIC;
    \q_reg[1]_1\ : out STD_LOGIC;
    \q_reg[0]_1\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    readReg1_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readData2_OBUF[15]_inst_i_3\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \readData2_OBUF[15]_inst_i_3_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    readReg2_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_5 : entity is "Registro";
end Registro_5;

architecture STRUCTURE of Registro_5 is
  signal \q_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_reg_n_0_[10]\ : STD_LOGIC;
  signal \q_reg_n_0_[11]\ : STD_LOGIC;
  signal \q_reg_n_0_[12]\ : STD_LOGIC;
  signal \q_reg_n_0_[13]\ : STD_LOGIC;
  signal \q_reg_n_0_[14]\ : STD_LOGIC;
  signal \q_reg_n_0_[15]\ : STD_LOGIC;
  signal \q_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_reg_n_0_[8]\ : STD_LOGIC;
  signal \q_reg_n_0_[9]\ : STD_LOGIC;
begin
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => \q_reg_n_0_[0]\
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(10),
      Q => \q_reg_n_0_[10]\
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(11),
      Q => \q_reg_n_0_[11]\
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(12),
      Q => \q_reg_n_0_[12]\
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(13),
      Q => \q_reg_n_0_[13]\
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(14),
      Q => \q_reg_n_0_[14]\
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(15),
      Q => \q_reg_n_0_[15]\
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => \q_reg_n_0_[1]\
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => \q_reg_n_0_[2]\
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => \q_reg_n_0_[3]\
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => \q_reg_n_0_[4]\
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => \q_reg_n_0_[5]\
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => \q_reg_n_0_[6]\
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => \q_reg_n_0_[7]\
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(8),
      Q => \q_reg_n_0_[8]\
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(9),
      Q => \q_reg_n_0_[9]\
    );
\readData1_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(0),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(0),
      O => \q_reg[0]_0\
    );
\readData1_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => Q(10),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(10),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(10),
      O => \q_reg[10]_0\
    );
\readData1_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(11),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(11),
      O => \q_reg[11]_0\
    );
\readData1_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => Q(12),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(12),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(12),
      O => \q_reg[12]_0\
    );
\readData1_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => Q(13),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(13),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(13),
      O => \q_reg[13]_0\
    );
\readData1_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => Q(14),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(14),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(14),
      O => \q_reg[14]_0\
    );
\readData1_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => Q(15),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(15),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(15),
      O => \q_reg[15]_0\
    );
\readData1_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(1),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(1),
      O => \q_reg[1]_0\
    );
\readData1_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(2),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(2),
      O => \q_reg[2]_0\
    );
\readData1_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(3),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(3),
      O => \q_reg[3]_0\
    );
\readData1_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(4),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(4),
      O => \q_reg[4]_0\
    );
\readData1_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(5),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(5),
      O => \q_reg[5]_0\
    );
\readData1_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(6),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(6),
      O => \q_reg[6]_0\
    );
\readData1_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(7),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(7),
      O => \q_reg[7]_0\
    );
\readData1_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(8),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(8),
      O => \q_reg[8]_0\
    );
\readData1_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(9),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(9),
      O => \q_reg[9]_0\
    );
\readData2_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(0),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(0),
      O => \q_reg[0]_1\
    );
\readData2_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => Q(10),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(10),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(10),
      O => \q_reg[10]_1\
    );
\readData2_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(11),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(11),
      O => \q_reg[11]_1\
    );
\readData2_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => Q(12),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(12),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(12),
      O => \q_reg[12]_1\
    );
\readData2_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => Q(13),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(13),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(13),
      O => \q_reg[13]_1\
    );
\readData2_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => Q(14),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(14),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(14),
      O => \q_reg[14]_1\
    );
\readData2_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => Q(15),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(15),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(15),
      O => \q_reg[15]_1\
    );
\readData2_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(1),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(1),
      O => \q_reg[1]_1\
    );
\readData2_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(2),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(2),
      O => \q_reg[2]_1\
    );
\readData2_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(3),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(3),
      O => \q_reg[3]_1\
    );
\readData2_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(4),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(4),
      O => \q_reg[4]_1\
    );
\readData2_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(5),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(5),
      O => \q_reg[5]_1\
    );
\readData2_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(6),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(6),
      O => \q_reg[6]_1\
    );
\readData2_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(7),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(7),
      O => \q_reg[7]_1\
    );
\readData2_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(8),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(8),
      O => \q_reg[8]_1\
    );
\readData2_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_3\(9),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_3_0\(9),
      O => \q_reg[9]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_6 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    writeReg_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_6 : entity is "Registro";
end Registro_6;

architecture STRUCTURE of Registro_6 is
  signal \q[15]_i_1_n_0\ : STD_LOGIC;
begin
\q[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => writeReg_IBUF(2),
      I1 => wr_IBUF,
      I2 => writeReg_IBUF(0),
      I3 => writeReg_IBUF(1),
      I4 => writeReg_IBUF(3),
      O => \q[15]_i_1_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1_n_0\,
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_7 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    writeReg_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_7 : entity is "Registro";
end Registro_7;

architecture STRUCTURE of Registro_7 is
  signal \q[15]_i_1__3_n_0\ : STD_LOGIC;
begin
\q[15]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => writeReg_IBUF(2),
      I1 => writeReg_IBUF(1),
      I2 => writeReg_IBUF(0),
      I3 => wr_IBUF,
      I4 => writeReg_IBUF(3),
      O => \q[15]_i_1__3_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__3_n_0\,
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_8 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    readData1_OBUF : out STD_LOGIC_VECTOR ( 15 downto 0 );
    readData2_OBUF : out STD_LOGIC_VECTOR ( 15 downto 0 );
    shamt_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    she_IBUF : in STD_LOGIC;
    writeData_IBUF : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dir_IBUF : in STD_LOGIC;
    readReg1_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \readData1[2]\ : in STD_LOGIC;
    \readData1_OBUF[2]_inst_i_1_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \readData2_OBUF[15]_inst_i_2_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \readData2_OBUF[15]_inst_i_2_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \readData1[15]\ : in STD_LOGIC;
    \readData1_OBUF[15]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[14]\ : in STD_LOGIC;
    \readData1_OBUF[14]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[13]\ : in STD_LOGIC;
    \readData1_OBUF[13]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[12]\ : in STD_LOGIC;
    \readData1_OBUF[12]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[11]\ : in STD_LOGIC;
    \readData1_OBUF[11]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[10]\ : in STD_LOGIC;
    \readData1_OBUF[10]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[9]\ : in STD_LOGIC;
    \readData1_OBUF[9]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[8]\ : in STD_LOGIC;
    \readData1_OBUF[8]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[7]\ : in STD_LOGIC;
    \readData1_OBUF[7]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[6]\ : in STD_LOGIC;
    \readData1_OBUF[6]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[5]\ : in STD_LOGIC;
    \readData1_OBUF[5]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[4]\ : in STD_LOGIC;
    \readData1_OBUF[4]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[3]\ : in STD_LOGIC;
    \readData1_OBUF[3]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[1]\ : in STD_LOGIC;
    \readData1_OBUF[1]_inst_i_1_0\ : in STD_LOGIC;
    \readData1[0]\ : in STD_LOGIC;
    \readData1_OBUF[0]_inst_i_1_0\ : in STD_LOGIC;
    readReg2_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \readData2[15]\ : in STD_LOGIC;
    \readData2_OBUF[15]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[14]\ : in STD_LOGIC;
    \readData2_OBUF[14]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[13]\ : in STD_LOGIC;
    \readData2_OBUF[13]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[12]\ : in STD_LOGIC;
    \readData2_OBUF[12]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[11]\ : in STD_LOGIC;
    \readData2_OBUF[11]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[10]\ : in STD_LOGIC;
    \readData2_OBUF[10]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[9]\ : in STD_LOGIC;
    \readData2_OBUF[9]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[8]\ : in STD_LOGIC;
    \readData2_OBUF[8]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[7]\ : in STD_LOGIC;
    \readData2_OBUF[7]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[6]\ : in STD_LOGIC;
    \readData2_OBUF[6]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[5]\ : in STD_LOGIC;
    \readData2_OBUF[5]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[4]\ : in STD_LOGIC;
    \readData2_OBUF[4]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[3]\ : in STD_LOGIC;
    \readData2_OBUF[3]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[2]\ : in STD_LOGIC;
    \readData2_OBUF[2]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[1]\ : in STD_LOGIC;
    \readData2_OBUF[1]_inst_i_1_0\ : in STD_LOGIC;
    \readData2[0]\ : in STD_LOGIC;
    \readData2_OBUF[0]_inst_i_1_0\ : in STD_LOGIC;
    writeReg_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_8 : entity is "Registro";
end Registro_8;

architecture STRUCTURE of Registro_8 is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \q[0]_i_2_n_0\ : STD_LOGIC;
  signal \q[0]_i_3_n_0\ : STD_LOGIC;
  signal \q[0]_i_4_n_0\ : STD_LOGIC;
  signal \q[10]_i_2_n_0\ : STD_LOGIC;
  signal \q[10]_i_3_n_0\ : STD_LOGIC;
  signal \q[10]_i_4_n_0\ : STD_LOGIC;
  signal \q[11]_i_2_n_0\ : STD_LOGIC;
  signal \q[11]_i_3_n_0\ : STD_LOGIC;
  signal \q[11]_i_4_n_0\ : STD_LOGIC;
  signal \q[12]_i_2_n_0\ : STD_LOGIC;
  signal \q[12]_i_3_n_0\ : STD_LOGIC;
  signal \q[12]_i_4_n_0\ : STD_LOGIC;
  signal \q[12]_i_5_n_0\ : STD_LOGIC;
  signal \q[12]_i_6_n_0\ : STD_LOGIC;
  signal \q[12]_i_7_n_0\ : STD_LOGIC;
  signal \q[12]_i_8_n_0\ : STD_LOGIC;
  signal \q[13]_i_2_n_0\ : STD_LOGIC;
  signal \q[13]_i_3_n_0\ : STD_LOGIC;
  signal \q[13]_i_4_n_0\ : STD_LOGIC;
  signal \q[13]_i_5_n_0\ : STD_LOGIC;
  signal \q[13]_i_6_n_0\ : STD_LOGIC;
  signal \q[13]_i_7_n_0\ : STD_LOGIC;
  signal \q[13]_i_8_n_0\ : STD_LOGIC;
  signal \q[14]_i_2_n_0\ : STD_LOGIC;
  signal \q[14]_i_3_n_0\ : STD_LOGIC;
  signal \q[14]_i_4_n_0\ : STD_LOGIC;
  signal \q[14]_i_5_n_0\ : STD_LOGIC;
  signal \q[14]_i_6_n_0\ : STD_LOGIC;
  signal \q[14]_i_7_n_0\ : STD_LOGIC;
  signal \q[14]_i_8_n_0\ : STD_LOGIC;
  signal \q[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \q[15]_i_3_n_0\ : STD_LOGIC;
  signal \q[15]_i_4_n_0\ : STD_LOGIC;
  signal \q[15]_i_5_n_0\ : STD_LOGIC;
  signal \q[15]_i_6_n_0\ : STD_LOGIC;
  signal \q[15]_i_7_n_0\ : STD_LOGIC;
  signal \q[15]_i_8_n_0\ : STD_LOGIC;
  signal \q[15]_i_9_n_0\ : STD_LOGIC;
  signal \q[1]_i_2_n_0\ : STD_LOGIC;
  signal \q[1]_i_3_n_0\ : STD_LOGIC;
  signal \q[1]_i_4_n_0\ : STD_LOGIC;
  signal \q[2]_i_2_n_0\ : STD_LOGIC;
  signal \q[2]_i_3_n_0\ : STD_LOGIC;
  signal \q[2]_i_4_n_0\ : STD_LOGIC;
  signal \q[3]_i_2_n_0\ : STD_LOGIC;
  signal \q[3]_i_3_n_0\ : STD_LOGIC;
  signal \q[3]_i_4_n_0\ : STD_LOGIC;
  signal \q[4]_i_2_n_0\ : STD_LOGIC;
  signal \q[4]_i_3_n_0\ : STD_LOGIC;
  signal \q[4]_i_4_n_0\ : STD_LOGIC;
  signal \q[5]_i_2_n_0\ : STD_LOGIC;
  signal \q[5]_i_3_n_0\ : STD_LOGIC;
  signal \q[5]_i_4_n_0\ : STD_LOGIC;
  signal \q[6]_i_2_n_0\ : STD_LOGIC;
  signal \q[6]_i_3_n_0\ : STD_LOGIC;
  signal \q[6]_i_4_n_0\ : STD_LOGIC;
  signal \q[7]_i_2_n_0\ : STD_LOGIC;
  signal \q[7]_i_3_n_0\ : STD_LOGIC;
  signal \q[7]_i_4_n_0\ : STD_LOGIC;
  signal \q[8]_i_2_n_0\ : STD_LOGIC;
  signal \q[8]_i_3_n_0\ : STD_LOGIC;
  signal \q[8]_i_4_n_0\ : STD_LOGIC;
  signal \q[9]_i_2_n_0\ : STD_LOGIC;
  signal \q[9]_i_3_n_0\ : STD_LOGIC;
  signal \q[9]_i_4_n_0\ : STD_LOGIC;
  signal \q_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_reg_n_0_[10]\ : STD_LOGIC;
  signal \q_reg_n_0_[11]\ : STD_LOGIC;
  signal \q_reg_n_0_[12]\ : STD_LOGIC;
  signal \q_reg_n_0_[13]\ : STD_LOGIC;
  signal \q_reg_n_0_[14]\ : STD_LOGIC;
  signal \q_reg_n_0_[15]\ : STD_LOGIC;
  signal \q_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_reg_n_0_[8]\ : STD_LOGIC;
  signal \q_reg_n_0_[9]\ : STD_LOGIC;
  signal \^readdata1_obuf\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \readData1_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData1_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \readData2_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[0]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[10]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[11]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[12]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[12]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q[13]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[13]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q[13]_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[14]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[14]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q[14]_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[15]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q[15]_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q[1]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[2]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[3]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[4]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[6]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[7]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q[8]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[9]_i_2\ : label is "soft_lutpair5";
begin
  D(15 downto 0) <= \^d\(15 downto 0);
  readData1_OBUF(15 downto 0) <= \^readdata1_obuf\(15 downto 0);
\q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[0]_i_2_n_0\,
      I1 => shamt_IBUF(3),
      I2 => \q[0]_i_3_n_0\,
      I3 => she_IBUF,
      I4 => writeData_IBUF(0),
      O => \^d\(0)
    );
\q[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \q[12]_i_8_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[8]_i_4_n_0\,
      I3 => dir_IBUF,
      O => \q[0]_i_2_n_0\
    );
\q[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \q[4]_i_4_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[12]_i_4_n_0\,
      I3 => dir_IBUF,
      I4 => \q[0]_i_4_n_0\,
      O => \q[0]_i_3_n_0\
    );
\q[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(3),
      I1 => \^readdata1_obuf\(2),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(1),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(0),
      O => \q[0]_i_4_n_0\
    );
\q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \q[10]_i_2_n_0\,
      I1 => shamt_IBUF(2),
      I2 => shamt_IBUF(3),
      I3 => \q[10]_i_3_n_0\,
      I4 => she_IBUF,
      I5 => writeData_IBUF(10),
      O => \^d\(10)
    );
\q[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q[14]_i_4_n_0\,
      I1 => dir_IBUF,
      O => \q[10]_i_2_n_0\
    );
\q[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[14]_i_5_n_0\,
      I1 => \q[14]_i_8_n_0\,
      I2 => shamt_IBUF(2),
      I3 => \q[14]_i_6_n_0\,
      I4 => dir_IBUF,
      I5 => \q[10]_i_4_n_0\,
      O => \q[10]_i_3_n_0\
    );
\q[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(13),
      I1 => \^readdata1_obuf\(12),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(11),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(10),
      O => \q[10]_i_4_n_0\
    );
\q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \q[11]_i_2_n_0\,
      I1 => shamt_IBUF(2),
      I2 => shamt_IBUF(3),
      I3 => \q[11]_i_3_n_0\,
      I4 => she_IBUF,
      I5 => writeData_IBUF(11),
      O => \^d\(11)
    );
\q[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q[15]_i_5_n_0\,
      I1 => dir_IBUF,
      O => \q[11]_i_2_n_0\
    );
\q[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[15]_i_6_n_0\,
      I1 => \q[15]_i_9_n_0\,
      I2 => shamt_IBUF(2),
      I3 => \q[15]_i_7_n_0\,
      I4 => dir_IBUF,
      I5 => \q[11]_i_4_n_0\,
      O => \q[11]_i_3_n_0\
    );
\q[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(14),
      I1 => \^readdata1_obuf\(13),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(12),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(11),
      O => \q[11]_i_4_n_0\
    );
\q[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[12]_i_2_n_0\,
      I1 => shamt_IBUF(3),
      I2 => \q[12]_i_3_n_0\,
      I3 => she_IBUF,
      I4 => writeData_IBUF(12),
      O => \^d\(12)
    );
\q[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \q[12]_i_4_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[12]_i_5_n_0\,
      I3 => dir_IBUF,
      O => \q[12]_i_2_n_0\
    );
\q[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \q[12]_i_6_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[12]_i_7_n_0\,
      I3 => dir_IBUF,
      I4 => \q[12]_i_8_n_0\,
      O => \q[12]_i_3_n_0\
    );
\q[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => shamt_IBUF(0),
      I1 => \^readdata1_obuf\(0),
      I2 => shamt_IBUF(1),
      O => \q[12]_i_4_n_0\
    );
\q[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(1),
      I1 => \^readdata1_obuf\(2),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(3),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(4),
      O => \q[12]_i_5_n_0\
    );
\q[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(5),
      I1 => \^readdata1_obuf\(6),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(7),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(8),
      O => \q[12]_i_6_n_0\
    );
\q[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(9),
      I1 => \^readdata1_obuf\(10),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(11),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(12),
      O => \q[12]_i_7_n_0\
    );
\q[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(15),
      I1 => \^readdata1_obuf\(14),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(13),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(12),
      O => \q[12]_i_8_n_0\
    );
\q[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[13]_i_2_n_0\,
      I1 => shamt_IBUF(3),
      I2 => \q[13]_i_3_n_0\,
      I3 => she_IBUF,
      I4 => writeData_IBUF(13),
      O => \^d\(13)
    );
\q[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \q[13]_i_4_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[13]_i_5_n_0\,
      I3 => dir_IBUF,
      O => \q[13]_i_2_n_0\
    );
\q[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \q[13]_i_6_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[13]_i_7_n_0\,
      I3 => dir_IBUF,
      I4 => \q[13]_i_8_n_0\,
      O => \q[13]_i_3_n_0\
    );
\q[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^readdata1_obuf\(1),
      I1 => shamt_IBUF(0),
      I2 => \^readdata1_obuf\(0),
      I3 => shamt_IBUF(1),
      O => \q[13]_i_4_n_0\
    );
\q[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(2),
      I1 => \^readdata1_obuf\(3),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(4),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(5),
      O => \q[13]_i_5_n_0\
    );
\q[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(6),
      I1 => \^readdata1_obuf\(7),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(8),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(9),
      O => \q[13]_i_6_n_0\
    );
\q[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(10),
      I1 => \^readdata1_obuf\(11),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(12),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(13),
      O => \q[13]_i_7_n_0\
    );
\q[13]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^readdata1_obuf\(15),
      I1 => shamt_IBUF(1),
      I2 => \^readdata1_obuf\(14),
      I3 => shamt_IBUF(0),
      I4 => \^readdata1_obuf\(13),
      O => \q[13]_i_8_n_0\
    );
\q[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[14]_i_2_n_0\,
      I1 => shamt_IBUF(3),
      I2 => \q[14]_i_3_n_0\,
      I3 => she_IBUF,
      I4 => writeData_IBUF(14),
      O => \^d\(14)
    );
\q[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \q[14]_i_4_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[14]_i_5_n_0\,
      I3 => dir_IBUF,
      O => \q[14]_i_2_n_0\
    );
\q[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \q[14]_i_6_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[14]_i_7_n_0\,
      I3 => dir_IBUF,
      I4 => \q[14]_i_8_n_0\,
      O => \q[14]_i_3_n_0\
    );
\q[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^readdata1_obuf\(0),
      I1 => shamt_IBUF(1),
      I2 => \^readdata1_obuf\(1),
      I3 => shamt_IBUF(0),
      I4 => \^readdata1_obuf\(2),
      O => \q[14]_i_4_n_0\
    );
\q[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(3),
      I1 => \^readdata1_obuf\(4),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(5),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(6),
      O => \q[14]_i_5_n_0\
    );
\q[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(7),
      I1 => \^readdata1_obuf\(8),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(9),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(10),
      O => \q[14]_i_6_n_0\
    );
\q[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(11),
      I1 => \^readdata1_obuf\(12),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(13),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(14),
      O => \q[14]_i_7_n_0\
    );
\q[14]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^readdata1_obuf\(14),
      I1 => shamt_IBUF(0),
      I2 => \^readdata1_obuf\(15),
      I3 => shamt_IBUF(1),
      O => \q[14]_i_8_n_0\
    );
\q[15]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => writeReg_IBUF(2),
      I1 => writeReg_IBUF(1),
      I2 => wr_IBUF,
      I3 => writeReg_IBUF(0),
      I4 => writeReg_IBUF(3),
      O => \q[15]_i_1__1_n_0\
    );
\q[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[15]_i_3_n_0\,
      I1 => shamt_IBUF(3),
      I2 => \q[15]_i_4_n_0\,
      I3 => she_IBUF,
      I4 => writeData_IBUF(15),
      O => \^d\(15)
    );
\q[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \q[15]_i_5_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[15]_i_6_n_0\,
      I3 => dir_IBUF,
      O => \q[15]_i_3_n_0\
    );
\q[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \q[15]_i_7_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[15]_i_8_n_0\,
      I3 => dir_IBUF,
      I4 => \q[15]_i_9_n_0\,
      O => \q[15]_i_4_n_0\
    );
\q[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(0),
      I1 => \^readdata1_obuf\(1),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(2),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(3),
      O => \q[15]_i_5_n_0\
    );
\q[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(4),
      I1 => \^readdata1_obuf\(5),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(6),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(7),
      O => \q[15]_i_6_n_0\
    );
\q[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(8),
      I1 => \^readdata1_obuf\(9),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(10),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(11),
      O => \q[15]_i_7_n_0\
    );
\q[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(12),
      I1 => \^readdata1_obuf\(13),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(14),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(15),
      O => \q[15]_i_8_n_0\
    );
\q[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => shamt_IBUF(0),
      I1 => \^readdata1_obuf\(15),
      I2 => shamt_IBUF(1),
      O => \q[15]_i_9_n_0\
    );
\q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[1]_i_2_n_0\,
      I1 => shamt_IBUF(3),
      I2 => \q[1]_i_3_n_0\,
      I3 => she_IBUF,
      I4 => writeData_IBUF(1),
      O => \^d\(1)
    );
\q[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \q[13]_i_8_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[9]_i_4_n_0\,
      I3 => dir_IBUF,
      O => \q[1]_i_2_n_0\
    );
\q[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \q[5]_i_4_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[13]_i_4_n_0\,
      I3 => dir_IBUF,
      I4 => \q[1]_i_4_n_0\,
      O => \q[1]_i_3_n_0\
    );
\q[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(4),
      I1 => \^readdata1_obuf\(3),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(2),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(1),
      O => \q[1]_i_4_n_0\
    );
\q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[2]_i_2_n_0\,
      I1 => shamt_IBUF(3),
      I2 => \q[2]_i_3_n_0\,
      I3 => she_IBUF,
      I4 => writeData_IBUF(2),
      O => \^d\(2)
    );
\q[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \q[14]_i_8_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[10]_i_4_n_0\,
      I3 => dir_IBUF,
      O => \q[2]_i_2_n_0\
    );
\q[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \q[6]_i_4_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[14]_i_4_n_0\,
      I3 => dir_IBUF,
      I4 => \q[2]_i_4_n_0\,
      O => \q[2]_i_3_n_0\
    );
\q[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(5),
      I1 => \^readdata1_obuf\(4),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(3),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(2),
      O => \q[2]_i_4_n_0\
    );
\q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[3]_i_2_n_0\,
      I1 => shamt_IBUF(3),
      I2 => \q[3]_i_3_n_0\,
      I3 => she_IBUF,
      I4 => writeData_IBUF(3),
      O => \^d\(3)
    );
\q[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \q[15]_i_9_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[11]_i_4_n_0\,
      I3 => dir_IBUF,
      O => \q[3]_i_2_n_0\
    );
\q[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \q[7]_i_4_n_0\,
      I1 => shamt_IBUF(2),
      I2 => \q[15]_i_5_n_0\,
      I3 => dir_IBUF,
      I4 => \q[3]_i_4_n_0\,
      O => \q[3]_i_3_n_0\
    );
\q[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(6),
      I1 => \^readdata1_obuf\(5),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(4),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(3),
      O => \q[3]_i_4_n_0\
    );
\q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \q[4]_i_2_n_0\,
      I1 => shamt_IBUF(2),
      I2 => shamt_IBUF(3),
      I3 => \q[4]_i_3_n_0\,
      I4 => she_IBUF,
      I5 => writeData_IBUF(4),
      O => \^d\(4)
    );
\q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q[12]_i_8_n_0\,
      I1 => dir_IBUF,
      O => \q[4]_i_2_n_0\
    );
\q[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[12]_i_4_n_0\,
      I1 => \q[8]_i_4_n_0\,
      I2 => shamt_IBUF(2),
      I3 => \q[12]_i_5_n_0\,
      I4 => dir_IBUF,
      I5 => \q[4]_i_4_n_0\,
      O => \q[4]_i_3_n_0\
    );
\q[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(7),
      I1 => \^readdata1_obuf\(6),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(5),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(4),
      O => \q[4]_i_4_n_0\
    );
\q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \q[5]_i_2_n_0\,
      I1 => shamt_IBUF(2),
      I2 => shamt_IBUF(3),
      I3 => \q[5]_i_3_n_0\,
      I4 => she_IBUF,
      I5 => writeData_IBUF(5),
      O => \^d\(5)
    );
\q[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q[13]_i_8_n_0\,
      I1 => dir_IBUF,
      O => \q[5]_i_2_n_0\
    );
\q[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[13]_i_4_n_0\,
      I1 => \q[9]_i_4_n_0\,
      I2 => shamt_IBUF(2),
      I3 => \q[13]_i_5_n_0\,
      I4 => dir_IBUF,
      I5 => \q[5]_i_4_n_0\,
      O => \q[5]_i_3_n_0\
    );
\q[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(8),
      I1 => \^readdata1_obuf\(7),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(6),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(5),
      O => \q[5]_i_4_n_0\
    );
\q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \q[6]_i_2_n_0\,
      I1 => shamt_IBUF(2),
      I2 => shamt_IBUF(3),
      I3 => \q[6]_i_3_n_0\,
      I4 => she_IBUF,
      I5 => writeData_IBUF(6),
      O => \^d\(6)
    );
\q[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q[14]_i_8_n_0\,
      I1 => dir_IBUF,
      O => \q[6]_i_2_n_0\
    );
\q[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[14]_i_4_n_0\,
      I1 => \q[10]_i_4_n_0\,
      I2 => shamt_IBUF(2),
      I3 => \q[14]_i_5_n_0\,
      I4 => dir_IBUF,
      I5 => \q[6]_i_4_n_0\,
      O => \q[6]_i_3_n_0\
    );
\q[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(9),
      I1 => \^readdata1_obuf\(8),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(7),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(6),
      O => \q[6]_i_4_n_0\
    );
\q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \q[7]_i_2_n_0\,
      I1 => shamt_IBUF(2),
      I2 => shamt_IBUF(3),
      I3 => \q[7]_i_3_n_0\,
      I4 => she_IBUF,
      I5 => writeData_IBUF(7),
      O => \^d\(7)
    );
\q[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q[15]_i_9_n_0\,
      I1 => dir_IBUF,
      O => \q[7]_i_2_n_0\
    );
\q[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[15]_i_5_n_0\,
      I1 => \q[11]_i_4_n_0\,
      I2 => shamt_IBUF(2),
      I3 => \q[15]_i_6_n_0\,
      I4 => dir_IBUF,
      I5 => \q[7]_i_4_n_0\,
      O => \q[7]_i_3_n_0\
    );
\q[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(10),
      I1 => \^readdata1_obuf\(9),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(8),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(7),
      O => \q[7]_i_4_n_0\
    );
\q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \q[8]_i_2_n_0\,
      I1 => shamt_IBUF(2),
      I2 => shamt_IBUF(3),
      I3 => \q[8]_i_3_n_0\,
      I4 => she_IBUF,
      I5 => writeData_IBUF(8),
      O => \^d\(8)
    );
\q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q[12]_i_4_n_0\,
      I1 => dir_IBUF,
      O => \q[8]_i_2_n_0\
    );
\q[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[12]_i_5_n_0\,
      I1 => \q[12]_i_8_n_0\,
      I2 => shamt_IBUF(2),
      I3 => \q[12]_i_6_n_0\,
      I4 => dir_IBUF,
      I5 => \q[8]_i_4_n_0\,
      O => \q[8]_i_3_n_0\
    );
\q[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(11),
      I1 => \^readdata1_obuf\(10),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(9),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(8),
      O => \q[8]_i_4_n_0\
    );
\q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \q[9]_i_2_n_0\,
      I1 => shamt_IBUF(2),
      I2 => shamt_IBUF(3),
      I3 => \q[9]_i_3_n_0\,
      I4 => she_IBUF,
      I5 => writeData_IBUF(9),
      O => \^d\(9)
    );
\q[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q[13]_i_4_n_0\,
      I1 => dir_IBUF,
      O => \q[9]_i_2_n_0\
    );
\q[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[13]_i_5_n_0\,
      I1 => \q[13]_i_8_n_0\,
      I2 => shamt_IBUF(2),
      I3 => \q[13]_i_6_n_0\,
      I4 => dir_IBUF,
      I5 => \q[9]_i_4_n_0\,
      O => \q[9]_i_3_n_0\
    );
\q[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^readdata1_obuf\(12),
      I1 => \^readdata1_obuf\(11),
      I2 => shamt_IBUF(1),
      I3 => \^readdata1_obuf\(10),
      I4 => shamt_IBUF(0),
      I5 => \^readdata1_obuf\(9),
      O => \q[9]_i_4_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(0),
      Q => \q_reg_n_0_[0]\
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(10),
      Q => \q_reg_n_0_[10]\
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(11),
      Q => \q_reg_n_0_[11]\
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(12),
      Q => \q_reg_n_0_[12]\
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(13),
      Q => \q_reg_n_0_[13]\
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(14),
      Q => \q_reg_n_0_[14]\
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(15),
      Q => \q_reg_n_0_[15]\
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(1),
      Q => \q_reg_n_0_[1]\
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(2),
      Q => \q_reg_n_0_[2]\
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(3),
      Q => \q_reg_n_0_[3]\
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(4),
      Q => \q_reg_n_0_[4]\
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(5),
      Q => \q_reg_n_0_[5]\
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(6),
      Q => \q_reg_n_0_[6]\
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(7),
      Q => \q_reg_n_0_[7]\
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(8),
      Q => \q_reg_n_0_[8]\
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__1_n_0\,
      CLR => AR(0),
      D => \^d\(9),
      Q => \q_reg_n_0_[9]\
    );
\readData1_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[0]_inst_i_2_n_0\,
      I1 => \readData1[0]\,
      O => \^readdata1_obuf\(0),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[0]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[0]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[0]_inst_i_1_0\,
      O => \readData1_OBUF[0]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(0),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(0),
      O => \readData1_OBUF[0]_inst_i_4_n_0\
    );
\readData1_OBUF[10]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[10]_inst_i_2_n_0\,
      I1 => \readData1[10]\,
      O => \^readdata1_obuf\(10),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[10]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[10]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[10]_inst_i_1_0\,
      O => \readData1_OBUF[10]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => Q(10),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(10),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(10),
      O => \readData1_OBUF[10]_inst_i_4_n_0\
    );
\readData1_OBUF[11]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[11]_inst_i_2_n_0\,
      I1 => \readData1[11]\,
      O => \^readdata1_obuf\(11),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[11]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[11]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[11]_inst_i_1_0\,
      O => \readData1_OBUF[11]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(11),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(11),
      O => \readData1_OBUF[11]_inst_i_4_n_0\
    );
\readData1_OBUF[12]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[12]_inst_i_2_n_0\,
      I1 => \readData1[12]\,
      O => \^readdata1_obuf\(12),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[12]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[12]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[12]_inst_i_1_0\,
      O => \readData1_OBUF[12]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => Q(12),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(12),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(12),
      O => \readData1_OBUF[12]_inst_i_4_n_0\
    );
\readData1_OBUF[13]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[13]_inst_i_2_n_0\,
      I1 => \readData1[13]\,
      O => \^readdata1_obuf\(13),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[13]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[13]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[13]_inst_i_1_0\,
      O => \readData1_OBUF[13]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => Q(13),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(13),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(13),
      O => \readData1_OBUF[13]_inst_i_4_n_0\
    );
\readData1_OBUF[14]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[14]_inst_i_2_n_0\,
      I1 => \readData1[14]\,
      O => \^readdata1_obuf\(14),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[14]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[14]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[14]_inst_i_1_0\,
      O => \readData1_OBUF[14]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => Q(14),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(14),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(14),
      O => \readData1_OBUF[14]_inst_i_4_n_0\
    );
\readData1_OBUF[15]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[15]_inst_i_2_n_0\,
      I1 => \readData1[15]\,
      O => \^readdata1_obuf\(15),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[15]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[15]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[15]_inst_i_1_0\,
      O => \readData1_OBUF[15]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => Q(15),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(15),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(15),
      O => \readData1_OBUF[15]_inst_i_4_n_0\
    );
\readData1_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[1]_inst_i_2_n_0\,
      I1 => \readData1[1]\,
      O => \^readdata1_obuf\(1),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[1]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[1]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[1]_inst_i_1_0\,
      O => \readData1_OBUF[1]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(1),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(1),
      O => \readData1_OBUF[1]_inst_i_4_n_0\
    );
\readData1_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[2]_inst_i_2_n_0\,
      I1 => \readData1[2]\,
      O => \^readdata1_obuf\(2),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[2]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[2]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[2]_inst_i_1_0\,
      O => \readData1_OBUF[2]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(2),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(2),
      O => \readData1_OBUF[2]_inst_i_4_n_0\
    );
\readData1_OBUF[3]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[3]_inst_i_2_n_0\,
      I1 => \readData1[3]\,
      O => \^readdata1_obuf\(3),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[3]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[3]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[3]_inst_i_1_0\,
      O => \readData1_OBUF[3]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(3),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(3),
      O => \readData1_OBUF[3]_inst_i_4_n_0\
    );
\readData1_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[4]_inst_i_2_n_0\,
      I1 => \readData1[4]\,
      O => \^readdata1_obuf\(4),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[4]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[4]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[4]_inst_i_1_0\,
      O => \readData1_OBUF[4]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(4),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(4),
      O => \readData1_OBUF[4]_inst_i_4_n_0\
    );
\readData1_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[5]_inst_i_2_n_0\,
      I1 => \readData1[5]\,
      O => \^readdata1_obuf\(5),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[5]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[5]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[5]_inst_i_1_0\,
      O => \readData1_OBUF[5]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(5),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(5),
      O => \readData1_OBUF[5]_inst_i_4_n_0\
    );
\readData1_OBUF[6]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[6]_inst_i_2_n_0\,
      I1 => \readData1[6]\,
      O => \^readdata1_obuf\(6),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[6]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[6]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[6]_inst_i_1_0\,
      O => \readData1_OBUF[6]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(6),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(6),
      O => \readData1_OBUF[6]_inst_i_4_n_0\
    );
\readData1_OBUF[7]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[7]_inst_i_2_n_0\,
      I1 => \readData1[7]\,
      O => \^readdata1_obuf\(7),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[7]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[7]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[7]_inst_i_1_0\,
      O => \readData1_OBUF[7]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(7),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(7),
      O => \readData1_OBUF[7]_inst_i_4_n_0\
    );
\readData1_OBUF[8]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[8]_inst_i_2_n_0\,
      I1 => \readData1[8]\,
      O => \^readdata1_obuf\(8),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[8]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[8]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[8]_inst_i_1_0\,
      O => \readData1_OBUF[8]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(8),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(8),
      O => \readData1_OBUF[8]_inst_i_4_n_0\
    );
\readData1_OBUF[9]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData1_OBUF[9]_inst_i_2_n_0\,
      I1 => \readData1[9]\,
      O => \^readdata1_obuf\(9),
      S => readReg1_IBUF(3)
    );
\readData1_OBUF[9]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData1_OBUF[9]_inst_i_4_n_0\,
      I1 => \readData1_OBUF[9]_inst_i_1_0\,
      O => \readData1_OBUF[9]_inst_i_2_n_0\,
      S => readReg1_IBUF(2)
    );
\readData1_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => readReg1_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(9),
      I4 => readReg1_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(9),
      O => \readData1_OBUF[9]_inst_i_4_n_0\
    );
\readData2_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[0]_inst_i_2_n_0\,
      I1 => \readData2[0]\,
      O => readData2_OBUF(0),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[0]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[0]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[0]_inst_i_1_0\,
      O => \readData2_OBUF[0]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(0),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(0),
      O => \readData2_OBUF[0]_inst_i_4_n_0\
    );
\readData2_OBUF[10]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[10]_inst_i_2_n_0\,
      I1 => \readData2[10]\,
      O => readData2_OBUF(10),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[10]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[10]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[10]_inst_i_1_0\,
      O => \readData2_OBUF[10]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => Q(10),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(10),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(10),
      O => \readData2_OBUF[10]_inst_i_4_n_0\
    );
\readData2_OBUF[11]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[11]_inst_i_2_n_0\,
      I1 => \readData2[11]\,
      O => readData2_OBUF(11),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[11]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[11]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[11]_inst_i_1_0\,
      O => \readData2_OBUF[11]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(11),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(11),
      O => \readData2_OBUF[11]_inst_i_4_n_0\
    );
\readData2_OBUF[12]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[12]_inst_i_2_n_0\,
      I1 => \readData2[12]\,
      O => readData2_OBUF(12),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[12]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[12]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[12]_inst_i_1_0\,
      O => \readData2_OBUF[12]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => Q(12),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(12),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(12),
      O => \readData2_OBUF[12]_inst_i_4_n_0\
    );
\readData2_OBUF[13]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[13]_inst_i_2_n_0\,
      I1 => \readData2[13]\,
      O => readData2_OBUF(13),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[13]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[13]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[13]_inst_i_1_0\,
      O => \readData2_OBUF[13]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => Q(13),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(13),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(13),
      O => \readData2_OBUF[13]_inst_i_4_n_0\
    );
\readData2_OBUF[14]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[14]_inst_i_2_n_0\,
      I1 => \readData2[14]\,
      O => readData2_OBUF(14),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[14]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[14]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[14]_inst_i_1_0\,
      O => \readData2_OBUF[14]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => Q(14),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(14),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(14),
      O => \readData2_OBUF[14]_inst_i_4_n_0\
    );
\readData2_OBUF[15]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[15]_inst_i_2_n_0\,
      I1 => \readData2[15]\,
      O => readData2_OBUF(15),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[15]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[15]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[15]_inst_i_1_0\,
      O => \readData2_OBUF[15]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => Q(15),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(15),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(15),
      O => \readData2_OBUF[15]_inst_i_4_n_0\
    );
\readData2_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[1]_inst_i_2_n_0\,
      I1 => \readData2[1]\,
      O => readData2_OBUF(1),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[1]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[1]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[1]_inst_i_1_0\,
      O => \readData2_OBUF[1]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(1),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(1),
      O => \readData2_OBUF[1]_inst_i_4_n_0\
    );
\readData2_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[2]_inst_i_2_n_0\,
      I1 => \readData2[2]\,
      O => readData2_OBUF(2),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[2]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[2]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[2]_inst_i_1_0\,
      O => \readData2_OBUF[2]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(2),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(2),
      O => \readData2_OBUF[2]_inst_i_4_n_0\
    );
\readData2_OBUF[3]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[3]_inst_i_2_n_0\,
      I1 => \readData2[3]\,
      O => readData2_OBUF(3),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[3]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[3]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[3]_inst_i_1_0\,
      O => \readData2_OBUF[3]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(3),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(3),
      O => \readData2_OBUF[3]_inst_i_4_n_0\
    );
\readData2_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[4]_inst_i_2_n_0\,
      I1 => \readData2[4]\,
      O => readData2_OBUF(4),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[4]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[4]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[4]_inst_i_1_0\,
      O => \readData2_OBUF[4]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(4),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(4),
      O => \readData2_OBUF[4]_inst_i_4_n_0\
    );
\readData2_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[5]_inst_i_2_n_0\,
      I1 => \readData2[5]\,
      O => readData2_OBUF(5),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[5]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[5]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[5]_inst_i_1_0\,
      O => \readData2_OBUF[5]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(5),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(5),
      O => \readData2_OBUF[5]_inst_i_4_n_0\
    );
\readData2_OBUF[6]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[6]_inst_i_2_n_0\,
      I1 => \readData2[6]\,
      O => readData2_OBUF(6),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[6]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[6]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[6]_inst_i_1_0\,
      O => \readData2_OBUF[6]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(6),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(6),
      O => \readData2_OBUF[6]_inst_i_4_n_0\
    );
\readData2_OBUF[7]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[7]_inst_i_2_n_0\,
      I1 => \readData2[7]\,
      O => readData2_OBUF(7),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[7]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[7]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[7]_inst_i_1_0\,
      O => \readData2_OBUF[7]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(7),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(7),
      O => \readData2_OBUF[7]_inst_i_4_n_0\
    );
\readData2_OBUF[8]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[8]_inst_i_2_n_0\,
      I1 => \readData2[8]\,
      O => readData2_OBUF(8),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[8]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[8]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[8]_inst_i_1_0\,
      O => \readData2_OBUF[8]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(8),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(8),
      O => \readData2_OBUF[8]_inst_i_4_n_0\
    );
\readData2_OBUF[9]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \readData2_OBUF[9]_inst_i_2_n_0\,
      I1 => \readData2[9]\,
      O => readData2_OBUF(9),
      S => readReg2_IBUF(3)
    );
\readData2_OBUF[9]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \readData2_OBUF[9]_inst_i_4_n_0\,
      I1 => \readData2_OBUF[9]_inst_i_1_0\,
      O => \readData2_OBUF[9]_inst_i_2_n_0\,
      S => readReg2_IBUF(2)
    );
\readData2_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => readReg2_IBUF(1),
      I3 => \readData2_OBUF[15]_inst_i_2_0\(9),
      I4 => readReg2_IBUF(0),
      I5 => \readData2_OBUF[15]_inst_i_2_1\(9),
      O => \readData2_OBUF[9]_inst_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registro_9 is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    writeReg_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Registro_9 : entity is "Registro";
end Registro_9;

architecture STRUCTURE of Registro_9 is
  signal \q[15]_i_1__5_n_0\ : STD_LOGIC;
begin
\q[15]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => writeReg_IBUF(0),
      I1 => wr_IBUF,
      I2 => writeReg_IBUF(1),
      I3 => writeReg_IBUF(2),
      I4 => writeReg_IBUF(3),
      O => \q[15]_i_1__5_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(15),
      Q => Q(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \q[15]_i_1__5_n_0\,
      CLR => AR(0),
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArchivoRegistros is
  port (
    wr : in STD_LOGIC;
    dir : in STD_LOGIC;
    she : in STD_LOGIC;
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    writeReg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    readReg1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    readReg2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    shamt : in STD_LOGIC_VECTOR ( 3 downto 0 );
    writeData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    readData1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    readData2 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ArchivoRegistros : entity is true;
  attribute i : integer;
  attribute i of ArchivoRegistros : entity is 4;
  attribute n : integer;
  attribute n of ArchivoRegistros : entity is 16;
end ArchivoRegistros;

architecture STRUCTURE of ArchivoRegistros is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal clr_IBUF : STD_LOGIC;
  signal d : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal demux_n_0 : STD_LOGIC;
  signal demux_n_1 : STD_LOGIC;
  signal demux_n_2 : STD_LOGIC;
  signal demux_n_3 : STD_LOGIC;
  signal demux_n_4 : STD_LOGIC;
  signal demux_n_5 : STD_LOGIC;
  signal demux_n_6 : STD_LOGIC;
  signal demux_n_7 : STD_LOGIC;
  signal dir_IBUF : STD_LOGIC;
  signal q : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal readData1_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal readData2_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal readReg1_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal readReg2_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \registros[10].reg_n_0\ : STD_LOGIC;
  signal \registros[10].reg_n_1\ : STD_LOGIC;
  signal \registros[10].reg_n_10\ : STD_LOGIC;
  signal \registros[10].reg_n_11\ : STD_LOGIC;
  signal \registros[10].reg_n_12\ : STD_LOGIC;
  signal \registros[10].reg_n_13\ : STD_LOGIC;
  signal \registros[10].reg_n_14\ : STD_LOGIC;
  signal \registros[10].reg_n_15\ : STD_LOGIC;
  signal \registros[10].reg_n_2\ : STD_LOGIC;
  signal \registros[10].reg_n_3\ : STD_LOGIC;
  signal \registros[10].reg_n_4\ : STD_LOGIC;
  signal \registros[10].reg_n_5\ : STD_LOGIC;
  signal \registros[10].reg_n_6\ : STD_LOGIC;
  signal \registros[10].reg_n_7\ : STD_LOGIC;
  signal \registros[10].reg_n_8\ : STD_LOGIC;
  signal \registros[10].reg_n_9\ : STD_LOGIC;
  signal \registros[11].reg_n_0\ : STD_LOGIC;
  signal \registros[11].reg_n_1\ : STD_LOGIC;
  signal \registros[11].reg_n_10\ : STD_LOGIC;
  signal \registros[11].reg_n_11\ : STD_LOGIC;
  signal \registros[11].reg_n_12\ : STD_LOGIC;
  signal \registros[11].reg_n_13\ : STD_LOGIC;
  signal \registros[11].reg_n_14\ : STD_LOGIC;
  signal \registros[11].reg_n_15\ : STD_LOGIC;
  signal \registros[11].reg_n_16\ : STD_LOGIC;
  signal \registros[11].reg_n_17\ : STD_LOGIC;
  signal \registros[11].reg_n_18\ : STD_LOGIC;
  signal \registros[11].reg_n_19\ : STD_LOGIC;
  signal \registros[11].reg_n_2\ : STD_LOGIC;
  signal \registros[11].reg_n_20\ : STD_LOGIC;
  signal \registros[11].reg_n_21\ : STD_LOGIC;
  signal \registros[11].reg_n_22\ : STD_LOGIC;
  signal \registros[11].reg_n_23\ : STD_LOGIC;
  signal \registros[11].reg_n_24\ : STD_LOGIC;
  signal \registros[11].reg_n_25\ : STD_LOGIC;
  signal \registros[11].reg_n_26\ : STD_LOGIC;
  signal \registros[11].reg_n_27\ : STD_LOGIC;
  signal \registros[11].reg_n_28\ : STD_LOGIC;
  signal \registros[11].reg_n_29\ : STD_LOGIC;
  signal \registros[11].reg_n_3\ : STD_LOGIC;
  signal \registros[11].reg_n_30\ : STD_LOGIC;
  signal \registros[11].reg_n_31\ : STD_LOGIC;
  signal \registros[11].reg_n_4\ : STD_LOGIC;
  signal \registros[11].reg_n_5\ : STD_LOGIC;
  signal \registros[11].reg_n_6\ : STD_LOGIC;
  signal \registros[11].reg_n_7\ : STD_LOGIC;
  signal \registros[11].reg_n_8\ : STD_LOGIC;
  signal \registros[11].reg_n_9\ : STD_LOGIC;
  signal \registros[12].reg_n_0\ : STD_LOGIC;
  signal \registros[12].reg_n_1\ : STD_LOGIC;
  signal \registros[12].reg_n_10\ : STD_LOGIC;
  signal \registros[12].reg_n_11\ : STD_LOGIC;
  signal \registros[12].reg_n_12\ : STD_LOGIC;
  signal \registros[12].reg_n_13\ : STD_LOGIC;
  signal \registros[12].reg_n_14\ : STD_LOGIC;
  signal \registros[12].reg_n_15\ : STD_LOGIC;
  signal \registros[12].reg_n_2\ : STD_LOGIC;
  signal \registros[12].reg_n_3\ : STD_LOGIC;
  signal \registros[12].reg_n_4\ : STD_LOGIC;
  signal \registros[12].reg_n_5\ : STD_LOGIC;
  signal \registros[12].reg_n_6\ : STD_LOGIC;
  signal \registros[12].reg_n_7\ : STD_LOGIC;
  signal \registros[12].reg_n_8\ : STD_LOGIC;
  signal \registros[12].reg_n_9\ : STD_LOGIC;
  signal \registros[13].reg_n_0\ : STD_LOGIC;
  signal \registros[13].reg_n_1\ : STD_LOGIC;
  signal \registros[13].reg_n_10\ : STD_LOGIC;
  signal \registros[13].reg_n_11\ : STD_LOGIC;
  signal \registros[13].reg_n_12\ : STD_LOGIC;
  signal \registros[13].reg_n_13\ : STD_LOGIC;
  signal \registros[13].reg_n_14\ : STD_LOGIC;
  signal \registros[13].reg_n_15\ : STD_LOGIC;
  signal \registros[13].reg_n_2\ : STD_LOGIC;
  signal \registros[13].reg_n_3\ : STD_LOGIC;
  signal \registros[13].reg_n_4\ : STD_LOGIC;
  signal \registros[13].reg_n_5\ : STD_LOGIC;
  signal \registros[13].reg_n_6\ : STD_LOGIC;
  signal \registros[13].reg_n_7\ : STD_LOGIC;
  signal \registros[13].reg_n_8\ : STD_LOGIC;
  signal \registros[13].reg_n_9\ : STD_LOGIC;
  signal \registros[14].reg_n_0\ : STD_LOGIC;
  signal \registros[14].reg_n_1\ : STD_LOGIC;
  signal \registros[14].reg_n_10\ : STD_LOGIC;
  signal \registros[14].reg_n_11\ : STD_LOGIC;
  signal \registros[14].reg_n_12\ : STD_LOGIC;
  signal \registros[14].reg_n_13\ : STD_LOGIC;
  signal \registros[14].reg_n_14\ : STD_LOGIC;
  signal \registros[14].reg_n_15\ : STD_LOGIC;
  signal \registros[14].reg_n_2\ : STD_LOGIC;
  signal \registros[14].reg_n_3\ : STD_LOGIC;
  signal \registros[14].reg_n_4\ : STD_LOGIC;
  signal \registros[14].reg_n_5\ : STD_LOGIC;
  signal \registros[14].reg_n_6\ : STD_LOGIC;
  signal \registros[14].reg_n_7\ : STD_LOGIC;
  signal \registros[14].reg_n_8\ : STD_LOGIC;
  signal \registros[14].reg_n_9\ : STD_LOGIC;
  signal \registros[15].reg_n_0\ : STD_LOGIC;
  signal \registros[15].reg_n_1\ : STD_LOGIC;
  signal \registros[15].reg_n_10\ : STD_LOGIC;
  signal \registros[15].reg_n_11\ : STD_LOGIC;
  signal \registros[15].reg_n_12\ : STD_LOGIC;
  signal \registros[15].reg_n_13\ : STD_LOGIC;
  signal \registros[15].reg_n_14\ : STD_LOGIC;
  signal \registros[15].reg_n_15\ : STD_LOGIC;
  signal \registros[15].reg_n_16\ : STD_LOGIC;
  signal \registros[15].reg_n_17\ : STD_LOGIC;
  signal \registros[15].reg_n_18\ : STD_LOGIC;
  signal \registros[15].reg_n_19\ : STD_LOGIC;
  signal \registros[15].reg_n_2\ : STD_LOGIC;
  signal \registros[15].reg_n_20\ : STD_LOGIC;
  signal \registros[15].reg_n_21\ : STD_LOGIC;
  signal \registros[15].reg_n_22\ : STD_LOGIC;
  signal \registros[15].reg_n_23\ : STD_LOGIC;
  signal \registros[15].reg_n_24\ : STD_LOGIC;
  signal \registros[15].reg_n_25\ : STD_LOGIC;
  signal \registros[15].reg_n_26\ : STD_LOGIC;
  signal \registros[15].reg_n_27\ : STD_LOGIC;
  signal \registros[15].reg_n_28\ : STD_LOGIC;
  signal \registros[15].reg_n_29\ : STD_LOGIC;
  signal \registros[15].reg_n_3\ : STD_LOGIC;
  signal \registros[15].reg_n_30\ : STD_LOGIC;
  signal \registros[15].reg_n_31\ : STD_LOGIC;
  signal \registros[15].reg_n_4\ : STD_LOGIC;
  signal \registros[15].reg_n_5\ : STD_LOGIC;
  signal \registros[15].reg_n_6\ : STD_LOGIC;
  signal \registros[15].reg_n_7\ : STD_LOGIC;
  signal \registros[15].reg_n_8\ : STD_LOGIC;
  signal \registros[15].reg_n_9\ : STD_LOGIC;
  signal \registros[1].reg_n_0\ : STD_LOGIC;
  signal \registros[1].reg_n_1\ : STD_LOGIC;
  signal \registros[1].reg_n_10\ : STD_LOGIC;
  signal \registros[1].reg_n_11\ : STD_LOGIC;
  signal \registros[1].reg_n_12\ : STD_LOGIC;
  signal \registros[1].reg_n_13\ : STD_LOGIC;
  signal \registros[1].reg_n_14\ : STD_LOGIC;
  signal \registros[1].reg_n_15\ : STD_LOGIC;
  signal \registros[1].reg_n_2\ : STD_LOGIC;
  signal \registros[1].reg_n_3\ : STD_LOGIC;
  signal \registros[1].reg_n_4\ : STD_LOGIC;
  signal \registros[1].reg_n_5\ : STD_LOGIC;
  signal \registros[1].reg_n_6\ : STD_LOGIC;
  signal \registros[1].reg_n_7\ : STD_LOGIC;
  signal \registros[1].reg_n_8\ : STD_LOGIC;
  signal \registros[1].reg_n_9\ : STD_LOGIC;
  signal \registros[2].reg_n_0\ : STD_LOGIC;
  signal \registros[2].reg_n_1\ : STD_LOGIC;
  signal \registros[2].reg_n_10\ : STD_LOGIC;
  signal \registros[2].reg_n_11\ : STD_LOGIC;
  signal \registros[2].reg_n_12\ : STD_LOGIC;
  signal \registros[2].reg_n_13\ : STD_LOGIC;
  signal \registros[2].reg_n_14\ : STD_LOGIC;
  signal \registros[2].reg_n_15\ : STD_LOGIC;
  signal \registros[2].reg_n_2\ : STD_LOGIC;
  signal \registros[2].reg_n_3\ : STD_LOGIC;
  signal \registros[2].reg_n_4\ : STD_LOGIC;
  signal \registros[2].reg_n_5\ : STD_LOGIC;
  signal \registros[2].reg_n_6\ : STD_LOGIC;
  signal \registros[2].reg_n_7\ : STD_LOGIC;
  signal \registros[2].reg_n_8\ : STD_LOGIC;
  signal \registros[2].reg_n_9\ : STD_LOGIC;
  signal \registros[4].reg_n_0\ : STD_LOGIC;
  signal \registros[4].reg_n_1\ : STD_LOGIC;
  signal \registros[4].reg_n_10\ : STD_LOGIC;
  signal \registros[4].reg_n_11\ : STD_LOGIC;
  signal \registros[4].reg_n_12\ : STD_LOGIC;
  signal \registros[4].reg_n_13\ : STD_LOGIC;
  signal \registros[4].reg_n_14\ : STD_LOGIC;
  signal \registros[4].reg_n_15\ : STD_LOGIC;
  signal \registros[4].reg_n_2\ : STD_LOGIC;
  signal \registros[4].reg_n_3\ : STD_LOGIC;
  signal \registros[4].reg_n_4\ : STD_LOGIC;
  signal \registros[4].reg_n_5\ : STD_LOGIC;
  signal \registros[4].reg_n_6\ : STD_LOGIC;
  signal \registros[4].reg_n_7\ : STD_LOGIC;
  signal \registros[4].reg_n_8\ : STD_LOGIC;
  signal \registros[4].reg_n_9\ : STD_LOGIC;
  signal \registros[5].reg_n_0\ : STD_LOGIC;
  signal \registros[5].reg_n_1\ : STD_LOGIC;
  signal \registros[5].reg_n_10\ : STD_LOGIC;
  signal \registros[5].reg_n_11\ : STD_LOGIC;
  signal \registros[5].reg_n_12\ : STD_LOGIC;
  signal \registros[5].reg_n_13\ : STD_LOGIC;
  signal \registros[5].reg_n_14\ : STD_LOGIC;
  signal \registros[5].reg_n_15\ : STD_LOGIC;
  signal \registros[5].reg_n_2\ : STD_LOGIC;
  signal \registros[5].reg_n_3\ : STD_LOGIC;
  signal \registros[5].reg_n_4\ : STD_LOGIC;
  signal \registros[5].reg_n_5\ : STD_LOGIC;
  signal \registros[5].reg_n_6\ : STD_LOGIC;
  signal \registros[5].reg_n_7\ : STD_LOGIC;
  signal \registros[5].reg_n_8\ : STD_LOGIC;
  signal \registros[5].reg_n_9\ : STD_LOGIC;
  signal \registros[6].reg_n_0\ : STD_LOGIC;
  signal \registros[6].reg_n_1\ : STD_LOGIC;
  signal \registros[6].reg_n_10\ : STD_LOGIC;
  signal \registros[6].reg_n_11\ : STD_LOGIC;
  signal \registros[6].reg_n_12\ : STD_LOGIC;
  signal \registros[6].reg_n_13\ : STD_LOGIC;
  signal \registros[6].reg_n_14\ : STD_LOGIC;
  signal \registros[6].reg_n_15\ : STD_LOGIC;
  signal \registros[6].reg_n_2\ : STD_LOGIC;
  signal \registros[6].reg_n_3\ : STD_LOGIC;
  signal \registros[6].reg_n_4\ : STD_LOGIC;
  signal \registros[6].reg_n_5\ : STD_LOGIC;
  signal \registros[6].reg_n_6\ : STD_LOGIC;
  signal \registros[6].reg_n_7\ : STD_LOGIC;
  signal \registros[6].reg_n_8\ : STD_LOGIC;
  signal \registros[6].reg_n_9\ : STD_LOGIC;
  signal \registros[7].reg_n_0\ : STD_LOGIC;
  signal \registros[7].reg_n_1\ : STD_LOGIC;
  signal \registros[7].reg_n_10\ : STD_LOGIC;
  signal \registros[7].reg_n_11\ : STD_LOGIC;
  signal \registros[7].reg_n_12\ : STD_LOGIC;
  signal \registros[7].reg_n_13\ : STD_LOGIC;
  signal \registros[7].reg_n_14\ : STD_LOGIC;
  signal \registros[7].reg_n_15\ : STD_LOGIC;
  signal \registros[7].reg_n_16\ : STD_LOGIC;
  signal \registros[7].reg_n_17\ : STD_LOGIC;
  signal \registros[7].reg_n_18\ : STD_LOGIC;
  signal \registros[7].reg_n_19\ : STD_LOGIC;
  signal \registros[7].reg_n_2\ : STD_LOGIC;
  signal \registros[7].reg_n_20\ : STD_LOGIC;
  signal \registros[7].reg_n_21\ : STD_LOGIC;
  signal \registros[7].reg_n_22\ : STD_LOGIC;
  signal \registros[7].reg_n_23\ : STD_LOGIC;
  signal \registros[7].reg_n_24\ : STD_LOGIC;
  signal \registros[7].reg_n_25\ : STD_LOGIC;
  signal \registros[7].reg_n_26\ : STD_LOGIC;
  signal \registros[7].reg_n_27\ : STD_LOGIC;
  signal \registros[7].reg_n_28\ : STD_LOGIC;
  signal \registros[7].reg_n_29\ : STD_LOGIC;
  signal \registros[7].reg_n_3\ : STD_LOGIC;
  signal \registros[7].reg_n_30\ : STD_LOGIC;
  signal \registros[7].reg_n_31\ : STD_LOGIC;
  signal \registros[7].reg_n_4\ : STD_LOGIC;
  signal \registros[7].reg_n_5\ : STD_LOGIC;
  signal \registros[7].reg_n_6\ : STD_LOGIC;
  signal \registros[7].reg_n_7\ : STD_LOGIC;
  signal \registros[7].reg_n_8\ : STD_LOGIC;
  signal \registros[7].reg_n_9\ : STD_LOGIC;
  signal \registros[8].reg_n_0\ : STD_LOGIC;
  signal \registros[8].reg_n_1\ : STD_LOGIC;
  signal \registros[8].reg_n_10\ : STD_LOGIC;
  signal \registros[8].reg_n_11\ : STD_LOGIC;
  signal \registros[8].reg_n_12\ : STD_LOGIC;
  signal \registros[8].reg_n_13\ : STD_LOGIC;
  signal \registros[8].reg_n_14\ : STD_LOGIC;
  signal \registros[8].reg_n_15\ : STD_LOGIC;
  signal \registros[8].reg_n_2\ : STD_LOGIC;
  signal \registros[8].reg_n_3\ : STD_LOGIC;
  signal \registros[8].reg_n_4\ : STD_LOGIC;
  signal \registros[8].reg_n_5\ : STD_LOGIC;
  signal \registros[8].reg_n_6\ : STD_LOGIC;
  signal \registros[8].reg_n_7\ : STD_LOGIC;
  signal \registros[8].reg_n_8\ : STD_LOGIC;
  signal \registros[8].reg_n_9\ : STD_LOGIC;
  signal \registros[9].reg_n_0\ : STD_LOGIC;
  signal \registros[9].reg_n_1\ : STD_LOGIC;
  signal \registros[9].reg_n_10\ : STD_LOGIC;
  signal \registros[9].reg_n_11\ : STD_LOGIC;
  signal \registros[9].reg_n_12\ : STD_LOGIC;
  signal \registros[9].reg_n_13\ : STD_LOGIC;
  signal \registros[9].reg_n_14\ : STD_LOGIC;
  signal \registros[9].reg_n_15\ : STD_LOGIC;
  signal \registros[9].reg_n_2\ : STD_LOGIC;
  signal \registros[9].reg_n_3\ : STD_LOGIC;
  signal \registros[9].reg_n_4\ : STD_LOGIC;
  signal \registros[9].reg_n_5\ : STD_LOGIC;
  signal \registros[9].reg_n_6\ : STD_LOGIC;
  signal \registros[9].reg_n_7\ : STD_LOGIC;
  signal \registros[9].reg_n_8\ : STD_LOGIC;
  signal \registros[9].reg_n_9\ : STD_LOGIC;
  signal shamt_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal she_IBUF : STD_LOGIC;
  signal wr_IBUF : STD_LOGIC;
  signal writeData_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal writeReg_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
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
clr_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clr,
      O => clr_IBUF
    );
demux: entity work.Demultiplexor
     port map (
      E(0) => demux_n_0,
      wr_IBUF => wr_IBUF,
      \writeReg[3]\(0) => demux_n_1,
      \writeReg[3]_0\(0) => demux_n_2,
      \writeReg[3]_1\(0) => demux_n_3,
      \writeReg[3]_2\(0) => demux_n_4,
      \writeReg[3]_3\(0) => demux_n_5,
      \writeReg[3]_4\(0) => demux_n_6,
      \writeReg[3]_5\(0) => demux_n_7,
      writeReg_IBUF(3 downto 0) => writeReg_IBUF(3 downto 0)
    );
dir_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => dir,
      O => dir_IBUF
    );
\readData1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(0),
      O => readData1(0)
    );
\readData1_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(10),
      O => readData1(10)
    );
\readData1_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(11),
      O => readData1(11)
    );
\readData1_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(12),
      O => readData1(12)
    );
\readData1_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(13),
      O => readData1(13)
    );
\readData1_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(14),
      O => readData1(14)
    );
\readData1_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(15),
      O => readData1(15)
    );
\readData1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(1),
      O => readData1(1)
    );
\readData1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(2),
      O => readData1(2)
    );
\readData1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(3),
      O => readData1(3)
    );
\readData1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(4),
      O => readData1(4)
    );
\readData1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(5),
      O => readData1(5)
    );
\readData1_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(6),
      O => readData1(6)
    );
\readData1_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(7),
      O => readData1(7)
    );
\readData1_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(8),
      O => readData1(8)
    );
\readData1_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData1_OBUF(9),
      O => readData1(9)
    );
\readData2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(0),
      O => readData2(0)
    );
\readData2_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(10),
      O => readData2(10)
    );
\readData2_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(11),
      O => readData2(11)
    );
\readData2_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(12),
      O => readData2(12)
    );
\readData2_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(13),
      O => readData2(13)
    );
\readData2_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(14),
      O => readData2(14)
    );
\readData2_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(15),
      O => readData2(15)
    );
\readData2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(1),
      O => readData2(1)
    );
\readData2_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(2),
      O => readData2(2)
    );
\readData2_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(3),
      O => readData2(3)
    );
\readData2_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(4),
      O => readData2(4)
    );
\readData2_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(5),
      O => readData2(5)
    );
\readData2_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(6),
      O => readData2(6)
    );
\readData2_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(7),
      O => readData2(7)
    );
\readData2_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(8),
      O => readData2(8)
    );
\readData2_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => readData2_OBUF(9),
      O => readData2(9)
    );
\readReg1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => readReg1(0),
      O => readReg1_IBUF(0)
    );
\readReg1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => readReg1(1),
      O => readReg1_IBUF(1)
    );
\readReg1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => readReg1(2),
      O => readReg1_IBUF(2)
    );
\readReg1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => readReg1(3),
      O => readReg1_IBUF(3)
    );
\readReg2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => readReg2(0),
      O => readReg2_IBUF(0)
    );
\readReg2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => readReg2(1),
      O => readReg2_IBUF(1)
    );
\readReg2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => readReg2(2),
      O => readReg2_IBUF(2)
    );
\readReg2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => readReg2(3),
      O => readReg2_IBUF(3)
    );
\registros[0].reg\: entity work.Registro
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      Q(15 downto 0) => q(15 downto 0),
      wr_IBUF => wr_IBUF,
      writeReg_IBUF(3 downto 0) => writeReg_IBUF(3 downto 0)
    );
\registros[10].reg\: entity work.Registro_0
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      E(0) => demux_n_4,
      Q(15) => \registros[10].reg_n_0\,
      Q(14) => \registros[10].reg_n_1\,
      Q(13) => \registros[10].reg_n_2\,
      Q(12) => \registros[10].reg_n_3\,
      Q(11) => \registros[10].reg_n_4\,
      Q(10) => \registros[10].reg_n_5\,
      Q(9) => \registros[10].reg_n_6\,
      Q(8) => \registros[10].reg_n_7\,
      Q(7) => \registros[10].reg_n_8\,
      Q(6) => \registros[10].reg_n_9\,
      Q(5) => \registros[10].reg_n_10\,
      Q(4) => \registros[10].reg_n_11\,
      Q(3) => \registros[10].reg_n_12\,
      Q(2) => \registros[10].reg_n_13\,
      Q(1) => \registros[10].reg_n_14\,
      Q(0) => \registros[10].reg_n_15\
    );
\registros[11].reg\: entity work.Registro_1
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      E(0) => demux_n_2,
      Q(15) => \registros[10].reg_n_0\,
      Q(14) => \registros[10].reg_n_1\,
      Q(13) => \registros[10].reg_n_2\,
      Q(12) => \registros[10].reg_n_3\,
      Q(11) => \registros[10].reg_n_4\,
      Q(10) => \registros[10].reg_n_5\,
      Q(9) => \registros[10].reg_n_6\,
      Q(8) => \registros[10].reg_n_7\,
      Q(7) => \registros[10].reg_n_8\,
      Q(6) => \registros[10].reg_n_9\,
      Q(5) => \registros[10].reg_n_10\,
      Q(4) => \registros[10].reg_n_11\,
      Q(3) => \registros[10].reg_n_12\,
      Q(2) => \registros[10].reg_n_13\,
      Q(1) => \registros[10].reg_n_14\,
      Q(0) => \registros[10].reg_n_15\,
      \readData1_OBUF[0]_inst_i_1\ => \registros[15].reg_n_15\,
      \readData1_OBUF[10]_inst_i_1\ => \registros[15].reg_n_6\,
      \readData1_OBUF[11]_inst_i_1\ => \registros[15].reg_n_5\,
      \readData1_OBUF[12]_inst_i_1\ => \registros[15].reg_n_4\,
      \readData1_OBUF[13]_inst_i_1\ => \registros[15].reg_n_3\,
      \readData1_OBUF[14]_inst_i_1\ => \registros[15].reg_n_2\,
      \readData1_OBUF[15]_inst_i_1\ => \registros[15].reg_n_1\,
      \readData1_OBUF[1]_inst_i_1\ => \registros[15].reg_n_14\,
      \readData1_OBUF[2]_inst_i_1\ => \registros[15].reg_n_0\,
      \readData1_OBUF[3]_inst_i_1\ => \registros[15].reg_n_13\,
      \readData1_OBUF[4]_inst_i_1\ => \registros[15].reg_n_12\,
      \readData1_OBUF[5]_inst_i_1\ => \registros[15].reg_n_11\,
      \readData1_OBUF[6]_inst_i_1\ => \registros[15].reg_n_10\,
      \readData1_OBUF[7]_inst_i_1\ => \registros[15].reg_n_9\,
      \readData1_OBUF[8]_inst_i_1\ => \registros[15].reg_n_8\,
      \readData1_OBUF[9]_inst_i_1\ => \registros[15].reg_n_7\,
      \readData2_OBUF[0]_inst_i_1\ => \registros[15].reg_n_31\,
      \readData2_OBUF[10]_inst_i_1\ => \registros[15].reg_n_21\,
      \readData2_OBUF[11]_inst_i_1\ => \registros[15].reg_n_20\,
      \readData2_OBUF[12]_inst_i_1\ => \registros[15].reg_n_19\,
      \readData2_OBUF[13]_inst_i_1\ => \registros[15].reg_n_18\,
      \readData2_OBUF[14]_inst_i_1\ => \registros[15].reg_n_17\,
      \readData2_OBUF[15]_inst_i_1\ => \registros[15].reg_n_16\,
      \readData2_OBUF[15]_inst_i_3_0\(15) => \registros[9].reg_n_0\,
      \readData2_OBUF[15]_inst_i_3_0\(14) => \registros[9].reg_n_1\,
      \readData2_OBUF[15]_inst_i_3_0\(13) => \registros[9].reg_n_2\,
      \readData2_OBUF[15]_inst_i_3_0\(12) => \registros[9].reg_n_3\,
      \readData2_OBUF[15]_inst_i_3_0\(11) => \registros[9].reg_n_4\,
      \readData2_OBUF[15]_inst_i_3_0\(10) => \registros[9].reg_n_5\,
      \readData2_OBUF[15]_inst_i_3_0\(9) => \registros[9].reg_n_6\,
      \readData2_OBUF[15]_inst_i_3_0\(8) => \registros[9].reg_n_7\,
      \readData2_OBUF[15]_inst_i_3_0\(7) => \registros[9].reg_n_8\,
      \readData2_OBUF[15]_inst_i_3_0\(6) => \registros[9].reg_n_9\,
      \readData2_OBUF[15]_inst_i_3_0\(5) => \registros[9].reg_n_10\,
      \readData2_OBUF[15]_inst_i_3_0\(4) => \registros[9].reg_n_11\,
      \readData2_OBUF[15]_inst_i_3_0\(3) => \registros[9].reg_n_12\,
      \readData2_OBUF[15]_inst_i_3_0\(2) => \registros[9].reg_n_13\,
      \readData2_OBUF[15]_inst_i_3_0\(1) => \registros[9].reg_n_14\,
      \readData2_OBUF[15]_inst_i_3_0\(0) => \registros[9].reg_n_15\,
      \readData2_OBUF[15]_inst_i_3_1\(15) => \registros[8].reg_n_0\,
      \readData2_OBUF[15]_inst_i_3_1\(14) => \registros[8].reg_n_1\,
      \readData2_OBUF[15]_inst_i_3_1\(13) => \registros[8].reg_n_2\,
      \readData2_OBUF[15]_inst_i_3_1\(12) => \registros[8].reg_n_3\,
      \readData2_OBUF[15]_inst_i_3_1\(11) => \registros[8].reg_n_4\,
      \readData2_OBUF[15]_inst_i_3_1\(10) => \registros[8].reg_n_5\,
      \readData2_OBUF[15]_inst_i_3_1\(9) => \registros[8].reg_n_6\,
      \readData2_OBUF[15]_inst_i_3_1\(8) => \registros[8].reg_n_7\,
      \readData2_OBUF[15]_inst_i_3_1\(7) => \registros[8].reg_n_8\,
      \readData2_OBUF[15]_inst_i_3_1\(6) => \registros[8].reg_n_9\,
      \readData2_OBUF[15]_inst_i_3_1\(5) => \registros[8].reg_n_10\,
      \readData2_OBUF[15]_inst_i_3_1\(4) => \registros[8].reg_n_11\,
      \readData2_OBUF[15]_inst_i_3_1\(3) => \registros[8].reg_n_12\,
      \readData2_OBUF[15]_inst_i_3_1\(2) => \registros[8].reg_n_13\,
      \readData2_OBUF[15]_inst_i_3_1\(1) => \registros[8].reg_n_14\,
      \readData2_OBUF[15]_inst_i_3_1\(0) => \registros[8].reg_n_15\,
      \readData2_OBUF[1]_inst_i_1\ => \registros[15].reg_n_30\,
      \readData2_OBUF[2]_inst_i_1\ => \registros[15].reg_n_29\,
      \readData2_OBUF[3]_inst_i_1\ => \registros[15].reg_n_28\,
      \readData2_OBUF[4]_inst_i_1\ => \registros[15].reg_n_27\,
      \readData2_OBUF[5]_inst_i_1\ => \registros[15].reg_n_26\,
      \readData2_OBUF[6]_inst_i_1\ => \registros[15].reg_n_25\,
      \readData2_OBUF[7]_inst_i_1\ => \registros[15].reg_n_24\,
      \readData2_OBUF[8]_inst_i_1\ => \registros[15].reg_n_23\,
      \readData2_OBUF[9]_inst_i_1\ => \registros[15].reg_n_22\,
      \readReg1[2]\ => \registros[11].reg_n_0\,
      \readReg1[2]_0\ => \registros[11].reg_n_1\,
      \readReg1[2]_1\ => \registros[11].reg_n_2\,
      \readReg1[2]_10\ => \registros[11].reg_n_11\,
      \readReg1[2]_11\ => \registros[11].reg_n_12\,
      \readReg1[2]_12\ => \registros[11].reg_n_13\,
      \readReg1[2]_13\ => \registros[11].reg_n_14\,
      \readReg1[2]_14\ => \registros[11].reg_n_15\,
      \readReg1[2]_2\ => \registros[11].reg_n_3\,
      \readReg1[2]_3\ => \registros[11].reg_n_4\,
      \readReg1[2]_4\ => \registros[11].reg_n_5\,
      \readReg1[2]_5\ => \registros[11].reg_n_6\,
      \readReg1[2]_6\ => \registros[11].reg_n_7\,
      \readReg1[2]_7\ => \registros[11].reg_n_8\,
      \readReg1[2]_8\ => \registros[11].reg_n_9\,
      \readReg1[2]_9\ => \registros[11].reg_n_10\,
      readReg1_IBUF(2 downto 0) => readReg1_IBUF(2 downto 0),
      \readReg2[2]\ => \registros[11].reg_n_16\,
      \readReg2[2]_0\ => \registros[11].reg_n_17\,
      \readReg2[2]_1\ => \registros[11].reg_n_18\,
      \readReg2[2]_10\ => \registros[11].reg_n_27\,
      \readReg2[2]_11\ => \registros[11].reg_n_28\,
      \readReg2[2]_12\ => \registros[11].reg_n_29\,
      \readReg2[2]_13\ => \registros[11].reg_n_30\,
      \readReg2[2]_14\ => \registros[11].reg_n_31\,
      \readReg2[2]_2\ => \registros[11].reg_n_19\,
      \readReg2[2]_3\ => \registros[11].reg_n_20\,
      \readReg2[2]_4\ => \registros[11].reg_n_21\,
      \readReg2[2]_5\ => \registros[11].reg_n_22\,
      \readReg2[2]_6\ => \registros[11].reg_n_23\,
      \readReg2[2]_7\ => \registros[11].reg_n_24\,
      \readReg2[2]_8\ => \registros[11].reg_n_25\,
      \readReg2[2]_9\ => \registros[11].reg_n_26\,
      readReg2_IBUF(2 downto 0) => readReg2_IBUF(2 downto 0)
    );
\registros[12].reg\: entity work.Registro_2
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      E(0) => demux_n_6,
      Q(15) => \registros[12].reg_n_0\,
      Q(14) => \registros[12].reg_n_1\,
      Q(13) => \registros[12].reg_n_2\,
      Q(12) => \registros[12].reg_n_3\,
      Q(11) => \registros[12].reg_n_4\,
      Q(10) => \registros[12].reg_n_5\,
      Q(9) => \registros[12].reg_n_6\,
      Q(8) => \registros[12].reg_n_7\,
      Q(7) => \registros[12].reg_n_8\,
      Q(6) => \registros[12].reg_n_9\,
      Q(5) => \registros[12].reg_n_10\,
      Q(4) => \registros[12].reg_n_11\,
      Q(3) => \registros[12].reg_n_12\,
      Q(2) => \registros[12].reg_n_13\,
      Q(1) => \registros[12].reg_n_14\,
      Q(0) => \registros[12].reg_n_15\
    );
\registros[13].reg\: entity work.Registro_3
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      E(0) => demux_n_1,
      Q(15) => \registros[13].reg_n_0\,
      Q(14) => \registros[13].reg_n_1\,
      Q(13) => \registros[13].reg_n_2\,
      Q(12) => \registros[13].reg_n_3\,
      Q(11) => \registros[13].reg_n_4\,
      Q(10) => \registros[13].reg_n_5\,
      Q(9) => \registros[13].reg_n_6\,
      Q(8) => \registros[13].reg_n_7\,
      Q(7) => \registros[13].reg_n_8\,
      Q(6) => \registros[13].reg_n_9\,
      Q(5) => \registros[13].reg_n_10\,
      Q(4) => \registros[13].reg_n_11\,
      Q(3) => \registros[13].reg_n_12\,
      Q(2) => \registros[13].reg_n_13\,
      Q(1) => \registros[13].reg_n_14\,
      Q(0) => \registros[13].reg_n_15\
    );
\registros[14].reg\: entity work.Registro_4
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      E(0) => demux_n_5,
      Q(15) => \registros[14].reg_n_0\,
      Q(14) => \registros[14].reg_n_1\,
      Q(13) => \registros[14].reg_n_2\,
      Q(12) => \registros[14].reg_n_3\,
      Q(11) => \registros[14].reg_n_4\,
      Q(10) => \registros[14].reg_n_5\,
      Q(9) => \registros[14].reg_n_6\,
      Q(8) => \registros[14].reg_n_7\,
      Q(7) => \registros[14].reg_n_8\,
      Q(6) => \registros[14].reg_n_9\,
      Q(5) => \registros[14].reg_n_10\,
      Q(4) => \registros[14].reg_n_11\,
      Q(3) => \registros[14].reg_n_12\,
      Q(2) => \registros[14].reg_n_13\,
      Q(1) => \registros[14].reg_n_14\,
      Q(0) => \registros[14].reg_n_15\
    );
\registros[15].reg\: entity work.Registro_5
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      E(0) => demux_n_3,
      Q(15) => \registros[14].reg_n_0\,
      Q(14) => \registros[14].reg_n_1\,
      Q(13) => \registros[14].reg_n_2\,
      Q(12) => \registros[14].reg_n_3\,
      Q(11) => \registros[14].reg_n_4\,
      Q(10) => \registros[14].reg_n_5\,
      Q(9) => \registros[14].reg_n_6\,
      Q(8) => \registros[14].reg_n_7\,
      Q(7) => \registros[14].reg_n_8\,
      Q(6) => \registros[14].reg_n_9\,
      Q(5) => \registros[14].reg_n_10\,
      Q(4) => \registros[14].reg_n_11\,
      Q(3) => \registros[14].reg_n_12\,
      Q(2) => \registros[14].reg_n_13\,
      Q(1) => \registros[14].reg_n_14\,
      Q(0) => \registros[14].reg_n_15\,
      \q_reg[0]_0\ => \registros[15].reg_n_15\,
      \q_reg[0]_1\ => \registros[15].reg_n_31\,
      \q_reg[10]_0\ => \registros[15].reg_n_6\,
      \q_reg[10]_1\ => \registros[15].reg_n_21\,
      \q_reg[11]_0\ => \registros[15].reg_n_5\,
      \q_reg[11]_1\ => \registros[15].reg_n_20\,
      \q_reg[12]_0\ => \registros[15].reg_n_4\,
      \q_reg[12]_1\ => \registros[15].reg_n_19\,
      \q_reg[13]_0\ => \registros[15].reg_n_3\,
      \q_reg[13]_1\ => \registros[15].reg_n_18\,
      \q_reg[14]_0\ => \registros[15].reg_n_2\,
      \q_reg[14]_1\ => \registros[15].reg_n_17\,
      \q_reg[15]_0\ => \registros[15].reg_n_1\,
      \q_reg[15]_1\ => \registros[15].reg_n_16\,
      \q_reg[1]_0\ => \registros[15].reg_n_14\,
      \q_reg[1]_1\ => \registros[15].reg_n_30\,
      \q_reg[2]_0\ => \registros[15].reg_n_0\,
      \q_reg[2]_1\ => \registros[15].reg_n_29\,
      \q_reg[3]_0\ => \registros[15].reg_n_13\,
      \q_reg[3]_1\ => \registros[15].reg_n_28\,
      \q_reg[4]_0\ => \registros[15].reg_n_12\,
      \q_reg[4]_1\ => \registros[15].reg_n_27\,
      \q_reg[5]_0\ => \registros[15].reg_n_11\,
      \q_reg[5]_1\ => \registros[15].reg_n_26\,
      \q_reg[6]_0\ => \registros[15].reg_n_10\,
      \q_reg[6]_1\ => \registros[15].reg_n_25\,
      \q_reg[7]_0\ => \registros[15].reg_n_9\,
      \q_reg[7]_1\ => \registros[15].reg_n_24\,
      \q_reg[8]_0\ => \registros[15].reg_n_8\,
      \q_reg[8]_1\ => \registros[15].reg_n_23\,
      \q_reg[9]_0\ => \registros[15].reg_n_7\,
      \q_reg[9]_1\ => \registros[15].reg_n_22\,
      \readData2_OBUF[15]_inst_i_3\(15) => \registros[13].reg_n_0\,
      \readData2_OBUF[15]_inst_i_3\(14) => \registros[13].reg_n_1\,
      \readData2_OBUF[15]_inst_i_3\(13) => \registros[13].reg_n_2\,
      \readData2_OBUF[15]_inst_i_3\(12) => \registros[13].reg_n_3\,
      \readData2_OBUF[15]_inst_i_3\(11) => \registros[13].reg_n_4\,
      \readData2_OBUF[15]_inst_i_3\(10) => \registros[13].reg_n_5\,
      \readData2_OBUF[15]_inst_i_3\(9) => \registros[13].reg_n_6\,
      \readData2_OBUF[15]_inst_i_3\(8) => \registros[13].reg_n_7\,
      \readData2_OBUF[15]_inst_i_3\(7) => \registros[13].reg_n_8\,
      \readData2_OBUF[15]_inst_i_3\(6) => \registros[13].reg_n_9\,
      \readData2_OBUF[15]_inst_i_3\(5) => \registros[13].reg_n_10\,
      \readData2_OBUF[15]_inst_i_3\(4) => \registros[13].reg_n_11\,
      \readData2_OBUF[15]_inst_i_3\(3) => \registros[13].reg_n_12\,
      \readData2_OBUF[15]_inst_i_3\(2) => \registros[13].reg_n_13\,
      \readData2_OBUF[15]_inst_i_3\(1) => \registros[13].reg_n_14\,
      \readData2_OBUF[15]_inst_i_3\(0) => \registros[13].reg_n_15\,
      \readData2_OBUF[15]_inst_i_3_0\(15) => \registros[12].reg_n_0\,
      \readData2_OBUF[15]_inst_i_3_0\(14) => \registros[12].reg_n_1\,
      \readData2_OBUF[15]_inst_i_3_0\(13) => \registros[12].reg_n_2\,
      \readData2_OBUF[15]_inst_i_3_0\(12) => \registros[12].reg_n_3\,
      \readData2_OBUF[15]_inst_i_3_0\(11) => \registros[12].reg_n_4\,
      \readData2_OBUF[15]_inst_i_3_0\(10) => \registros[12].reg_n_5\,
      \readData2_OBUF[15]_inst_i_3_0\(9) => \registros[12].reg_n_6\,
      \readData2_OBUF[15]_inst_i_3_0\(8) => \registros[12].reg_n_7\,
      \readData2_OBUF[15]_inst_i_3_0\(7) => \registros[12].reg_n_8\,
      \readData2_OBUF[15]_inst_i_3_0\(6) => \registros[12].reg_n_9\,
      \readData2_OBUF[15]_inst_i_3_0\(5) => \registros[12].reg_n_10\,
      \readData2_OBUF[15]_inst_i_3_0\(4) => \registros[12].reg_n_11\,
      \readData2_OBUF[15]_inst_i_3_0\(3) => \registros[12].reg_n_12\,
      \readData2_OBUF[15]_inst_i_3_0\(2) => \registros[12].reg_n_13\,
      \readData2_OBUF[15]_inst_i_3_0\(1) => \registros[12].reg_n_14\,
      \readData2_OBUF[15]_inst_i_3_0\(0) => \registros[12].reg_n_15\,
      readReg1_IBUF(1 downto 0) => readReg1_IBUF(1 downto 0),
      readReg2_IBUF(1 downto 0) => readReg2_IBUF(1 downto 0)
    );
\registros[1].reg\: entity work.Registro_6
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      Q(15) => \registros[1].reg_n_0\,
      Q(14) => \registros[1].reg_n_1\,
      Q(13) => \registros[1].reg_n_2\,
      Q(12) => \registros[1].reg_n_3\,
      Q(11) => \registros[1].reg_n_4\,
      Q(10) => \registros[1].reg_n_5\,
      Q(9) => \registros[1].reg_n_6\,
      Q(8) => \registros[1].reg_n_7\,
      Q(7) => \registros[1].reg_n_8\,
      Q(6) => \registros[1].reg_n_9\,
      Q(5) => \registros[1].reg_n_10\,
      Q(4) => \registros[1].reg_n_11\,
      Q(3) => \registros[1].reg_n_12\,
      Q(2) => \registros[1].reg_n_13\,
      Q(1) => \registros[1].reg_n_14\,
      Q(0) => \registros[1].reg_n_15\,
      wr_IBUF => wr_IBUF,
      writeReg_IBUF(3 downto 0) => writeReg_IBUF(3 downto 0)
    );
\registros[2].reg\: entity work.Registro_7
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      Q(15) => \registros[2].reg_n_0\,
      Q(14) => \registros[2].reg_n_1\,
      Q(13) => \registros[2].reg_n_2\,
      Q(12) => \registros[2].reg_n_3\,
      Q(11) => \registros[2].reg_n_4\,
      Q(10) => \registros[2].reg_n_5\,
      Q(9) => \registros[2].reg_n_6\,
      Q(8) => \registros[2].reg_n_7\,
      Q(7) => \registros[2].reg_n_8\,
      Q(6) => \registros[2].reg_n_9\,
      Q(5) => \registros[2].reg_n_10\,
      Q(4) => \registros[2].reg_n_11\,
      Q(3) => \registros[2].reg_n_12\,
      Q(2) => \registros[2].reg_n_13\,
      Q(1) => \registros[2].reg_n_14\,
      Q(0) => \registros[2].reg_n_15\,
      wr_IBUF => wr_IBUF,
      writeReg_IBUF(3 downto 0) => writeReg_IBUF(3 downto 0)
    );
\registros[3].reg\: entity work.Registro_8
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      Q(15) => \registros[2].reg_n_0\,
      Q(14) => \registros[2].reg_n_1\,
      Q(13) => \registros[2].reg_n_2\,
      Q(12) => \registros[2].reg_n_3\,
      Q(11) => \registros[2].reg_n_4\,
      Q(10) => \registros[2].reg_n_5\,
      Q(9) => \registros[2].reg_n_6\,
      Q(8) => \registros[2].reg_n_7\,
      Q(7) => \registros[2].reg_n_8\,
      Q(6) => \registros[2].reg_n_9\,
      Q(5) => \registros[2].reg_n_10\,
      Q(4) => \registros[2].reg_n_11\,
      Q(3) => \registros[2].reg_n_12\,
      Q(2) => \registros[2].reg_n_13\,
      Q(1) => \registros[2].reg_n_14\,
      Q(0) => \registros[2].reg_n_15\,
      dir_IBUF => dir_IBUF,
      \readData1[0]\ => \registros[11].reg_n_15\,
      \readData1[10]\ => \registros[11].reg_n_6\,
      \readData1[11]\ => \registros[11].reg_n_5\,
      \readData1[12]\ => \registros[11].reg_n_4\,
      \readData1[13]\ => \registros[11].reg_n_3\,
      \readData1[14]\ => \registros[11].reg_n_2\,
      \readData1[15]\ => \registros[11].reg_n_1\,
      \readData1[1]\ => \registros[11].reg_n_14\,
      \readData1[2]\ => \registros[11].reg_n_0\,
      \readData1[3]\ => \registros[11].reg_n_13\,
      \readData1[4]\ => \registros[11].reg_n_12\,
      \readData1[5]\ => \registros[11].reg_n_11\,
      \readData1[6]\ => \registros[11].reg_n_10\,
      \readData1[7]\ => \registros[11].reg_n_9\,
      \readData1[8]\ => \registros[11].reg_n_8\,
      \readData1[9]\ => \registros[11].reg_n_7\,
      readData1_OBUF(15 downto 0) => readData1_OBUF(15 downto 0),
      \readData1_OBUF[0]_inst_i_1_0\ => \registros[7].reg_n_15\,
      \readData1_OBUF[10]_inst_i_1_0\ => \registros[7].reg_n_6\,
      \readData1_OBUF[11]_inst_i_1_0\ => \registros[7].reg_n_5\,
      \readData1_OBUF[12]_inst_i_1_0\ => \registros[7].reg_n_4\,
      \readData1_OBUF[13]_inst_i_1_0\ => \registros[7].reg_n_3\,
      \readData1_OBUF[14]_inst_i_1_0\ => \registros[7].reg_n_2\,
      \readData1_OBUF[15]_inst_i_1_0\ => \registros[7].reg_n_1\,
      \readData1_OBUF[1]_inst_i_1_0\ => \registros[7].reg_n_14\,
      \readData1_OBUF[2]_inst_i_1_0\ => \registros[7].reg_n_0\,
      \readData1_OBUF[3]_inst_i_1_0\ => \registros[7].reg_n_13\,
      \readData1_OBUF[4]_inst_i_1_0\ => \registros[7].reg_n_12\,
      \readData1_OBUF[5]_inst_i_1_0\ => \registros[7].reg_n_11\,
      \readData1_OBUF[6]_inst_i_1_0\ => \registros[7].reg_n_10\,
      \readData1_OBUF[7]_inst_i_1_0\ => \registros[7].reg_n_9\,
      \readData1_OBUF[8]_inst_i_1_0\ => \registros[7].reg_n_8\,
      \readData1_OBUF[9]_inst_i_1_0\ => \registros[7].reg_n_7\,
      \readData2[0]\ => \registros[11].reg_n_31\,
      \readData2[10]\ => \registros[11].reg_n_21\,
      \readData2[11]\ => \registros[11].reg_n_20\,
      \readData2[12]\ => \registros[11].reg_n_19\,
      \readData2[13]\ => \registros[11].reg_n_18\,
      \readData2[14]\ => \registros[11].reg_n_17\,
      \readData2[15]\ => \registros[11].reg_n_16\,
      \readData2[1]\ => \registros[11].reg_n_30\,
      \readData2[2]\ => \registros[11].reg_n_29\,
      \readData2[3]\ => \registros[11].reg_n_28\,
      \readData2[4]\ => \registros[11].reg_n_27\,
      \readData2[5]\ => \registros[11].reg_n_26\,
      \readData2[6]\ => \registros[11].reg_n_25\,
      \readData2[7]\ => \registros[11].reg_n_24\,
      \readData2[8]\ => \registros[11].reg_n_23\,
      \readData2[9]\ => \registros[11].reg_n_22\,
      readData2_OBUF(15 downto 0) => readData2_OBUF(15 downto 0),
      \readData2_OBUF[0]_inst_i_1_0\ => \registros[7].reg_n_31\,
      \readData2_OBUF[10]_inst_i_1_0\ => \registros[7].reg_n_21\,
      \readData2_OBUF[11]_inst_i_1_0\ => \registros[7].reg_n_20\,
      \readData2_OBUF[12]_inst_i_1_0\ => \registros[7].reg_n_19\,
      \readData2_OBUF[13]_inst_i_1_0\ => \registros[7].reg_n_18\,
      \readData2_OBUF[14]_inst_i_1_0\ => \registros[7].reg_n_17\,
      \readData2_OBUF[15]_inst_i_1_0\ => \registros[7].reg_n_16\,
      \readData2_OBUF[15]_inst_i_2_0\(15) => \registros[1].reg_n_0\,
      \readData2_OBUF[15]_inst_i_2_0\(14) => \registros[1].reg_n_1\,
      \readData2_OBUF[15]_inst_i_2_0\(13) => \registros[1].reg_n_2\,
      \readData2_OBUF[15]_inst_i_2_0\(12) => \registros[1].reg_n_3\,
      \readData2_OBUF[15]_inst_i_2_0\(11) => \registros[1].reg_n_4\,
      \readData2_OBUF[15]_inst_i_2_0\(10) => \registros[1].reg_n_5\,
      \readData2_OBUF[15]_inst_i_2_0\(9) => \registros[1].reg_n_6\,
      \readData2_OBUF[15]_inst_i_2_0\(8) => \registros[1].reg_n_7\,
      \readData2_OBUF[15]_inst_i_2_0\(7) => \registros[1].reg_n_8\,
      \readData2_OBUF[15]_inst_i_2_0\(6) => \registros[1].reg_n_9\,
      \readData2_OBUF[15]_inst_i_2_0\(5) => \registros[1].reg_n_10\,
      \readData2_OBUF[15]_inst_i_2_0\(4) => \registros[1].reg_n_11\,
      \readData2_OBUF[15]_inst_i_2_0\(3) => \registros[1].reg_n_12\,
      \readData2_OBUF[15]_inst_i_2_0\(2) => \registros[1].reg_n_13\,
      \readData2_OBUF[15]_inst_i_2_0\(1) => \registros[1].reg_n_14\,
      \readData2_OBUF[15]_inst_i_2_0\(0) => \registros[1].reg_n_15\,
      \readData2_OBUF[15]_inst_i_2_1\(15 downto 0) => q(15 downto 0),
      \readData2_OBUF[1]_inst_i_1_0\ => \registros[7].reg_n_30\,
      \readData2_OBUF[2]_inst_i_1_0\ => \registros[7].reg_n_29\,
      \readData2_OBUF[3]_inst_i_1_0\ => \registros[7].reg_n_28\,
      \readData2_OBUF[4]_inst_i_1_0\ => \registros[7].reg_n_27\,
      \readData2_OBUF[5]_inst_i_1_0\ => \registros[7].reg_n_26\,
      \readData2_OBUF[6]_inst_i_1_0\ => \registros[7].reg_n_25\,
      \readData2_OBUF[7]_inst_i_1_0\ => \registros[7].reg_n_24\,
      \readData2_OBUF[8]_inst_i_1_0\ => \registros[7].reg_n_23\,
      \readData2_OBUF[9]_inst_i_1_0\ => \registros[7].reg_n_22\,
      readReg1_IBUF(3 downto 0) => readReg1_IBUF(3 downto 0),
      readReg2_IBUF(3 downto 0) => readReg2_IBUF(3 downto 0),
      shamt_IBUF(3 downto 0) => shamt_IBUF(3 downto 0),
      she_IBUF => she_IBUF,
      wr_IBUF => wr_IBUF,
      writeData_IBUF(15 downto 0) => writeData_IBUF(15 downto 0),
      writeReg_IBUF(3 downto 0) => writeReg_IBUF(3 downto 0)
    );
\registros[4].reg\: entity work.Registro_9
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      Q(15) => \registros[4].reg_n_0\,
      Q(14) => \registros[4].reg_n_1\,
      Q(13) => \registros[4].reg_n_2\,
      Q(12) => \registros[4].reg_n_3\,
      Q(11) => \registros[4].reg_n_4\,
      Q(10) => \registros[4].reg_n_5\,
      Q(9) => \registros[4].reg_n_6\,
      Q(8) => \registros[4].reg_n_7\,
      Q(7) => \registros[4].reg_n_8\,
      Q(6) => \registros[4].reg_n_9\,
      Q(5) => \registros[4].reg_n_10\,
      Q(4) => \registros[4].reg_n_11\,
      Q(3) => \registros[4].reg_n_12\,
      Q(2) => \registros[4].reg_n_13\,
      Q(1) => \registros[4].reg_n_14\,
      Q(0) => \registros[4].reg_n_15\,
      wr_IBUF => wr_IBUF,
      writeReg_IBUF(3 downto 0) => writeReg_IBUF(3 downto 0)
    );
\registros[5].reg\: entity work.Registro_10
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      Q(15) => \registros[5].reg_n_0\,
      Q(14) => \registros[5].reg_n_1\,
      Q(13) => \registros[5].reg_n_2\,
      Q(12) => \registros[5].reg_n_3\,
      Q(11) => \registros[5].reg_n_4\,
      Q(10) => \registros[5].reg_n_5\,
      Q(9) => \registros[5].reg_n_6\,
      Q(8) => \registros[5].reg_n_7\,
      Q(7) => \registros[5].reg_n_8\,
      Q(6) => \registros[5].reg_n_9\,
      Q(5) => \registros[5].reg_n_10\,
      Q(4) => \registros[5].reg_n_11\,
      Q(3) => \registros[5].reg_n_12\,
      Q(2) => \registros[5].reg_n_13\,
      Q(1) => \registros[5].reg_n_14\,
      Q(0) => \registros[5].reg_n_15\,
      wr_IBUF => wr_IBUF,
      writeReg_IBUF(3 downto 0) => writeReg_IBUF(3 downto 0)
    );
\registros[6].reg\: entity work.Registro_11
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      Q(15) => \registros[6].reg_n_0\,
      Q(14) => \registros[6].reg_n_1\,
      Q(13) => \registros[6].reg_n_2\,
      Q(12) => \registros[6].reg_n_3\,
      Q(11) => \registros[6].reg_n_4\,
      Q(10) => \registros[6].reg_n_5\,
      Q(9) => \registros[6].reg_n_6\,
      Q(8) => \registros[6].reg_n_7\,
      Q(7) => \registros[6].reg_n_8\,
      Q(6) => \registros[6].reg_n_9\,
      Q(5) => \registros[6].reg_n_10\,
      Q(4) => \registros[6].reg_n_11\,
      Q(3) => \registros[6].reg_n_12\,
      Q(2) => \registros[6].reg_n_13\,
      Q(1) => \registros[6].reg_n_14\,
      Q(0) => \registros[6].reg_n_15\,
      wr_IBUF => wr_IBUF,
      writeReg_IBUF(3 downto 0) => writeReg_IBUF(3 downto 0)
    );
\registros[7].reg\: entity work.Registro_12
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      Q(15) => \registros[6].reg_n_0\,
      Q(14) => \registros[6].reg_n_1\,
      Q(13) => \registros[6].reg_n_2\,
      Q(12) => \registros[6].reg_n_3\,
      Q(11) => \registros[6].reg_n_4\,
      Q(10) => \registros[6].reg_n_5\,
      Q(9) => \registros[6].reg_n_6\,
      Q(8) => \registros[6].reg_n_7\,
      Q(7) => \registros[6].reg_n_8\,
      Q(6) => \registros[6].reg_n_9\,
      Q(5) => \registros[6].reg_n_10\,
      Q(4) => \registros[6].reg_n_11\,
      Q(3) => \registros[6].reg_n_12\,
      Q(2) => \registros[6].reg_n_13\,
      Q(1) => \registros[6].reg_n_14\,
      Q(0) => \registros[6].reg_n_15\,
      \q_reg[0]_0\ => \registros[7].reg_n_15\,
      \q_reg[0]_1\ => \registros[7].reg_n_31\,
      \q_reg[10]_0\ => \registros[7].reg_n_6\,
      \q_reg[10]_1\ => \registros[7].reg_n_21\,
      \q_reg[11]_0\ => \registros[7].reg_n_5\,
      \q_reg[11]_1\ => \registros[7].reg_n_20\,
      \q_reg[12]_0\ => \registros[7].reg_n_4\,
      \q_reg[12]_1\ => \registros[7].reg_n_19\,
      \q_reg[13]_0\ => \registros[7].reg_n_3\,
      \q_reg[13]_1\ => \registros[7].reg_n_18\,
      \q_reg[14]_0\ => \registros[7].reg_n_2\,
      \q_reg[14]_1\ => \registros[7].reg_n_17\,
      \q_reg[15]_0\ => \registros[7].reg_n_1\,
      \q_reg[15]_1\ => \registros[7].reg_n_16\,
      \q_reg[1]_0\ => \registros[7].reg_n_14\,
      \q_reg[1]_1\ => \registros[7].reg_n_30\,
      \q_reg[2]_0\ => \registros[7].reg_n_0\,
      \q_reg[2]_1\ => \registros[7].reg_n_29\,
      \q_reg[3]_0\ => \registros[7].reg_n_13\,
      \q_reg[3]_1\ => \registros[7].reg_n_28\,
      \q_reg[4]_0\ => \registros[7].reg_n_12\,
      \q_reg[4]_1\ => \registros[7].reg_n_27\,
      \q_reg[5]_0\ => \registros[7].reg_n_11\,
      \q_reg[5]_1\ => \registros[7].reg_n_26\,
      \q_reg[6]_0\ => \registros[7].reg_n_10\,
      \q_reg[6]_1\ => \registros[7].reg_n_25\,
      \q_reg[7]_0\ => \registros[7].reg_n_9\,
      \q_reg[7]_1\ => \registros[7].reg_n_24\,
      \q_reg[8]_0\ => \registros[7].reg_n_8\,
      \q_reg[8]_1\ => \registros[7].reg_n_23\,
      \q_reg[9]_0\ => \registros[7].reg_n_7\,
      \q_reg[9]_1\ => \registros[7].reg_n_22\,
      \readData2_OBUF[15]_inst_i_2\(15) => \registros[5].reg_n_0\,
      \readData2_OBUF[15]_inst_i_2\(14) => \registros[5].reg_n_1\,
      \readData2_OBUF[15]_inst_i_2\(13) => \registros[5].reg_n_2\,
      \readData2_OBUF[15]_inst_i_2\(12) => \registros[5].reg_n_3\,
      \readData2_OBUF[15]_inst_i_2\(11) => \registros[5].reg_n_4\,
      \readData2_OBUF[15]_inst_i_2\(10) => \registros[5].reg_n_5\,
      \readData2_OBUF[15]_inst_i_2\(9) => \registros[5].reg_n_6\,
      \readData2_OBUF[15]_inst_i_2\(8) => \registros[5].reg_n_7\,
      \readData2_OBUF[15]_inst_i_2\(7) => \registros[5].reg_n_8\,
      \readData2_OBUF[15]_inst_i_2\(6) => \registros[5].reg_n_9\,
      \readData2_OBUF[15]_inst_i_2\(5) => \registros[5].reg_n_10\,
      \readData2_OBUF[15]_inst_i_2\(4) => \registros[5].reg_n_11\,
      \readData2_OBUF[15]_inst_i_2\(3) => \registros[5].reg_n_12\,
      \readData2_OBUF[15]_inst_i_2\(2) => \registros[5].reg_n_13\,
      \readData2_OBUF[15]_inst_i_2\(1) => \registros[5].reg_n_14\,
      \readData2_OBUF[15]_inst_i_2\(0) => \registros[5].reg_n_15\,
      \readData2_OBUF[15]_inst_i_2_0\(15) => \registros[4].reg_n_0\,
      \readData2_OBUF[15]_inst_i_2_0\(14) => \registros[4].reg_n_1\,
      \readData2_OBUF[15]_inst_i_2_0\(13) => \registros[4].reg_n_2\,
      \readData2_OBUF[15]_inst_i_2_0\(12) => \registros[4].reg_n_3\,
      \readData2_OBUF[15]_inst_i_2_0\(11) => \registros[4].reg_n_4\,
      \readData2_OBUF[15]_inst_i_2_0\(10) => \registros[4].reg_n_5\,
      \readData2_OBUF[15]_inst_i_2_0\(9) => \registros[4].reg_n_6\,
      \readData2_OBUF[15]_inst_i_2_0\(8) => \registros[4].reg_n_7\,
      \readData2_OBUF[15]_inst_i_2_0\(7) => \registros[4].reg_n_8\,
      \readData2_OBUF[15]_inst_i_2_0\(6) => \registros[4].reg_n_9\,
      \readData2_OBUF[15]_inst_i_2_0\(5) => \registros[4].reg_n_10\,
      \readData2_OBUF[15]_inst_i_2_0\(4) => \registros[4].reg_n_11\,
      \readData2_OBUF[15]_inst_i_2_0\(3) => \registros[4].reg_n_12\,
      \readData2_OBUF[15]_inst_i_2_0\(2) => \registros[4].reg_n_13\,
      \readData2_OBUF[15]_inst_i_2_0\(1) => \registros[4].reg_n_14\,
      \readData2_OBUF[15]_inst_i_2_0\(0) => \registros[4].reg_n_15\,
      readReg1_IBUF(1 downto 0) => readReg1_IBUF(1 downto 0),
      readReg2_IBUF(1 downto 0) => readReg2_IBUF(1 downto 0),
      wr_IBUF => wr_IBUF,
      writeReg_IBUF(3 downto 0) => writeReg_IBUF(3 downto 0)
    );
\registros[8].reg\: entity work.Registro_13
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      E(0) => demux_n_7,
      Q(15) => \registros[8].reg_n_0\,
      Q(14) => \registros[8].reg_n_1\,
      Q(13) => \registros[8].reg_n_2\,
      Q(12) => \registros[8].reg_n_3\,
      Q(11) => \registros[8].reg_n_4\,
      Q(10) => \registros[8].reg_n_5\,
      Q(9) => \registros[8].reg_n_6\,
      Q(8) => \registros[8].reg_n_7\,
      Q(7) => \registros[8].reg_n_8\,
      Q(6) => \registros[8].reg_n_9\,
      Q(5) => \registros[8].reg_n_10\,
      Q(4) => \registros[8].reg_n_11\,
      Q(3) => \registros[8].reg_n_12\,
      Q(2) => \registros[8].reg_n_13\,
      Q(1) => \registros[8].reg_n_14\,
      Q(0) => \registros[8].reg_n_15\
    );
\registros[9].reg\: entity work.Registro_14
     port map (
      AR(0) => clr_IBUF,
      CLK => clk_IBUF_BUFG,
      D(15 downto 0) => d(15 downto 0),
      E(0) => demux_n_0,
      Q(15) => \registros[9].reg_n_0\,
      Q(14) => \registros[9].reg_n_1\,
      Q(13) => \registros[9].reg_n_2\,
      Q(12) => \registros[9].reg_n_3\,
      Q(11) => \registros[9].reg_n_4\,
      Q(10) => \registros[9].reg_n_5\,
      Q(9) => \registros[9].reg_n_6\,
      Q(8) => \registros[9].reg_n_7\,
      Q(7) => \registros[9].reg_n_8\,
      Q(6) => \registros[9].reg_n_9\,
      Q(5) => \registros[9].reg_n_10\,
      Q(4) => \registros[9].reg_n_11\,
      Q(3) => \registros[9].reg_n_12\,
      Q(2) => \registros[9].reg_n_13\,
      Q(1) => \registros[9].reg_n_14\,
      Q(0) => \registros[9].reg_n_15\
    );
\shamt_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => shamt(0),
      O => shamt_IBUF(0)
    );
\shamt_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => shamt(1),
      O => shamt_IBUF(1)
    );
\shamt_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => shamt(2),
      O => shamt_IBUF(2)
    );
\shamt_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => shamt(3),
      O => shamt_IBUF(3)
    );
she_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => she,
      O => she_IBUF
    );
wr_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => wr,
      O => wr_IBUF
    );
\writeData_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(0),
      O => writeData_IBUF(0)
    );
\writeData_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(10),
      O => writeData_IBUF(10)
    );
\writeData_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(11),
      O => writeData_IBUF(11)
    );
\writeData_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(12),
      O => writeData_IBUF(12)
    );
\writeData_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(13),
      O => writeData_IBUF(13)
    );
\writeData_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(14),
      O => writeData_IBUF(14)
    );
\writeData_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(15),
      O => writeData_IBUF(15)
    );
\writeData_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(1),
      O => writeData_IBUF(1)
    );
\writeData_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(2),
      O => writeData_IBUF(2)
    );
\writeData_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(3),
      O => writeData_IBUF(3)
    );
\writeData_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(4),
      O => writeData_IBUF(4)
    );
\writeData_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(5),
      O => writeData_IBUF(5)
    );
\writeData_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(6),
      O => writeData_IBUF(6)
    );
\writeData_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(7),
      O => writeData_IBUF(7)
    );
\writeData_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(8),
      O => writeData_IBUF(8)
    );
\writeData_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeData(9),
      O => writeData_IBUF(9)
    );
\writeReg_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeReg(0),
      O => writeReg_IBUF(0)
    );
\writeReg_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeReg(1),
      O => writeReg_IBUF(1)
    );
\writeReg_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeReg(2),
      O => writeReg_IBUF(2)
    );
\writeReg_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => writeReg(3),
      O => writeReg_IBUF(3)
    );
end STRUCTURE;
