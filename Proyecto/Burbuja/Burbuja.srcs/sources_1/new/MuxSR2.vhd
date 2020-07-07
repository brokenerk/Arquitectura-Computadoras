library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MuxSR2 is
    Port ( a, b : in STD_LOGIC_VECTOR (3 downto 0);
           control : in STD_LOGIC;
           salida : out STD_LOGIC_VECTOR (3 downto 0));
end MuxSR2;

architecture Behavioral of MuxSR2 is
begin
    with control select  
        salida <= a when '0' ,
        b when others;
end Behavioral;