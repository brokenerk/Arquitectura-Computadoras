library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registro is
    Port ( LA, EA, clk, clr : in STD_LOGIC;
           dato : in STD_LOGIC_VECTOR (8 downto 0);
           A : out STD_LOGIC_VECTOR (8 downto 0));
end Registro;

architecture Behavioral of Registro is
    signal auxA: STD_LOGIC_VECTOR (8 downto 0);
begin
    process(LA, EA, clk, clr)
    begin
        if (clr = '1') then
            auxA <= (others => '0');
        elsif (rising_edge(clk)) then
            if (LA = '0' and EA = '0') then
                auxA <= auxA;
            elsif (LA = '1' and EA = '0') then
                auxA <= dato;
            elsif (LA = '0' and EA = '1') then
                auxA <= to_stdlogicvector(to_bitvector(auxA) SRL 1);
            end if;
        end if;
    end process;
    A <= auxA;
end Behavioral;
