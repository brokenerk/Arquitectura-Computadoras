library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tbDemultiplexor is
end tbDemultiplexor;

architecture Behavioral of tbDemultiplexor is
    component Demultiplexor is
        Port ( d : in STD_LOGIC;
               l : out std_logic_vector(15 downto 0);
               sel : in STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal d : STD_LOGIC;
    signal l : std_logic_vector(15 downto 0);
    signal sel : STD_LOGIC_VECTOR (3 downto 0);
begin
    demux: Demultiplexor Port map (
        d => d,
        l => l,
        sel => sel
    );
    
    process begin			
        d <= '1';
        sel <= "0000";
        wait for 62 ns;
        
        sel <= "0001";
        wait for 62 ns;
        
        sel <= "0010";
        wait for 62 ns;
        
        sel <= "0011";
        wait for 62 ns;
        
        sel <= "0100";
        wait for 62 ns;
        
        sel <= "0101";
        wait for 62 ns;
        
        sel <= "0110";
        wait for 62 ns;
        
        sel <= "0111";
        wait for 62 ns;
        
        sel <= "1000";
        wait for 62 ns;
        
        sel <= "1001";
        wait for 62 ns;
        
        sel <= "1010";
        wait for 62 ns;
        
        sel <= "1011";
        wait for 62 ns;
        
        sel <= "1100";
        wait for 62 ns;
        
        sel <= "1101";
        wait for 62 ns;
        
        sel <= "1110";
        wait for 62 ns;
        
        sel <= "1111";
        wait;
   end process;
end Behavioral;