library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sum_AnticNbits is
    Port ( a, b : in STD_LOGIC_VECTOR (7 downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (7 downto 0);
           cout : out STD_LOGIC);
end sum_AnticNbits;

architecture Behavioral of sum_AnticNbits is
begin
    process(a, b, cin)
        variable p, g : STD_LOGIC_VECTOR(7 downto 0);
        variable c : STD_LOGIC_VECTOR(8 downto 0);
        variable coPj, gkPm, pm : STD_LOGIC;
    begin
        c(0) := cin;
        for i in 0 to 7 loop
            p(i) := a(i) xor b(i);
            g(i) := a(i) and b(i);
            s(i) <= p(i) xor c(i);
            
            coPj := c(0);
            for j in 0 to i loop
                coPj := coPj and p(j);
            end loop;
            
            gkPm := '0';
            for k in 0 to i-1 loop
                pm := '1';
                for m in k+1 to i loop
                    pm := pm and p(m);
                end loop;
                gkPm := gkPm or (g(k) and pm);
            end loop;
            
            c(i+1) := g(i) or coPj or gkPm;
        end loop;
        cout <= c(8);
    end process;
end Behavioral;
