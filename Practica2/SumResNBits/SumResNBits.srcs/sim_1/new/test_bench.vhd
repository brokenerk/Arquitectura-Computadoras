library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture Behavioral of test_bench is
    component sum_resNbits
        Port ( a, b : in STD_LOGIC_VECTOR (7 downto 0);
               cin : in STD_LOGIC;
               s : out STD_LOGIC_VECTOR (7 downto 0);
               cout : out STD_LOGIC);
    end component;
    signal a, b, s : STD_LOGIC_VECTOR (7 downto 0);
    signal cin, cout : STD_LOGIC;
    
begin
    sum_res : sum_resNbits Port map (
        a => a,
        b => b,
        s => s,
        cin => cin,
        cout => cout
    );
    
    process begin
        cin <= '0';
		a <= "00000101"; -- 5
		b <= "00000101"; -- +5
		wait for 100 ns;
		
		cin <= '0';
		a <= "00001100"; -- 12
		b <= "00001000"; -- +8
		wait for 100 ns;
		
		cin <= '0';
		a <= "00001001"; -- 9
		b <= "00000101"; -- +5
		wait for 100 ns;
		
		cin <= '1';
		a <= "00001010"; -- 10
		b <= "00001001"; -- -9
		wait for 100 ns;
		
		cin <= '0';
		a <= "00000100"; -- 4
		b <= "00000010"; -- +2
		wait for 100 ns;
		
		cin <= '1';
		a <= "00000111"; -- 7
		b <= "00001001"; -- -9
		wait for 100 ns;
		
		cin <= '1';
		a <= "00001111"; -- 15
		b <= "00001111"; -- -15
		wait for 100 ns;
		
		cin <= '1';
		a <= "00001011"; -- 11
		b <= "00001000"; -- -8
		wait for 100 ns;
		
		cin <= '1';
		a <= "00000001"; -- 1
		b <= "00000100"; -- -4
		wait;
    end process;
end Behavioral;