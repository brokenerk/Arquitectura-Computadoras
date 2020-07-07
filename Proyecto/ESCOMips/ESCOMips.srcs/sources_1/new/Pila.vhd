library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Pila is
    generic ( m : integer := 16;
              n : integer := 3);
    Port ( PCin : in STD_LOGIC_VECTOR (m-1 downto 0);
           clk, clr, wpc, up, dw : in STD_LOGIC;
           PCout : out STD_LOGIC_VECTOR (m-1 downto 0));
end Pila;

architecture Behavioral of Pila is
    type banco is array (0 to (2**n)-1) of STD_LOGIC_VECTOR(m-1 downto 0);
    signal aux : banco := (
        others => (others => '0')
    );
begin
    process(clk, clr, aux) 
        variable SP : integer range 0 to (2**n)-1;
    begin
        if (clr = '1') then
            SP := 0;
            aux <= (others => (others => '0'));
        elsif (rising_edge(clk)) then
            if (wpc = '0' and up = '0' and dw = '0') then
                aux(SP) <= aux(SP) + 1;
            elsif (wpc = '1' and up = '0' and dw = '0') then
                aux(SP) <= PCin;
            elsif (wpc = '1' and up = '1' and dw = '0') then
                SP := SP + 1;
                if(SP = 2**n) then
                    SP := 0;
                end if;
                aux(SP) <= PCin;
            elsif (wpc = '0' and up = '0' and dw = '1') then
                SP := SP - 1;
                if(SP = -1) then
                    SP := (2**n)-1;
                end if;
                aux(SP) <= aux(SP) + 1;
            end if;
        end if;
        PCout <= aux(SP);
    end process;
end Behavioral;