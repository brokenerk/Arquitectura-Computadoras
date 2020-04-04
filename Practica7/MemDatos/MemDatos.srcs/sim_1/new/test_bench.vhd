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
    component MemoriaDatos is
        Port ( add : in STD_LOGIC_VECTOR (10 downto 0);
               dataIn : in STD_LOGIC_VECTOR (15 downto 0);
               clk, wd : in STD_LOGIC;
               dataOut : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    signal add : STD_LOGIC_VECTOR (10 downto 0);
    signal dataIn : STD_LOGIC_VECTOR (15 downto 0);
    signal clk, wd : STD_LOGIC;
    signal dataOut : STD_LOGIC_VECTOR (15 downto 0);
begin
    md : MemoriaDatos Port map ( 
        add => add,
        dataIn => dataIn,
        clk => clk,
        wd => wd,
        dataOut => dataOut
    );
    
    reloj : process begin
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
    end process;
    
    process
        file arch_res : text;	--Apuntadores tipo txt									
        variable linea_res : line;
        variable var_data_out : STD_LOGIC_VECTOR (15 downto 0);
        
        file arch_en : text; --Apuntadores tipo txt
        variable linea_en: line;
        variable var_wd : STD_LOGIC;
        variable var_add : STD_LOGIC_VECTOR (11 downto 0);
        variable var_data_in : STD_LOGIC_VECTOR (15 downto 0);
        variable cadena : string (1 to 7);
    begin
        --- ADD  WD  DATAIN
        file_open(arch_en, "C:\Users\YaKerTaker\Google Drive\8vo\Arquitectura-Computadoras\Practica7\MemDatos\MemDatos.srcs\sim_1\new\Estimulos.txt", READ_MODE);
    
        --- ADD  WD  DATAIN	 DATAOUT
        file_open(arch_res, "C:\Users\YaKerTaker\Google Drive\8vo\Arquitectura-Computadoras\Practica7\MemDatos\MemDatos.srcs\sim_1\new\Resultado.txt", WRITE_MODE);	
        
        cadena := "    ADD";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "ADD"
        cadena := "     WD";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "WD"
        cadena := " DATAIN";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "DATAIN"
        cadena := "DATAOUT";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "DATAOUT"
        
        writeline(arch_res, linea_res);-- escribe la linea en el archivo
        
        for i in 0 to 11 loop
            readline(arch_en, linea_en); -- lee una linea completa
            --- ADD  WD  DATAIN
            
            --Lee ADD
            Hread(linea_en, var_add);
            add <= var_add(10 downto 0);
            
            --Lee WD
            read(linea_en, var_wd);
            wd <= var_wd;
            
            --Lee DATAINT
            Hread(linea_en, var_data_in);
            dataIn <= var_data_in;
            
            wait until rising_edge(clk); --ESPERA AL FLANCO DE SUBIDA 
            var_data_out := dataOut;
            
            --- ADD  WD  DATAIN	 DATAOUT
            Hwrite(linea_res, var_add, right, 8);--ESCRIBE EL CAMPO ADD
            write(linea_res, var_wd, right, 8);--ESCRIBE EL CAMPO WD
            Hwrite(linea_res, var_data_in, right, 8);--ESCRIBE EL CAMPO DATAIN
            Hwrite(linea_res, var_data_out, right, 8);--ESCRIBE EL CAMPO DATAOUT
            
            writeline(arch_res, linea_res);-- escribe la linea en el archivo
        end loop;
        file_close(arch_en);  -- cierra el archivo
        file_close(arch_res);  -- cierra el archivo
        wait;
    end process;

end Behavioral;
