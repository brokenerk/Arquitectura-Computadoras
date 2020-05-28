library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbCartasASM is
end tbCartasASM;

architecture Behavioral of tbCartasASM is
    component CartasASM is
        Port ( clk, clr, ini : in STD_LOGIC;
               D : in STD_LOGIC_VECTOR (8 downto 0);
               Dout : out STD_LOGIC_VECTOR (8 downto 0);
               num : out STD_LOGIC_VECTOR (3 downto 0);
               display : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    signal clk, clr, ini : STD_LOGIC;
    signal D, Dout : STD_LOGIC_VECTOR (8 downto 0);
    signal display : STD_LOGIC_VECTOR (6 downto 0);
    signal num: STD_LOGIC_VECTOR (3 downto 0);
begin
    
    asm : CartasASM Port map (
        clk => clk, 
        clr => clr, 
        ini => ini,
        D => D,
        Dout => Dout,
        num => num,
        display => display
    );
    
    reloj : process begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
    
    process
    begin
        ini <= '0';
        clr <= '1';
		wait for 10 ns;
		
		clr <= '0';
		D <= "101101011";
		wait for 10 ns;
		
		ini <= '1';
		wait for 110 ns;
		
		ini <= '0';
		clr <= '1';
		wait for 10 ns;
		
		clr <= '0';
		D <= "000011101";
		wait for 10 ns;
		
		ini <= '1';
		wait for 110 ns;
		
		ini <= '0';
		clr <= '1';
		wait for 10 ns;
		
		clr <= '0';
		D <= "000010000";
		wait for 10 ns;
		
		ini <= '1';
		wait for 110 ns;
		
		ini <= '0';
		clr <= '1';
		wait for 10 ns;
		
		clr <= '0';
		D <= "100001000";
		wait for 10 ns;
		
		ini <= '1';
		wait for 110 ns;
		
		ini <= '0';
		clr <= '1';
		wait for 10 ns;
		
		clr <= '0';
		D <= "000000000";
		wait for 10 ns;
		
		ini <= '1';
		wait;
    end process;
end Behavioral;
