library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture Behavioral of test_bench is
    component UnidadControl is
        Port ( clk, clr, LF : in STD_LOGIC;
               opCode : in STD_LOGIC_VECTOR (4 downto 0);
               funCode, banderas : in STD_LOGIC_VECTOR (3 downto 0);
               na : out STD_LOGIC;
               microInstruccion : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    signal na, clk, clr, LF : STD_LOGIC := '0';
    signal opCode : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    signal funCode, banderas : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal microInstruccion : STD_LOGIC_VECTOR (19 downto 0) := (others => '0');
	
begin
    U1 : UnidadControl port map( 
        opCode => opCode,
        funCode => funCode,
        banderas => banderas,
        clk => clk, 
        clr => clr,
        LF => LF,
        na => na,
        microInstruccion => microInstruccion
    );
        
    reset : process
    begin
        clr <= '1';
        wait for 20 ns;
        clr <= '0';
        wait;
    end process;
    
    reloj : process
    begin
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
    end process;
    
    general : process
    begin
        funCode <= "0001"; --SUB
        wait for 20 ns;
        opCode <= "01101"; --BEQI
        lf <= '1';
        banderas <= "0010";
        wait;
    end process;
end Behavioral;