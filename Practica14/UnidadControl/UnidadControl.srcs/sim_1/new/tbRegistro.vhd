library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbRegistro is
end tbRegistro;

architecture Behavioral of tbRegistro is
    component Registro is
        Port ( banderas : in STD_LOGIC_VECTOR (3 downto 0);
               clr, clk, LF : in STD_LOGIC;
               Q : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal clr, clk, LF : STD_LOGIC;
    signal banderas, Q : STD_LOGIC_VECTOR (3 downto 0);
    
begin
    reg : Registro port map(
        banderas => banderas,
        clr => clr,
        clk => clk,
        LF => LF,
        Q => Q
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
        wait until falling_edge(clk);
        clr <= '0';
        LF <= '1';
        banderas <= "1111";
        wait until falling_edge(clk);
        banderas <= "0000";
        wait until falling_edge(clk);
        banderas <= "0001";
        wait until falling_edge(clk);
        banderas <= "0010";
        wait until falling_edge(clk);
        banderas <= "0011";
        wait until falling_edge(clk);       
        LF <= '0';
        banderas <= "0000";
        wait until falling_edge(clk);
        banderas <= "0001";
        wait;
    end process;
end Behavioral;