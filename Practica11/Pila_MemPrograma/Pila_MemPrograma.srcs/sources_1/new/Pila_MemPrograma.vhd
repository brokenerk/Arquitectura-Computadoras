library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Pila_MemPrograma is
    generic ( m : integer := 10; --tam PC
              m1 : integer := 16; --tam PCin
              n : integer := 3;  --tam SP
              tam_inst : integer := 25); --tam Instruccion
    Port ( PCin : in STD_LOGIC_VECTOR (m1-1 downto 0);
           clk, clr, wpc, up, dw : in STD_LOGIC;
           PCout : out STD_LOGIC_VECTOR (m1-1 downto 0);
           SPout : out STD_LOGIC_VECTOR (n-1 downto 0);
           inst : out STD_LOGIC_VECTOR (tam_inst-1 downto 0));
end Pila_MemPrograma;

architecture Behavioral of Pila_MemPrograma is
    component MemoriaPrograma is
        Port ( pc : in STD_LOGIC_VECTOR (m-1 downto 0);
               inst : out STD_LOGIC_VECTOR (tam_inst-1 downto 0));
    end component;
    
    component Pila is
        Port ( PCin : in STD_LOGIC_VECTOR (m1-1 downto 0);
               clk, clr, wpc, up, dw : in STD_LOGIC;
               PCout : out STD_LOGIC_VECTOR (m1-1 downto 0);
               SPout : out STD_LOGIC_VECTOR (n-1 downto 0));
    end component;
    
    signal aux_pc : STD_LOGIC_VECTOR (m1-1 downto 0);
begin
    stack : Pila Port map (
        PCin => PCin,
        clk => clk, 
        clr => clr, 
        wpc => wpc, 
        up => up, 
        dw => dw,
        PCout => aux_pc,
        SPout => SPout
    );
    
    mp : MemoriaPrograma Port map ( 
        pc => aux_pc(9 downto 0),
        inst => inst
    );
    
    PCout <= aux_pc;
end Behavioral;
