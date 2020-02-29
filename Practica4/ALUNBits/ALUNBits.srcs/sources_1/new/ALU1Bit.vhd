library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU1Bit is
    Port ( a, b, sela, selb, cin : in STD_LOGIC;
           op : in STD_LOGIC_VECTOR (1 downto 0);
           s, cout : out STD_LOGIC);
end ALU1Bit;

architecture Behavioral of ALU1Bit is
    signal auxa, auxb, and1, or1, xor1, suma1 : STD_LOGIC;
    
    component sum1bit is
        Port ( a, b, cin : in STD_LOGIC;
               s, cout : out STD_LOGIC);
    end component;
begin
    auxa <= a xor sela;
    auxb <= b xor selb;
    
    and1 <= auxa and auxb;
    or1 <= auxa or auxb;
    xor1 <= auxa xor auxb;
    
    suma : sum1bit port map (
        a => auxa,
        b => auxb,
        cin => cin,
        s => suma1,
        cout => cout
    );
    
    process(op, and1, xor1, or1, suma1)
    begin
        case op is
            when "00" => s <= and1;
            when "01" => s <= or1;
            when "10" => s <= xor1;
            when others => s <= suma1;
            end case;  
    end process;

end Behavioral;
