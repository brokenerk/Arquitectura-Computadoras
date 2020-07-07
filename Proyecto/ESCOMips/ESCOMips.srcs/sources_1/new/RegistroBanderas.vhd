library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegistroBanderas is
    Port ( banderas : in STD_LOGIC_VECTOR (3 downto 0);
           clr, clk, LF : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end RegistroBanderas;

architecture Behavioral of RegistroBanderas is
begin
    process(clk, clr)
        begin
        if (clr = '1') then
            Q <= (others => '0');
        elsif (falling_edge (clk)) then
            if (LF = '1') then
                Q <= banderas;
            end if;
        end if;
    end process;
end Behavioral;