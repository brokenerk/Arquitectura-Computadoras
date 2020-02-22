library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sum_resNbits is
    generic ( n : integer := 8);
    Port ( a,b : in STD_LOGIC_VECTOR (n-1 downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (n-1 downto 0);
           cout : out STD_LOGIC);
end sum_resNbits;

architecture Behavioral of sum_resNbits is
    component sum1bit is
        Port ( a, b, cin : in STD_LOGIC;
               s, cout : out STD_LOGIC);
    end component;
    signal c : STD_LOGIC_VECTOR (n downto 0);
    signal eb : STD_LOGIC_VECTOR (n-1 downto 0);
    
begin
    c(0) <= cin;
    ciclo : for i in 0 to n-1 generate
        eb(i) <= b(i) xor c(0);
        bit0 : sum1bit Port map (
            a => a(i),
            b => eb(i),
            s => s(i),
            cin => c(i),
            cout => c(i+1)
        );
    end generate;
    cout <= c(n);
end Behavioral;