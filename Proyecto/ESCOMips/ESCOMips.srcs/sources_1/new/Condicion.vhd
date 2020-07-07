library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Condicion is
    Port ( Q : in STD_LOGIC_VECTOR (3 downto 0);
           EQ, NE, LT, LE, GT, GE : out STD_LOGIC);
end Condicion;

architecture Behavioral of Condicion is
begin
    --Q[OV, N, Z, C]
    EQ <= Q(1);
    NE <= not Q(1);
    LT <= not Q(0);
    LE <= not Q(0) or Q(1);
    GT <= Q(0) and not Q(1);
    GE <= Q(0);
end Behavioral;