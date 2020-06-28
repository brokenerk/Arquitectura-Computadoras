library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbMopCode is
end tbMopCode;

architecture Behavioral of tbMopCode is
    component MopCode is
        Port ( opCode : in  STD_LOGIC_VECTOR (4 downto 0);
               microOpCode : out  STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    signal opCode : STD_LOGIC_VECTOR (4 downto 0);
    signal microOpCode : STD_LOGIC_VECTOR (19 downto 0);
    
begin
    op : MopCode Port map ( 
        opCode => OpCode,
        microOpCode => microOpCode
    );
    
    process
    begin
        opCode <= "00000";
        wait for 10 ns;
        opCode <= "00001";
        wait for 10 ns;
        opCode <= "00010";
        wait for 10 ns;
        opCode <= "00011";
        wait for 10 ns;
        opCode <= "00100";
        wait for 10 ns;
        opCode <= "00101";
        wait for 10 ns;
        opCode <= "00110";
        wait for 10 ns;
        opCode <= "00111";
        wait for 10 ns;
        opCode <= "01000";
        wait;
    end process;
end Behavioral;