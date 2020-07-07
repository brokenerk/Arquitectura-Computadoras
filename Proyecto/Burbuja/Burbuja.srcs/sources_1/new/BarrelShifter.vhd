library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BarrelShifter is
    generic ( n : integer := 16;
              corr : integer := 4);
    Port ( dato : in STD_LOGIC_VECTOR (n-1 downto 0);
           res : out STD_LOGIC_VECTOR (n-1 downto 0);
           shamt : in STD_LOGIC_VECTOR (corr-1 downto 0);
           direccion : in STD_LOGIC);
end BarrelShifter;

architecture Behavioral of BarrelShifter is
begin
    process(dato, shamt, direccion)
        variable aux : std_logic_vector(n-1 downto 0);
    begin
        aux := dato; 
        for i in 0 to corr-1 loop
            if (shamt(i) = '0') then
                aux := aux;
            else
                case direccion is
                    when '1' => --- izquierda
                        for j in n-1 downto 0 loop          --el ciclo for para el corrimiento a la izquierda
                            if (j < 2**i) then              --va del mas significativo al menos significativo
                                aux(j) := '0';              --para que los bits se vayan arrastrando y que los ultimos 
                            else                            --en actualizarse sean los de la derecha que es en donde se ingrean 
                                aux(j) := aux(j-2**i);      --los 0s por el corrimiento, si lo recorremos a la inversa, se actualizaria
                            end if;                         --primero el bit menos significativo y ese valor se replicaria en todo el vector
                        end loop;                           --teniendo como resultado un vector lleno de 0s
                    when others => --- derecha
                        for j in 0 to n-1 loop              -- invirtiendo el for
                            if (j <= (n-1) - 2**i) then
                                aux(j) := aux(j+2**i);
                            else
                                aux(j) := '0';
                            end if;
                        end loop;
               end case;
           end if;
        end loop;
        res <= aux;
    end process;
end Behavioral;
