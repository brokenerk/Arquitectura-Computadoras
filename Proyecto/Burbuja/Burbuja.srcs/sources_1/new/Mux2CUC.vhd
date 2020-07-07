library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2CUC is
    Port ( opCode : in STD_LOGIC_VECTOR (4 downto 0);
           SDOPC : in STD_LOGIC;
           salida : out STD_LOGIC_VECTOR (4 downto 0));
end Mux2CUC;

architecture Behavorial of Mux2CUC is
    constant ceros : STD_LOGIC_VECTOR (4 downto 0) := "00000";
begin
    with SDOPC select  
        salida <= 
            opCode when '1',
            ceros when others;   
end Behavorial;