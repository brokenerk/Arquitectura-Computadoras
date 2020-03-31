library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2C is
    generic ( n : integer := 16 );
    Port ( barrelShifter, write_data : in STD_LOGIC_VECTOR (n-1 downto 0);
           she : in STD_LOGIC;
           sal : out STD_LOGIC_VECTOR (n-1 downto 0));
end Mux2C;

architecture Behavioral of Mux2C is
begin
    with she select sal <= 
        barrelShifter when '1',
        write_data when others;
end Behavioral;
