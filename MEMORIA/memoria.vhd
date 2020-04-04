
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Arreglo is
    Port ( addW, addR : in STD_LOGIC_VECTOR (4 downto 0);
           dataIn : in STD_LOGIC_VECTOR (7 downto 0);
           clk, wd : in STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR (7 downto 0));
end Arreglo;

architecture Behavioral of Arreglo is
type banco is array (0 to 15) of std_logic_vector(7 downto 0);
signal aux : banco;
begin

process(clk)
begin
    if (rising_edge(clk)) then
        if (wd = '1') then
            aux(conv_integer(addW)) <= dataIn;
        end if;
    end if;
end process;
dataOut <= aux(conv_integer(addR));


end Behavioral;






library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity tbArreglo is
--  Port ( );
end tbArreglo;

architecture Behavioral of tbArreglo is
component Arreglo is
    Port ( addW, addR : in STD_LOGIC_VECTOR (4 downto 0);
           dataIn : in STD_LOGIC_VECTOR (7 downto 0);
           clk, wd : in STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal addW, addR :  STD_LOGIC_VECTOR (4 downto 0) := "00000";
signal dataIn :  STD_LOGIC_VECTOR (7 downto 0) := "00011000";
signal clk:  STD_LOGIC := '0';
signal wd :  STD_LOGIC := '0';
signal dataOut :  STD_LOGIC_VECTOR (7 downto 0)  := "00000000";

begin

u1 : Arreglo 
    Port map ( addW => addW, 
    addR => addR, 
           dataIn => dataIn,
           clk => clk,
            wd => wd, 
                      dataOut => dataOut
           );
uno: process
begin
    clk <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;

end process;


dos: process
begin
    addR <= addR + 1;
    wait for 40 ns;
end process;

tres: process
begin
    addW <= addW + "00010";
    wait for 20 ns;
end process;

cuatro: process
begin
    dataIn <= dataIn + "00011010";
    wait for 25 ns;
end process;

cinco: process
begin
    wd <= '1';
    wait for 100 ns;
     wd <= '0';
    wait for 100 ns;
end process;
end Behavioral;
