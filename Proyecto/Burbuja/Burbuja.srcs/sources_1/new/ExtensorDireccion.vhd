library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ExtensorDireccion is
     Port ( lit_in : in STD_LOGIC_VECTOR (11 downto 0);
            lit_out : out STD_LOGIC_VECTOR (15 downto 0));
end ExtensorDireccion;

architecture Behavioral of ExtensorDireccion is
    signal lit : STD_LOGIC_VECTOR (15 downto 0);
    constant dir : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
    lit(11 downto 0) <= lit_in;
    lit(15 downto 12) <= dir;
    lit_out <= lit;
end Behavioral;