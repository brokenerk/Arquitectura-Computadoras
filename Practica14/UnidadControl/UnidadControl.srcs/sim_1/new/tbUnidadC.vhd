library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbUnidadC is
end tbUnidadC;

architecture Behavioral of tbUnidadC is
    component UnidadC is
        Port ( clk, clr, EQ, NE, LT, LE, GT, GE, nivel, BGETI, BGTI, BLETI, BLTI, BNEQI, BEQI, TIPOR : in STD_LOGIC;
               SDOPC, SM : out STD_LOGIC);
    end component;
    
    signal clk, clr, EQ, NE, LT, LE, GT, GE, nivel, BGETI, BGTI, BLETI, BLTI, BNEQI, BEQI, TIPOR, SDOPC, SM : STD_LOGIC := '0';
    
begin
     uc : UnidadC Port map (
        clk => clk,
        clr => clr,
        EQ => EQ,
        NE => NE,
        LT => LT,
        LE => LE,
        GT => GT,
        GE => GE,
        nivel => nivel,
        BGETI => BGETI,
        BGTI => BGTI,
        BLETI => BLETI,
        BLTI => BLTI,
        BNEQI => BNEQI,
        BEQI => BEQI,
        TIPOR => TIPOR,
        SDOPC => SDOPC,
        SM => SM
    );
    
    reloj : process begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
    
    process
    begin
        clr <= '1';
        wait until rising_edge(clk);
        
        clr <= '0';
        TIPOR <= '1';
        wait until rising_edge(clk);
        
        TIPOR <= '0';
        LT  <= '1';
        BLTI <= '1';
        wait until rising_edge(clk);
        
        LT <= '0';
        wait until rising_edge(clk);
        
        BLTI <= '0';
        LE <= '1';
        BLETI <= '1';
        wait until rising_edge(clk);
        
        LE <= '0';
        wait until rising_edge(clk);
        
        clr <= '1';
        wait;
    end process;

end Behavioral;