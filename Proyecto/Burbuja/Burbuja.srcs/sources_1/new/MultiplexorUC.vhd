library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MultiplexorUC is
    Port ( 
        microFuncion, microOpcode : in STD_LOGIC_VECTOR (19 downto 0);
        SM : in STD_LOGIC;
        salida : out STD_LOGIC_VECTOR (19 downto 0));
end MultiplexorUC;

architecture Behavioral of MultiplexorUC is
begin
    with SM select  
        salida <= 
            microOpcode when '1' ,
            microFuncion when others;
end Behavioral;