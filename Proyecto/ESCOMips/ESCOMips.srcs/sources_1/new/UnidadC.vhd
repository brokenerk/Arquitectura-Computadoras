library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadC is
    Port ( clk, clr, EQ, NE, LT, LE, GT, GE, nivel, BGETI, BGTI, BLETI, BLTI, BNEQI, BEQI, TIPOR : in STD_LOGIC;
           SDOPC, SM : out STD_LOGIC);
end UnidadC;

architecture Behavioral of UnidadC is
    type estados is (e0);
	signal actual, siguiente : estados;
begin
	--Control de estados
	process(clr, clk)
	begin
		if(clr = '1') then
			actual <= e0;
		elsif (rising_edge(clk)) then
			actual <= siguiente;
		end if;
	end process;

	--Carta ASM
	process(actual, EQ, NE, LT, LE, GT, GE, nivel, BGETI, BGTI, BLETI, BLTI, BNEQI, BEQI, TIPOR)
	begin
		SDOPC <= '0';
		SM <= '0';
		case actual is
            when e0 =>
                if (TIPOR = '1') then
                    SM <= '0';
                else
                    if (BEQI = '0') then
                        if (BNEQI = '0') then 
                            if (BLTI = '0') then
                                if (BLETI = '0') then
                                    if (BGTI = '0') then
                                       if (BGETI = '0') then
                                            SM <= '1';
                                            SDOPC <= '1';
                                       else --BGETI 1
                                            if (nivel = '1') then
                                                SM <= '1';
                                                SDOPC <= '0';
                                            else --NA 0
                                                if (GE = '1') then
                                                    SM <= '1';
                                                    SDOPC <= '1';
                                                else --GE 0
                                                    SM <= '1';
                                                    SDOPC <= '0';
                                                end if;  
                                            end if;
                                       end if;
                                    else -- BGTI 1
                                        if (nivel = '1') then
                                            SM <= '1';
                                            SDOPC <= '0';
                                        else --NA 0
                                            if (GT = '1') then
                                                SM <= '1';
                                                SDOPC <= '1';
                                            else --GT 0
                                                SM <= '1';
                                                SDOPC <= '0';
                                            end if;  
                                        end if;
                                    end if;
                                else --BLETI 1
                                    if (nivel = '1') then
                                        SM <= '1';
                                        SDOPC <= '0';
                                    else --NA 0
                                        if (LE = '1') then
                                            SM <= '1';
                                            SDOPC <= '1';
                                        else --LE 0
                                            SM <= '1';
                                            SDOPC <= '0';
                                        end if;  
                                    end if;
                                end if;
                            else --BLTI 1
                                if (nivel = '1') then
                                    SM <= '1';
                                    SDOPC <= '0';
                                else --NA 0
                                    if (LT = '1') then
                                        SM <= '1';
                                        SDOPC <= '1';
                                    else --LT 0
                                        SM <= '1';
                                        SDOPC <= '0';
                                    end if;  
                                end if;
                            end if;
                        else --BNEQI 1
                            if (nivel = '1') then
                                SM <= '1';
                                SDOPC <= '0';
                            else --NA 0
                                if (NE = '1') then
                                    SM <= '1';
                                    SDOPC <= '1';
                                else --NE 0
                                    SM <= '1';
                                    SDOPC <= '0';
                                end if;  
                            end if;
                        end if;
                    else --BEQI 1
                        if (nivel = '1') then
                            SM <= '1';
                            SDOPC <= '0';
                        else --NA 0
                            if (EQ = '1') then
                                SM <= '1';
                                SDOPC <= '1';
                            else --EQ 0
                                SM <= '1';
                                SDOPC <= '0';
                            end if;  
                        end if;
                    end if;
                end if;
		        siguiente <= e0;
		end case;
	end process;
end Behavioral;