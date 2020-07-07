library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALUNBits is
    generic ( n : integer := 16);
    Port ( a, b : in STD_LOGIC_VECTOR (n-1 downto 0);
           aluop : in STD_LOGIC_VECTOR (3 downto 0);
           res : out STD_LOGIC_VECTOR (n-1 downto 0);
           banderas : out STD_LOGIC_VECTOR (3 downto 0));
end ALUNBits;

architecture Behavioral of ALUNBits is
    signal c : STD_LOGIC_VECTOR(n downto 0);
    signal res_aux : STD_LOGIC_VECTOR (n-1 downto 0);
    component ALU1Bit is
        Port ( a, b, sela, selb, cin : in STD_LOGIC;
               op : in STD_LOGIC_VECTOR (1 downto 0);
               s, cout : out STD_LOGIC);
    end component;
begin
    -- sela, selb, op0, op1
    c(0) <= aluop(2);
    ciclo : for i in 0 to n-1 generate
        alu0 : ALU1Bit
            Port map ( 
                a => a(i),
                b => b(i),
                cin => c(i),
                sela => aluop(3),
                selb => aluop(2),
                s => res_aux(i),
                cout => c(i+1),
                op => aluop(1 downto 0)
            );
    end generate;
    res <= res_aux;
    
    process(res_aux, c, aluop) 
        variable z: STD_LOGIC;
    begin
        case aluop(1 downto 0) is
            when "11" => 
                banderas(3) <= c(n) xor c(n-1); --OV
                banderas(0) <= c(n); -- C
            when others => 
                banderas(3) <= '0'; --OV
                banderas(0) <= '0'; --C
        end case;
        
        banderas(2) <= res_aux(n-1); -- N
        
        z := '0';
        zero: for j in n-1 downto 0 loop
            z := z or res_aux(j);
        end loop;
        
        banderas(1) <= not z; -- Z
    end process;
end Behavioral;
