library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbDecodificadorInstruccion is
end tbDecodificadorInstruccion;

architecture Behavioral of tbDecodificadorInstruccion is
    component DecodificadorInstruccion is
        Port ( opCode : in STD_LOGIC_VECTOR (4 downto 0);
               TIPOR, BEQI, BNEQI, BLTI, BLETI, BGTI, BGETI : out STD_LOGIC);
    end component;
    
    signal opCode : STD_LOGIC_VECTOR (4 downto 0);
    signal TIPOR, BEQI, BNEQI, BLTI, BLETI, BGTI, BGETI : STD_LOGIC;
    
begin
    deco : DecodificadorInstruccion Port map (
        opCode => opCode,
        TIPOR => TIPOR,
        BEQI => BEQI,
        BNEQI => BNEQI,
        BLTI => BLTI,
        BLETI => BLETI,
        BGTI => BGTI,
        BGETI => BGETI
    );
    
    process
    begin
        opCode <= "00000";
        wait for 10 ns;
        opCode <= "01101";
        wait for 10 ns;
        opCode <= "01110";
        wait for 10 ns;
        opCode <= "01111";
        wait for 10 ns;
        opCode <= "10000";
        wait for 10 ns;
        opCode <= "10001";
        wait for 10 ns;
        opCode <= "10010";
        wait;
    end process;

end Behavioral;
