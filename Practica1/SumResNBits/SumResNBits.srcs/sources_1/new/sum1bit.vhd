library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sum1bit is
    Port ( a, b, cin : in STD_LOGIC;
           s, cout : out STD_LOGIC);
end sum1bit;

architecture Behavioral of sum1bit is
begin
    s <= a xor b xor cin;
    cout <= (a and cin) or (a and b) or (b and cin);
end Behavioral;
