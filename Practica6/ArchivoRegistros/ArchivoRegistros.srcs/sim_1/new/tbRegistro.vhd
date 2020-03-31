library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbRegistro is
end tbRegistro;

architecture Behavioral of tbRegistro is
    component Registro is
        Port ( d : in STD_LOGIC_VECTOR (15 downto 0);
               q : out STD_LOGIC_VECTOR (15 downto 0);
               clr, clk, l : in STD_LOGIC);
    end component;
    
    signal d : STD_LOGIC_VECTOR (15 downto 0);
    signal q : STD_LOGIC_VECTOR (15 downto 0);
    signal clr, clk, l : STD_LOGIC;
begin
    reg : Registro Port map ( 
        d => d,
        q => q,
        clk => clk,
        clr => clr,
        l => l
    );
        
    reloj : process begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
    
    sim : process begin
        clr <= '1';
        wait for 40 ns;
        clr <= '0';
        l <= '1';
        d <= x"1234";
        wait for 10 ns;
        l <= '0';
        d <= x"8765";
        wait;
    end process;
end Behavioral;