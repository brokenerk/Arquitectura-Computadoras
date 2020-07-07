library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DecodificadorInstruccion is
    Port ( opCode : in STD_LOGIC_VECTOR (4 downto 0);
           TIPOR, BEQI, BNEQI, BLTI, BLETI, BGTI, BGETI : out STD_LOGIC);
end DecodificadorInstruccion;

architecture Behavioral of DecodificadorInstruccion is
begin
    process (opCode)
    begin
        case opCode is
            when "00000" => 
                TIPOR <= '1';
                BEQI <= '0';
                BNEQI <= '0';
                BLTI <= '0';
                BLETI <= '0';
                BGTI <= '0';
                BGETI <= '0';
            when "01101" => 
                TIPOR <= '0';
                BEQI <= '1';
                BNEQI <= '0';
                BLTI <= '0';
                BLETI <= '0';
                BGTI <= '0';
                BGETI <= '0';
            when "01110" => 
                TIPOR <= '0';
                BEQI <= '0';
                BNEQI <= '1';
                BLTI <= '0';
                BLETI <= '0';
                BGTI <= '0';
                BGETI <= '0';
            when "01111" => 
                TIPOR <= '0';
                BEQI <= '0';
                BNEQI <= '0';
                BLTI <= '1';
                BLETI <= '0';
                BGTI <= '0';
                BGETI <= '0';
            when "10000" => 
                TIPOR <= '0';
                BEQI <= '0';
                BNEQI <= '0';
                BLTI <= '0';
                BLETI <= '1';
                BGTI <= '0';
                BGETI <= '0';
            when "10001" => 
                TIPOR <= '0';
                BEQI <= '0';
                BNEQI <= '0';
                BLTI <= '0';
                BLETI <= '0';
                BGTI <= '1';
                BGETI <= '0';
            when "10010" => 
                TIPOR <= '0';
                BEQI <= '0';
                BNEQI <= '0';
                BLTI <= '0';
                BLETI <= '0';
                BGTI <= '0';
                BGETI <= '1';
          when others => 
                TIPOR <= '0';
                BEQI <= '0';
                BNEQI <= '0';
                BLTI <= '0';
                BLETI <= '0';
                BGTI <= '0';
                BGETI <= '0';
        end case;
    end process;
end Behavioral;