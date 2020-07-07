library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity MemoriaPrograma2 is
    generic ( m : integer := 10;
              n : integer := 25);
    Port ( pc : in STD_LOGIC_VECTOR (m-1 downto 0);
           inst : out STD_LOGIC_VECTOR (n-1 downto 0));
end MemoriaPrograma2;

architecture Behavioral of MemoriaPrograma2 is
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
    
    type banco is array (0 to (2**m)-1) of STD_LOGIC_VECTOR (n-1 downto 0);
    constant aux : banco := (
        -- R1 i
        -- R2 j
        -- R3 n
        -- R4 A[i]
        -- R5 A[i+1]
        -- R6 A[j]
        -- R7 A[j+1]
        -- R8 n - 1
        -- R9 n - 1 - i
        
        LI & R0 & x"0002",                  -- num max (2)      0
        LI & R3 & x"0019",                  -- n = 25           1
        SUBI & R8 & R3 & x"001",            -- n - 1            2
        CALL & SU & x"0008",                -- CALL llenar      3
        CALL & SU & x"000D",                -- CALL ordenar     4
        CALL & SU & x"001B",                -- CALL mostrar     5
        
        -- fin
        NOP & SU & SU & SU & SU & SU,       -- NOP              6
        B & SU & x"0006",                   -- B fin            7
        
        -- llenar
        SW & R0 & R1 & x"000",            -- A[i+0] = R0        8
        ADDI & R1 & R1 & x"001",          -- i++                9
        ADDI & R0 & R0 & x"002",          -- R0 += 2            10
        BLTI & R3 & R1 & x"3FD",          -- i < n llenar       11
        RET & SU & SU & SU & SU & SU,     -- RET                12
        
        -- ordenar
        LI & R1 & x"0000",                -- i = 0              13
        -- ciclo
        LW & R6 & R2 & x"000",            -- R6 = A[j+0]        14
        LW & R7 & R2 & x"001",            -- R7 = A[j+1]        15
        BLTI & R7 & R6 & x"002",          -- A[j] < A[j+1] cambiar  16
        B & SU & x"0014",                 -- B condicionJ       17
        -- cambiar
        SW & R7 & R2 & x"000",            -- A[j] = A[j+1]      18
        SW & R6 & R2 & x"001",            -- A[j+1] = A[j]      19
        -- condicionJ
        ADDI & R2 & R2 & x"001",          -- j++                20
        tipoR & R9 & R8 & R1 & SU & SUB,  -- n - i              21
        BLTI & R9 & R2 & x"3F8",          -- j < n-1-i ciclo    22
        -- condicionI
        LI & R2 & x"0000",                -- i = 0              23
        ADDI & R1 & R1 & x"001",          -- i++                24
        BLTI & R8 & R1 & x"3F5",          -- i < n-1 ciclo      25
        RET & SU & SU & SU & SU & SU,     -- RET                26
        
        -- mostrar
        LI & R1 & x"0000",                -- i = 0              27
        -- cicloMostrar
        LW & R2 & R1 & x"000",            -- R2 = A[i+0]        28
        SW & R2 & R1 & x"000",            -- print(A[i])        29
        ADDI & R1 & R1 & x"001",          -- 1++                30
        BLTI & R3 & R1 & x"3FD",          -- i < n cicloMostrar 31
        RET & SU & SU & SU & SU & SU,     -- RET                32    

        others => (others => '0')
    );
begin
    inst <= aux(conv_integer(pc));
end Behavioral;