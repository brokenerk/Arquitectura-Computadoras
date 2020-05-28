library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Contador is
    Port ( clk, clr, LB, EB : in STD_LOGIC;
           B : out STD_LOGIC_VECTOR (3 downto 0));
end Contador;

architecture Behavioral of Contador is
begin
    process(clk, clr, LB, EB)
        variable auxB: STD_LOGIC_VECTOR (3 downto 0);
    begin
        if (clr = '1') then
            auxB := (others => '0');
        elsif (rising_edge(clk)) then
            if (LB = '0' and EB = '0') then
                auxB := auxB;
            elsif (LB = '1' and EB = '0') then
                auxB := (others => '0');
            elsif (LB = '0' and EB = '1') then
                auxB := auxB + 1;
            end if;
        end if;
        B <= auxB;
    end process;
end Behavioral;