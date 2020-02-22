library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture Behavioral of test_bench is
    component sum_AnticNbits
        Port ( a, b : in STD_LOGIC_VECTOR (7 downto 0);
               cin : in STD_LOGIC;
               s : out STD_LOGIC_VECTOR (7 downto 0);
               cout : out STD_LOGIC);
    end component;
    signal a, b, s : STD_LOGIC_VECTOR (7 downto 0);
    signal cin, cout : STD_LOGIC;
begin
    sum_Antic : sum_AnticNbits Port map (
        a => a,
        b => b,
        s => s,
        cin => cin,
        cout => cout
    );
    
    process begin
        cin <= '0';
		a <= "00001000";
		b <= "00000100";
		wait for 500 ns;
		
		cin <= '0';
		a <= "11111101";
		b <= "00000011";
		wait;
    end process;
end Behavioral;
