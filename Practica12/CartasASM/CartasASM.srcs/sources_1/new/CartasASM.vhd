library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CartasASM is
    Port ( clk, clr, ini : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (8 downto 0);
           Dout : out STD_LOGIC_VECTOR (8 downto 0);
           num : out STD_LOGIC_VECTOR (3 downto 0);
           display : out STD_LOGIC_VECTOR (6 downto 0));
end CartasASM;

architecture Behavioral of CartasASM is
    component UnidadControl is
        Port ( clk, clr, ini, z, a0 : in STD_LOGIC;
               LA, LB, EA, EB, EC : out STD_LOGIC);
    end component;
    
    component Registro is
        Port ( LA, EA, clk, clr : in STD_LOGIC;
               dato : in STD_LOGIC_VECTOR (8 downto 0);
               A : out STD_LOGIC_VECTOR (8 downto 0));
    end component;
    
    component Contador is
        Port ( clk, clr, LB, EB : in STD_LOGIC;
               B : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component Decodificador is
        Port ( B : in STD_LOGIC_VECTOR (3 downto 0);
               num : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    component Multiplexor is
        Port ( num : in STD_LOGIC_VECTOR (6 downto 0);
               ec : in STD_LOGIC;
               display : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    signal auxZ, auxLA, auxLB, auxEA, auxEB, auxEC : STD_LOGIC := '0';
    signal auxA : STD_LOGIC_VECTOR (8 downto 0) := (others => '0');
    signal auxB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal auxNum : STD_LOGIC_VECTOR (6 downto 0) := (others => '0');
begin

    reg : Registro Port map (
        LA => auxLA, 
        EA => auxEA, 
        clk => clk, 
        clr => clr,
        dato => D,
        A => auxA
    );
    
    auxZ <= '1' when auxA = "000000000" else '0';
    
    uc : UnidadControl Port map ( 
        clk => clk, 
        clr => clr, 
        ini => ini,
        z => auxZ, 
        a0 => auxA(0),
        LA => auxLA, 
        LB => auxLB, 
        EA => auxEA, 
        EB => auxEB, 
        EC => auxEC
    );
    
    cont : Contador Port map ( 
        clk => clk,
        clr => clr, 
        LB => auxLB, 
        EB => auxEB,
        B => auxB
    );
    
    deco : Decodificador Port map ( 
        B => auxB,
        num => auxNum
    );
    
    mux : Multiplexor Port map (
        num => auxNum,
        EC => auxEC,
        display => display
    );
    
    num <= auxB;
    Dout <= auxA;
end Behavioral;
