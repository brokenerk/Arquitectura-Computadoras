library ieee;
library STD;
use ieee.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_arith.all;
use ieee.STD_LOGIC_unsigned.ALL;
use ieee.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;

entity test_bench is
end test_bench;

architecture Behavioral of test_bench is
    component MemoriaPrograma is
        Port ( pc : in STD_LOGIC_VECTOR (9 downto 0);
               inst : out STD_LOGIC_VECTOR (24 downto 0));
    end component;
    
    signal pc : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    signal inst : STD_LOGIC_VECTOR (24 downto 0);
begin
    mp: MemoriaPrograma Port map ( 
        pc => pc,
        inst => inst
    );
    
    process
        file arch_res : text;	--Apuntadores tipo txt									
        variable linea_res : line;
        
        variable var_inst : STD_LOGIC_VECTOR (24 downto 0);
        variable cadena : string (1 to 6);
    begin
        --- PC OPCODE 19..16 15..12 11..8 7..4 3..0
        file_open(arch_res, "C:\Users\YaKerTaker\Google Drive\8vo\Arquitectura-Computadoras\Practica8\MemPrograma\MemPrograma.srcs\sim_1\new\Resultado.txt", WRITE_MODE);	
        
        cadena := "PC    ";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "PC"
        cadena := "OPCODE";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "OPCODE"
        cadena := "19..16";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "19..16"
        cadena := "15..12";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "15..12"
        cadena := " 11..8";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "11..8"
        cadena := "  7..4";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "7..4"
        cadena := "  3..0";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "3..0"
        
        writeline(arch_res, linea_res);-- escribe la linea en el archivo

        for i in 0 to 11 loop
            wait for 10 ns;
            var_inst := inst;
            
            Hwrite(linea_res, pc, left, 9);--ESCRIBE EL CAMPO PC
            write(linea_res, var_inst(24 downto 20), left, 8);--ESCRIBE EL CAMPO OPCODE
            write(linea_res, var_inst(19 downto 16), left, 7);--ESCRIBE EL CAMPO 19..16
            write(linea_res, var_inst(15 downto 12), left, 7);--ESCRIBE EL CAMPO 15..12
            write(linea_res, var_inst(11 downto 8), left, 7);--ESCRIBE EL CAMPO 11..8
            write(linea_res, var_inst(7 downto 4), left, 7);--ESCRIBE EL CAMPO 7 .. 4
            write(linea_res, var_inst(3 downto 0), left, 7);--ESCRIBE EL CAMPO 3 .. 0
            
            writeline(arch_res, linea_res);
            pc <= pc + 1;
        end loop;
        file_close(arch_res);  -- cierra el archivo
        wait;
    end process;
end Behavioral;