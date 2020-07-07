library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture Behavioral of test_bench is
    component ESCOMips is
        Port ( rclr, clk : in STD_LOGIC;
               pc : out STD_LOGIC_VECTOR (9 downto 0);
               instruccion : out STD_LOGIC_VECTOR (24 downto 0);
               RD1, RD2, resALU, busSR : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
    signal rclr, clk : STD_LOGIC := '0';
    signal pc : STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
    signal instruccion : STD_LOGIC_VECTOR (24 downto 0) := (others => '0');
    signal RD1, RD2, resALU, busSR : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
begin
    mips : ESCOMips Port map ( 
        rclr => rclr, 
        clk => clk,
        pc => pc,
        instruccion => instruccion,
        RD1 => RD1,
        RD2 => RD2,
        resALU => resALU,
        busSR => busSR
    );
    
    uno : process
    begin
        clk <= '1';
        wait for 3 ns;
        clk <= '0';
        wait for 3 ns;
    end process;
    
    dos : process
    begin
        rclr <= '1';
        wait for 9 ns;
        rclr <= '0';
        wait;        
    end process;


end Behavioral;
