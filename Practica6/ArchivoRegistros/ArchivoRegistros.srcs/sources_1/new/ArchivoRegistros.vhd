library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArchivoRegistros is
    generic ( i : integer := 4;
              n : integer := 16);
    Port ( wr, dir, she, clk, clr : in STD_LOGIC;
           writeReg, readReg1, readReg2, shamt : in STD_LOGIC_VECTOR (i-1 downto 0);
           writeData : in STD_LOGIC_VECTOR (n-1 downto 0);
           readData1, readData2 : out STD_LOGIC_VECTOR (n-1 downto 0));
end ArchivoRegistros;

architecture Behavioral of ArchivoRegistros is
    component Registro is
        Port ( d : in STD_LOGIC_VECTOR (n-1 downto 0);
               q : out STD_LOGIC_VECTOR (n-1 downto 0);
               clr, clk, l : in STD_LOGIC);
    end component;
    
    component Demultiplexor is
        Port ( d : in STD_LOGIC;
               l : out std_logic_vector(15 downto 0);
               sel : in STD_LOGIC_VECTOR (3 downto 0));   
    end component;
    
    component BarrelShifter is
        Port ( dato : in STD_LOGIC_VECTOR (n-1 downto 0);
               res : out STD_LOGIC_VECTOR (n-1 downto 0);
               shamt : in STD_LOGIC_VECTOR (i-1 downto 0);
               direccion : in STD_LOGIC);
    end component;
    
    component Multiplexor is
        Port ( cl0, cl1, cl2, cl3, cl4, cl5, cl6, cl7, cl8, cl9, cl10, cl11, cl12, cl13, cl14, cl15 : in STD_LOGIC_VECTOR (15 downto 0);
               sel : in STD_LOGIC_VECTOR (3 downto 0);
               salida : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
    component Mux2C is
        Port ( barrelShifter, write_data : in STD_LOGIC_VECTOR (n-1 downto 0);
               she : in STD_LOGIC;
               sal : out STD_LOGIC_VECTOR (n-1 downto 0));
    end component;
    
    signal auxReadData1, auxL, auxD, auxBS: STD_LOGIC_VECTOR (n-1 downto 0);
    type matrizQ is array (0 to n-1) of STD_LOGIC_VECTOR (n-1 downto 0);
    signal auxQ : matrizQ;
begin
    demux : Demultiplexor Port map (
        d => wr,
        l => auxL,
        sel => writeReg
    );
    
    registros: for r in 0 to n-1 generate
        reg: Registro Port map (
           d => auxD,
           q => auxQ(r), 
           clk => clk,
           clr => clr,
           l => auxL(r)
        );
    end generate;
    
    mux1 : Multiplexor Port map ( 
        cl0 => auxQ(0), 
        cl1 => auxQ(1), 
        cl2 => auxQ(2), 
        cl3 => auxQ(3), 
        cl4 => auxQ(4), 
        cl5 => auxQ(5), 
        cl6 => auxQ(6), 
        cl7 => auxQ(7), 
        cl8 => auxQ(8), 
        cl9 => auxQ(9), 
        cl10 => auxQ(10), 
        cl11 => auxQ(11), 
        cl12 => auxQ(12), 
        cl13 => auxQ(13),  
        cl14 => auxQ(14), 
        cl15 => auxQ(15), 
        sel => readReg1,
        salida => auxReadData1
    );
    readData1 <= auxReadData1;
    
    mux2 : Multiplexor Port map ( 
        cl0 => auxQ(0), 
        cl1 => auxQ(1), 
        cl2 => auxQ(2), 
        cl3 => auxQ(3), 
        cl4 => auxQ(4), 
        cl5 => auxQ(5), 
        cl6 => auxQ(6), 
        cl7 => auxQ(7), 
        cl8 => auxQ(8), 
        cl9 => auxQ(9), 
        cl10 => auxQ(10), 
        cl11 => auxQ(11), 
        cl12 => auxQ(12), 
        cl13 => auxQ(13),  
        cl14 => auxQ(14), 
        cl15 => auxQ(15), 
        sel => readReg2,
        salida => readData2
    );
    
    bs: BarrelShifter Port map( 
        dato => auxReadData1,
        res => auxBS,
        shamt => shamt,
        direccion => dir
    );
    
    mux_2C: Mux2C Port map ( 
        barrelShifter => auxBs,
        write_data => writeData,
        she => she,
        sal => auxD
    );
end Behavioral;
