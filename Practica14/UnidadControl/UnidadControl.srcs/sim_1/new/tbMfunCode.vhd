library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbMfunCode is
end tbMfunCode;

architecture Behavioral of tbMfunCode is
    component MfunCode is
        Port ( funCode : in STD_LOGIC_VECTOR (3 downto 0);
               microFuncion : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    signal funCode : STD_LOGIC_VECTOR (3 downto 0);
    signal microFuncion : STD_LOGIC_VECTOR (19 downto 0);
    
begin
    fun : MfunCode Port map (
        funCode => funCode,
        microFuncion => microFuncion
    );
    
    process
    begin
        funCode <= "0000";
        wait for 10 ns;
        funCode <= "0001";
        wait for 10 ns;
        funCode <= "0010";
        wait for 10 ns;
        funCode <= "0011";
        wait for 10 ns;
        funCode <= "0100";
        wait for 10 ns;
        funCode <= "0101";
        wait for 10 ns;
        funCode <= "0110";
        wait for 10 ns;
        funCode <= "0111";
        wait for 10 ns;
        funCode <= "1000";
        wait;
    end process;
end Behavioral;