library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadControl is
    Port ( clk, clr, ini, z, a0 : in STD_LOGIC;
           LA, LB, EA, EB, EC : out STD_LOGIC);
end UnidadControl;

architecture Behavioral of UnidadControl is
    type estados is (e0, e1, e2);
    signal edo_act, edo_sig : estados;
begin  
    --Control de estados
    process(clr, clk)
    begin
        if(clr = '1') then
            edo_act <= e0;
        elsif (rising_edge(clk)) then
            edo_act <= edo_sig;
        end if;
    end process;
    
    --Carta ASM
    process (edo_act, ini, z, a0)
    begin
        LA <= '0';
        LB <= '0';
        EA <= '0';
        EB <= '0';
        EC <= '0';
        case edo_act is
            when e0 =>
                LB <= '1';
                if (ini = '1') then
                    edo_sig <= e1;
                else 
                    LA <= '1';
                    edo_sig <= e0;
                end if;
            when e1 =>
                EA <= '1';
                if (z = '0') then
                    if (a0 = '1') then
                        EB <= '1';
                        edo_sig <= e1;
                    else
                        edo_sig <= e1;
                    end if;
                else
                    edo_sig <= e2;
                end if;
            when e2 =>
                EC <= '1';
                if (ini = '1') then
                    edo_sig <= e2;
                else
                    edo_sig <= e0;
                end if;
        end case;
    end process;
end Behavioral;
