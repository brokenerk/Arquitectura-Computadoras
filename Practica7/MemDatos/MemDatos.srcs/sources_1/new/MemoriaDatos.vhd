library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity MemoriaDatos is
    generic ( m : integer := 11;
              n : integer := 16);
    Port ( add : in STD_LOGIC_VECTOR (m-1 downto 0);
           dataIn : in STD_LOGIC_VECTOR (n-1 downto 0);
           clk, wd : in STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR (n-1 downto 0));
end MemoriaDatos;

architecture Behavioral of MemoriaDatos is
    type banco is array (0 to (2**m)-1) of STD_LOGIC_VECTOR (n-1 downto 0);
    signal aux : banco;
begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            if (wd = '1') then
                aux(conv_integer(add)) <= dataIn;
            end if;
        end if;
    end process;
    dataOut <= aux(conv_integer(add));
end Behavioral;
