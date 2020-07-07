library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux16Bits is
    Port ( a, b : in STD_LOGIC_VECTOR (15 downto 0);
           control : in STD_LOGIC;
           salida : out STD_LOGIC_VECTOR (15 downto 0));
end Mux16Bits;

architecture Behavioral of Mux16Bits is

begin
    with control select  
        salida <= a when '0' ,
        b when others;
end Behavioral;
