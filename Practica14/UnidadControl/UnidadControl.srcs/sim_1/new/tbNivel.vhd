library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbNivel is
end tbNivel;

architecture Behavioral of tbNivel is
    component Nivel is
        Port ( clk, clr : in STD_LOGIC;
               nivel : out STD_LOGIC);
    end component;
    
    signal clr, clk, na : STD_LOGIC;
    
begin
    niv : Nivel Port map (
        clk => clk,
        clr => clr,
        nivel => na
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
        wait for 3 ns;
        clr <= '0';
        wait;
    end process;

end Behavioral;