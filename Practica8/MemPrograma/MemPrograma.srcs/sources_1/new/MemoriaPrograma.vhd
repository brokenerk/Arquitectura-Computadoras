library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity MemoriaPrograma is
    generic ( m : integer := 10;
              n : integer := 25);
    Port ( pc : in STD_LOGIC_VECTOR (m-1 downto 0);
           inst : out STD_LOGIC_VECTOR (n-1 downto 0));
end MemoriaPrograma;

architecture Behavioral of MemoriaPrograma is
    --Instrucciones tipo R
    constant tipoR : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    --Carga y Almacenamiento
    constant LI : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant LWI : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant LW : STD_LOGIC_VECTOR (4 downto 0) := "10111";
    constant SWI : STD_LOGIC_VECTOR (4 downto 0) := "00011";
    constant SW : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    --Aritmticas
    constant ADDI : STD_LOGIC_VECTOR (4 downto 0) := "00101";
    constant SUBI : STD_LOGIC_VECTOR (4 downto 0) := "00110";
    --Identificador Aritmticas R
    constant ADD : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant SUB : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    --Logicas
    constant ANDI : STD_LOGIC_VECTOR (4 downto 0) := "00111";
    constant ORI : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant XORI : STD_LOGIC_VECTOR (4 downto 0) := "01001";
    constant NANDI : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant NORI : STD_LOGIC_VECTOR (4 downto 0) := "01011";
    constant XNORI : STD_LOGIC_VECTOR (4 downto 0) := "01100";
    --Identificador Logicas R
    constant ANDR : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ORR : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant XORR : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant NANDR : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant NORR : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant XNORR : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant NOTR : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    --Identificador Corrimiento R
    constant SLLR : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant SRLR : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant OPR : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    --Saltos Condicionales e Incondicionales
    constant BEQI : STD_LOGIC_VECTOR (4 downto 0) := "01101";
    constant BNEI : STD_LOGIC_VECTOR (4 downto 0) := "01110";
    constant BLTI : STD_LOGIC_VECTOR (4 downto 0) := "01111";
    constant BLETI : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant BGTI : STD_LOGIC_VECTOR (4 downto 0) := "10001";
    constant BGETI : STD_LOGIC_VECTOR (4 downto 0) := "10010";
    constant B : STD_LOGIC_VECTOR (4 downto 0) := "10011";
    --Manejo de Subrutinas
    constant CALL : STD_LOGIC_VECTOR (4 downto 0) := "10100";
    constant RET : STD_LOGIC_VECTOR (4 downto 0) := "10101";
    --Otros
    constant NOP : STD_LOGIC_VECTOR (4 downto 0) := "10110";
    constant SU : STD_LOGIC_VECTOR (3 downto 0) := "0000"; -- sin usar
    --Registros
    constant R0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant R1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant R2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant R3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant R4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant R5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant R6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant R7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant R8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant R9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant R10 : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant R11 : STD_LOGIC_VECTOR (3 downto 0) := "1011";
    constant R12 : STD_LOGIC_VECTOR (3 downto 0) := "1100";
    constant R13 : STD_LOGIC_VECTOR (3 downto 0) := "1101";
    constant R14 : STD_LOGIC_VECTOR (3 downto 0) := "1110";
    constant R15 : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    
    type banco is array (0 to (2**m)-1) of STD_LOGIC_VECTOR(n-1 downto 0);
    constant aux : banco := (
        LI & R0 & x"0000",                  --LI  R0, #0
        LI & R1 & x"0001",                  --LI  R1, #1
        LI & R2 & x"0000",                  --LI  R2, #0
        LI & R3 & x"000c",                  --LI  R3, #12
        tipoR & R4 & R0 & R1 & SU & ADD,    --et1: ADD R4, R0, R1
        SWI & R4 & x"0072",                 --SWI R4, 0x72
        ADDI & R0 & R1 & x"000",            --ADDI R0, R1, #0
        ADDI & R1 & R4 & x"000",            --ADDI R1, R4, #0
        ADDI & R2 & R2 & x"001",            --ADDI R2, R2, #1
        BNEI & R2 & R3 & x"00b",            --BNEI R2, R3, et1 (1011 = -5)
        NOP & SU & SU & SU & SU & SU,       --fin: NOP
        B & SU & x"000a",                   --B fin
        others => (others => '0')
    );
begin
    inst <= aux(conv_integer(pc));
end Behavioral;