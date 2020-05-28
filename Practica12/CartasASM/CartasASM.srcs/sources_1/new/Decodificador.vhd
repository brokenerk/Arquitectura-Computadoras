library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decodificador is
    Port ( B : in STD_LOGIC_VECTOR (3 downto 0);
           num : out STD_LOGIC_VECTOR (6 downto 0));
end Decodificador;

architecture Behavioral of Decodificador is
    constant dig0: STD_LOGIC_VECTOR (6 downto 0):= "0000001";
    constant dig1: STD_LOGIC_VECTOR (6 downto 0):= "1001111";
    constant dig2: STD_LOGIC_VECTOR (6 downto 0):= "0010010";
    constant dig3: STD_LOGIC_VECTOR (6 downto 0):= "0000110";
    constant dig4: STD_LOGIC_VECTOR (6 downto 0):= "1001100";
    constant dig5: STD_LOGIC_VECTOR (6 downto 0):= "0100100";
    constant dig6: STD_LOGIC_VECTOR (6 downto 0):= "0100000";
    constant dig7: STD_LOGIC_VECTOR (6 downto 0):= "0001110";
    constant dig8: STD_LOGIC_VECTOR (6 downto 0):= "0000000";
    constant dig9: STD_LOGIC_VECTOR (6 downto 0):= "0001100";
begin
    process(B)
    begin
        case B is
            when "0000" => num <= dig0;
            when "0001" => num <= dig1;
            when "0010" => num <= dig2;
            when "0011" => num <= dig3;
            when "0100" => num <= dig4;
            when "0101" => num <= dig5;
            when "0110" => num <= dig6;
            when "0111" => num <= dig7;
            when "1000" => num <= dig8;
            when others => num <= dig9;
        end case;
    end process;
end Behavioral;
