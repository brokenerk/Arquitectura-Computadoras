library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbUnidadControl is
end tbUnidadControl;

architecture Behavioral of tbUnidadControl is
    component UnidadControl is
        Port ( clk, clr, ini, z, a0 : in STD_LOGIC;
               LA, LB, EA, EB, EC : out STD_LOGIC);
    end component;
    
    signal clk, clr, ini, z, a0, LA, LB, EA, EB, EC : STD_LOGIC := '0';
begin
    ASM : UnidadControl Port map ( 
        clk => clk, 
        clr => clr, 
        ini => ini,
        z => z, 
        a0 => a0,
        LA => LA, 
        LB => LB, 
        EA => EA, 
        EB => EB, 
        EC => EC
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
        wait for 30 ns;
        clr <= '0';
        wait for 60 ns;
        ini <= '1';
        wait for 10 ns;
        ini <= '0';
        wait for 50 ns;
        a0 <= '1';
        wait for 10 ns;
        a0 <= '0';
        wait for 20 ns;
        a0 <= '1';
        wait for 10 ns;
        a0 <= '0';
        wait for 120 ns;
        z <= '1';
        wait;
    end process;
end Behavioral;
