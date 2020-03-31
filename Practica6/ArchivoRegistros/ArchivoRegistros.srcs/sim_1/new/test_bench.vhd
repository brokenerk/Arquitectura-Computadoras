library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use STD.textio.all;
use IEEE.std_logic_textio.all;

entity test_bench is
end test_bench;

architecture Behavioral of test_bench is
    component ArchivoRegistros is
        Port ( wr, dir, she, clk, clr : in STD_LOGIC;
               writeReg, readReg1, readReg2, shamt : in STD_LOGIC_VECTOR (3 downto 0);
               writeData : in STD_LOGIC_VECTOR (15 downto 0);
               readData1, readData2 : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
    signal wr, dir, she, clk, clr : STD_LOGIC;
    signal writeReg, readReg1, readReg2, shamt : STD_LOGIC_VECTOR (3 downto 0);
    signal writeData, readData1, readData2 : STD_LOGIC_VECTOR (15 downto 0);
begin
    ar: ArchivoRegistros Port map (
        wr => wr,
        she => she,
        dir => dir,
        clk => clk,
        clr => clr,
        writeReg => writeReg,
        readReg1 => readReg1,
        readReg2 => readReg2,
        shamt => shamt,
        writeData => writeData,
        readData1 => readData1,
        readData2 => readData2
    );
    
    reloj : process begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
    
    process
        file arch_res : text;	--Apuntadores tipo txt									
        variable linea_res : line;
        variable var_read_data1 : STD_LOGIC_VECTOR (15 downto 0);
        variable var_read_data2 : STD_LOGIC_VECTOR (15 downto 0);
        
        file arch_en : text; --Apuntadores tipo txt
        variable linea_en: line;
        variable var_write : STD_LOGIC_VECTOR (15 downto 0);
        variable var_wr, var_she, var_dir, var_clr : STD_LOGIC;
        variable var_write_reg, var_read_reg1, var_read_reg2, var_shamt : STD_LOGIC_VECTOR (3 downto 0);
        variable var_write_data : STD_LOGIC_VECTOR (15 downto 0);
        variable cadena : string (1 to 5);
    begin
        --- RR1 RR2 SHAMT WREG WD CLR WR SHE DIR 
        file_open(arch_en, "C:\Users\YaKerTaker\Google Drive\8vo\Arquitectura-Computadoras\Practica6\ArchivoRegistros\ArchivoRegistros.srcs\sim_1\new\Estimulos.txt", READ_MODE);
    
        --- RR1 RR2 SHAMT WREG WD WR SHE DIR RD1 RD2
        file_open(arch_res, "C:\Users\YaKerTaker\Google Drive\8vo\Arquitectura-Computadoras\Practica6\ArchivoRegistros\ArchivoRegistros.srcs\sim_1\new\Resultado.txt", WRITE_MODE);	
        
        cadena := "  RR1";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "readReg1"
        cadena := "  RR2";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "readReg2"
        cadena := "SHAMT";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "shamt"
        cadena := " WREG";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "writeReg"
        cadena := "   WD";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "writeData"
        cadena := "   WR";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "WR"
        cadena := "  SHE";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "SHE"
        cadena := "  DIR";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "DIR"
        cadena := "  RD1";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "readData1"
        cadena := "  RD2";
        write(linea_res, cadena, right, cadena'LENGTH+1);--ESCRIBE LA cadena "readData2"
    
        writeline(arch_res, linea_res);-- escribe la linea en el archivo

        wait for 100 ns;
        for i in 0 to 11 loop
            readline(arch_en, linea_en); -- lee una linea completa
            --- RR1 RR2 SHAMT WREG WD CLR WR SHE DIR
            
            --Lee readReg1
            read(linea_en, var_read_reg1);
            readReg1 <= var_read_reg1;
        
            --Lee readReg2
            read(linea_en, var_read_reg2);
            readReg2 <= var_read_reg2;
            
            --Lee shamt
            read(linea_en, var_shamt);
            shamt <= var_shamt;
            
            --Lee writeReg
            read(linea_en, var_write_reg);
            writeReg <= var_write_reg;
        
            --Lee writeData
            read(linea_en, var_write_data);
            writeData <= var_write_data;
        
            --Lee clr
            read(linea_en, var_clr);
            clr <= var_clr;
        
            --Lee wr
            read(linea_en, var_wr);
            wr <= var_wr;
        
            --Lee she
            read(linea_en, var_she);
            she <= var_she;
        
            --Lee dir
            read(linea_en, var_dir);
            dir <= var_dir;
        
            wait until rising_edge(clk); --ESPERA AL FLANCO DE SUBIDA 
            var_read_data1 := readData1;
            var_read_data2 := readData2; 
            --- RR1 RR2 SHAMT WREG WD WR SHE DIR RD1 RD2
            Hwrite(linea_res, var_read_reg1, right, 5);--ESCRIBE EL CAMPO RR1
            Hwrite(linea_res, var_read_reg2, right, 6);--ESCRIBE EL CAMPO RR2
            Hwrite(linea_res, var_shamt, right, 6);--ESCRIBE EL CAMPO shamt
            Hwrite(linea_res, var_write_reg, right, 5);--ESCRIBE EL CAMPO WREG
            Hwrite(linea_res, var_write_data, right, 8);--ESCRIBE EL CAMPO WD
            write(linea_res, var_wr, right, 7);--ESCRIBE EL CAMPO WR
            write(linea_res, var_she, right, 5);--ESCRIBE EL CAMPO SHE
            write(linea_res, var_dir, right, 6);--ESCRIBE EL CAMPO DIR
            Hwrite(linea_res, var_read_data1, right, 6);--ESCRIBE EL CAMPO RD1
            Hwrite(linea_res, var_read_data2, right, 6);--ESCRIBE EL CAMPO RD2
        
            writeline(arch_res, linea_res);-- escribe la linea en el archivo
        end loop;
        file_close(arch_en);  -- cierra el archivo
        file_close(arch_res);  -- cierra el archivo
      wait;
    end process;
end Behavioral;