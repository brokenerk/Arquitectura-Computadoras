library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor is
    Port ( cl0, cl1, cl2, cl3, cl4, cl5, cl6, cl7, cl8, cl9, cl10, cl11, cl12, cl13, cl14, cl15 : in STD_LOGIC_VECTOR (15 downto 0);
           sel : in STD_LOGIC_VECTOR (3 downto 0);
           salida : out STD_LOGIC_VECTOR (15 downto 0));
end Multiplexor;

architecture Behavioral of Multiplexor is
begin
    with sel select salida <= 
        cl0 when "0000",
        cl1 when "0001",
        cl2 when "0010",
        cl3 when "0011",
        cl4 when "0100",
        cl5 when "0101",
        cl6 when "0110",
        cl7 when "0111",
        cl8 when "1000",
        cl9 when "1001",
        cl10 when "1010",
        cl11 when "1011",
        cl12 when "1100",
        cl13 when "1101",
        cl14 when "1110",
        cl15 when others;
end Behavioral;