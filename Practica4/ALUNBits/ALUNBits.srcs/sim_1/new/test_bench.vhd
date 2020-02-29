library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture Behavioral of test_bench is
    component ALUNBits is
        Port ( a, b : in STD_LOGIC_VECTOR (3 downto 0);
               aluop : in STD_LOGIC_VECTOR (3 downto 0);
               res : out STD_LOGIC_VECTOR (3 downto 0);
               banderas : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal a, b : STD_LOGIC_VECTOR (3 downto 0);
    signal aluop : STD_LOGIC_VECTOR (3 downto 0);
    signal res : STD_LOGIC_VECTOR (3 downto 0);
    signal banderas : STD_LOGIC_VECTOR (3 downto 0);
begin
    ALU: ALUNBits Port map ( 
        a => a, 
        b => b,
        aluop => aluop,
        res => res,
        banderas => banderas
    );
    
    process begin
        a <= "0101"; -- 5
        b <= "1110"; -- -2
        aluop <= "0011"; -- A + B
        wait for 90 ns;
        
        aluop <= "0111"; -- A - B
        wait for 90 ns;
        
        aluop <= "0000"; -- A AND B
        wait for 90 ns;
        
        aluop <= "1101"; -- A NAND B
        wait for 90 ns;
        
        aluop <= "0001"; -- A OR B
        wait for 90 ns;
        
        aluop <= "1100"; -- A NOR B
        wait for 90 ns;
        
        aluop <= "0010"; -- A XOR B
        wait for 90 ns;
        
        aluop <= "0110"; -- A XNOR B
        wait for 90 ns;
        
        b <= "0111"; -- 7
        aluop <= "0011"; -- A + B
        wait for 90 ns;
        
        b <= "0101"; -- 5
        aluop <= "0111"; -- A - B
        wait for 90 ns;
        
        aluop <= "1101"; -- A NAND (NOT) B
        wait;
    end process;
end Behavioral;
