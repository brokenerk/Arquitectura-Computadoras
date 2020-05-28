library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbRegistro is
end tbRegistro;

architecture Behavioral of tbRegistro is
    component Registro is
        Port ( LA, EA, clk, clr : in STD_LOGIC;
               dato : in STD_LOGIC_VECTOR (8 downto 0);
               A : out STD_LOGIC_VECTOR (8 downto 0));
    end component;
    
    signal LA, EA, clk, clr : STD_LOGIC := '0';
    signal dato, A : STD_LOGIC_VECTOR (8 downto 0) := (others => '0');
begin
    reg : Registro Port map (
        LA => LA, 
        EA => EA, 
        clk => clk, 
        clr => clr,
        dato => dato,
        A => A
    );
    
    reloj : process begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
    
    process
    begin
        clr <= '1';
        wait for 10 ns;
        clr <= '0';
        dato <= "100000000";
        wait for 10 ns;
        LA <= '0';
        EA <= '0';
        wait for 10 ns;
        LA <= '1';
        EA <= '0';
        wait for 10 ns;
        LA <= '0';
        EA <= '1';
        wait;
    end process;

end Behavioral;
