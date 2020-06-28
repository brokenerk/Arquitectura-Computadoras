library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;

entity test_bench is
end test_bench;

architecture Behavioral of test_bench is
    component UnidadControl is
        Port ( clk, clr, LF : in STD_LOGIC;
               opCode : in STD_LOGIC_VECTOR (4 downto 0);
               funCode, banderas : in STD_LOGIC_VECTOR (3 downto 0);
               na : out STD_LOGIC;
               microInstruccion : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    signal na, clk, clr, LF : STD_LOGIC := '0';
    signal opCode : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    signal funCode, banderas : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal microInstruccion : STD_LOGIC_VECTOR (19 downto 0) := (others => '0');
	
begin
    U1 : UnidadControl port map( 
        opCode => opCode,
        funCode => funCode,
        banderas => banderas,
        clk => clk, 
        clr => clr,
        LF => LF,
        na => na,
        microInstruccion => microInstruccion
    );
    
    reloj : process
    begin
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
    end process;
    
     process
        file arch_res : text;	--Apuntadores tipo txt									
        variable linea_res : line;
        variable var_microinstruccion : STD_LOGIC_VECTOR (19 downto 0);
        variable var_nivel : string (1 to 4);
        
        file arch_en : text; --Apuntadores tipo txt
        variable linea_en: line;
        variable var_op_code : STD_LOGIC_VECTOR (4 downto 0);
        variable var_fun_code, var_banderas : STD_LOGIC_VECTOR (3 downto 0);
        variable var_clr, var_lf : STD_LOGIC;
        variable cadena : string (1 to 8);
        variable cadena2 : string (1 to 19);
        variable cadenaSaltoLinea : string (1 to 2);
        
    begin
        cadenaSaltoLinea := "  ";
        --- OPCODE FUNCODE BANDERAS CLR LF
        file_open(arch_en, "C:\Users\YaKerTaker\Google Drive\8vo\Arquitectura-Computadoras\Practica14\UnidadControl\UnidadControl.srcs\sim_1\new\Estimulos.txt", READ_MODE);
    
        --- OPCODE FUNCODE BANDERAS CLR LF MICROINS NIVEL
        file_open(arch_res, "C:\Users\YaKerTaker\Google Drive\8vo\Arquitectura-Computadoras\Practica14\UnidadControl\UnidadControl.srcs\sim_1\new\Resultado.txt", WRITE_MODE);	
        
        cadena := "OPCODE  ";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "OPCODE"
        cadena := "FUNCODE ";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "FUNCODE"
        cadena := "BANDERAS";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "BANDERAS"
        cadena := "CLR     ";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "CLR"
        cadena := "LF      ";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "LF"
        cadena := "MICROINS";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "MICROINS"
        cadena2 := "              NIVEL";
        write(linea_res, cadena2, right, cadena'LENGTH+1);--ESCRIBE LA cadena "NIVEL"
        
        writeline(arch_res, linea_res);-- escribe la linea en el archivo
        
        while not endfile(arch_en) loop
            readline(arch_en, linea_en); -- lee una linea completa
            --- OPCODE FUNCODE BANDERAS CLR LF
            
            --Lee OPCODE
            read(linea_en, var_op_code);
            opCode <= var_op_code;
            
            --Lee FUNCODE
            read(linea_en, var_fun_code);
            funCode <= var_fun_code;
            
            --Lee BANDERAS
            read(linea_en, var_banderas);
            banderas <= var_banderas;
            
            --Lee CLR
            read(linea_en, var_clr);
            clr <= var_clr;
            
            --Lee LF
            read(linea_en, var_lf);
            LF <= var_lf;
             
            wait for 5 ns; --ESPERA AL FLANCO DE SUBIDA
            var_microinstruccion := microInstruccion;
            
            if(na = '1') then
                var_nivel := "ALTO";
            else
                var_nivel := "BAJO";
            end if;
            
            --- OPCODE FUNCODE BANDERAS CLR LF MICROINS NIVEL
            write(linea_res, var_op_code, left, 10);--ESCRIBE EL CAMPO OPCODE
            write(linea_res, var_fun_code, left, 9);--ESCRIBE EL CAMPO FUNCODE
            write(linea_res, var_banderas, left, 10);--ESCRIBE EL CAMPO BANDERAS
            write(linea_res, var_clr, left, 8);--ESCRIBE EL CAMPO CLR
            write(linea_res, var_lf, left, 9);--ESCRIBE EL CAMPO LF
            write(linea_res, var_microinstruccion, left, 22);--ESCRIBE EL CAMPO MICROINS
            write(linea_res, var_nivel, left, 5);--ESCRIBE EL CAMPO NIVEL
            
            writeline(arch_res, linea_res);-- escribe la linea en el archivo
            
            wait for 5 ns; --ESPERA AL FLANCO DE BAJADA
            var_microinstruccion := microInstruccion;
            
            if(na = '1') then
                var_nivel := "ALTO";
            else
                var_nivel := "BAJO";
            end if;
            
            --- OPCODE FUNCODE BANDERAS CLR LF MICROINS NIVEL
            write(linea_res, var_op_code, left, 10);--ESCRIBE EL CAMPO OPCODE
            write(linea_res, var_fun_code, left, 9);--ESCRIBE EL CAMPO FUNCODE
            write(linea_res, var_banderas, left, 10);--ESCRIBE EL CAMPO BANDERAS
            write(linea_res, var_clr, left, 8);--ESCRIBE EL CAMPO CLR
            write(linea_res, var_lf, left, 9);--ESCRIBE EL CAMPO LF
            write(linea_res, var_microinstruccion, left, 22);--ESCRIBE EL CAMPO MICROINS
            write(linea_res, var_nivel, left, 5);--ESCRIBE EL CAMPO NIVEL     
            writeline(arch_res, linea_res);-- escribe la linea en el archivo
            
            write(linea_res, cadenaSaltoLinea, right, cadena'LENGTH+1);--ESCRIBE cadena vacia            
            writeline(arch_res, linea_res);-- escribe la linea en el archivo
        end loop;
        file_close(arch_en);  -- cierra el archivo
        file_close(arch_res);  -- cierra el archivo
        wait;
    end process;
end Behavioral;