library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbBarrelShifter is
end tbBarrelShifter;

architecture Behavioral of tbBarrelShifter is
    component BarrelShifter is
        Port ( dato : in STD_LOGIC_VECTOR (15 downto 0);
               res : out STD_LOGIC_VECTOR (15 downto 0);
               shamt : in STD_LOGIC_VECTOR (3 downto 0);
               direccion : in STD_LOGIC);
    end component;
     
    signal dato : STD_LOGIC_VECTOR (15 downto 0);
    signal res : STD_LOGIC_VECTOR (15 downto 0);
    signal shamt : STD_LOGIC_VECTOR (3 downto 0);
    signal direccion : STD_LOGIC;
begin
    barrel : BarrelShifter Port map ( 
        dato => dato,
        res  => res,
        shamt => shamt,
        direccion => direccion
    );
    
    process begin
        direccion <= '1'; --- izquierda
        dato <= "0000000010010111";
        shamt <= "0011";
        wait for 500 ns;
        direccion <= '0'; --- derecha
        dato <= "0000000010010001";
        shamt <= "0100";
        wait;
    end process;
end Behavioral;