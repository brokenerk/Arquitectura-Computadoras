library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tbContador is
end tbContador;

architecture Behavioral of tbContador is
    component Contador is
        Port ( clk, clr, LB, EB : in STD_LOGIC;
               B : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal clk, clr, LB, EB : STD_LOGIC := '0';
    signal B : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
begin
    cont : Contador Port map ( 
        clk => clk,
        clr => clr, 
        LB => LB, 
        EB => EB,
        B => B
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
        wait for 10 ns;
        LB <= '1';
        EB <= '0';
        wait for 10 ns;
        LB <= '0';
        EB <= '1';
        wait for 50 ns;
        LB <= '1';
        EB <= '0';
        wait for 10 ns;
        LB <= '0';
        EB <= '1';
        wait for 50 ns;
        LB <= '0';
        EB <= '0';
        wait;
    end process;
end Behavioral;
