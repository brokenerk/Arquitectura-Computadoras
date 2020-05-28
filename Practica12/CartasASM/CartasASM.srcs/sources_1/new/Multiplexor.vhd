library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor is
    Port ( num : in STD_LOGIC_VECTOR (6 downto 0);
           EC : in STD_LOGIC;
           display : out STD_LOGIC_VECTOR (6 downto 0));
end Multiplexor;

architecture Behavioral of Multiplexor is
    constant guion : STD_LOGIC_VECTOR (6 downto 0) := "1111110";
begin
    with EC select  
        display <= num when '1',
        guion when others;
end Behavioral;
