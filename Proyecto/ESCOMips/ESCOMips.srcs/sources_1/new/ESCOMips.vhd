library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ESCOMips is
    Port ( rclr, clk : in STD_LOGIC;
           pc : out STD_LOGIC_VECTOR (9 downto 0);
           instruccion : out STD_LOGIC_VECTOR (24 downto 0);
           RD1, RD2, resALU, busSR : out STD_LOGIC_VECTOR (15 downto 0));
end ESCOMips;

architecture Behavioral of ESCOMips is
    -- Pila
    component Pila is
        Port ( PCin : in STD_LOGIC_VECTOR (15 downto 0);
               clk, clr, wpc, up, dw : in STD_LOGIC;
               PCout : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
--    --MemPrograma
--    component MemoriaPrograma1 is
--        Port ( pc : in STD_LOGIC_VECTOR (9 downto 0);
--               inst : out STD_LOGIC_VECTOR (24 downto 0));
--    end component;

    --MemPrograma
    component MemoriaPrograma2 is
        Port ( pc : in STD_LOGIC_VECTOR (9 downto 0);
               inst : out STD_LOGIC_VECTOR (24 downto 0));
    end component;
    
    -- Unidad Control
    component UnidadControl is
        Port ( clk, clr : in STD_LOGIC;
               opCode : in STD_LOGIC_VECTOR (4 downto 0);
               funCode, banderas : in STD_LOGIC_VECTOR (3 downto 0);
               microInstruccion : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    --ArchivoRegistro
    component ArchivoRegistros is
        Port ( wr, dir, she, clk, clr : in STD_LOGIC;
               writeReg, readReg1, readReg2, shamt : in STD_LOGIC_VECTOR (3 downto 0);
               writeData : in STD_LOGIC_VECTOR (15 downto 0);
               readData1, readData2 : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
    --ALU
    component ALUNBits is
        Port ( a, b : in STD_LOGIC_VECTOR (15 downto 0);
               aluop : in STD_LOGIC_VECTOR (3 downto 0);
               res : out STD_LOGIC_VECTOR (15 downto 0);
               banderas : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    --MemDatos
    component MemoriaDatos is
        Port ( add : in STD_LOGIC_VECTOR (9 downto 0);
               dataIn : in STD_LOGIC_VECTOR (15 downto 0);
               clk, wd : in STD_LOGIC;
               dataOut : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
    --ExtensorDireccion
    component ExtensorDireccion is
         Port ( lit_in : in STD_LOGIC_VECTOR (11 downto 0);
                lit_out : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
    --ExtensorSigno
    component ExtensorSigno is
         Port ( Slit_in : in STD_LOGIC_VECTOR (11 downto 0);
                Slit_out : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
    --Mux16Bits
    component Mux16Bits is
        Port ( a, b : in STD_LOGIC_VECTOR (15 downto 0);
               control : in STD_LOGIC;
               salida : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
    --SR2
    component MuxSR2 is
        Port ( a, b : in STD_LOGIC_VECTOR (3 downto 0);
               control : in STD_LOGIC;
               salida : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal auxSDMP, auxSWD, auxSEXT, auxSOP1, auxSOP2, auxSDMD, auxSR, auxPCout : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal auxInst : STD_LOGIC_VECTOR (24 downto 0) := (others => '0');
    signal clr : STD_LOGIC := '0';
    signal auxBanderas, auxSR2 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal auxMicroInstruccion : STD_LOGIC_VECTOR (19 downto 0) := (others => '0');
    signal auxReadData1, auxReadData2 : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal auxExtDir, auxExtSig, auxResALU, auxDataOut : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if(falling_edge(clk)) then
            clr <= rclr;
        end if;
    end process;
    
    --MICROINSTRUCCION
    --  19 18 17  16  15  14  13   12  11 10  9    8    7        6         5         4      3   2  1  0
    --SDMP UP DW WPC SR2 SWD SEXT SHE DIR WR SOP1 SOP2 ALUOP[3] ALUOP[2] ALUOP[1] ALOP[0] SDMD WD SR LF
    stack : Pila Port map ( 
        PCin => auxSDMP,
        clk => clk, 
        clr => clr, 
        wpc => auxMicroInstruccion(16),
        up => auxMicroInstruccion(18),
        dw => auxMicroInstruccion(17),
        PCout => auxPCout
    );
    
    memProg : MemoriaPrograma2 Port map ( 
        pc => auxPCout(9 downto 0),
        inst => auxInst
    );
    
    -- Unidad Control
    uc : UnidadControl Port map ( 
        clk => clk, 
        clr => clr,
        opCode => auxInst(24 downto 20),
        funCode => auxInst(3 downto 0),
        banderas => auxBanderas,
        microInstruccion => auxMicroInstruccion
    );
    
    --SR2
    SR2 : MuxSR2 Port map (
        a => auxInst(11 downto 8),
        b => auxInst(19 downto 16),
        control => auxMicroInstruccion(15),
        salida => auxSR2
    );
    
    --SWD
    SWD : Mux16Bits Port map (
        a => auxInst(15 downto 0),
        b => auxSR,
        control => auxMicroInstruccion(14),
        salida => auxSWD
    );
    
    --Archivo de Registros
    fileReg : ArchivoRegistros Port map ( 
        wr => auxMicroInstruccion(10),
        dir => auxMicroInstruccion(11),
        she => auxMicroInstruccion(12),
        clk => clk,
        clr => clr,
        writeReg => auxInst(19 downto 16), 
        readReg1 => auxInst(15 downto 12), 
        readReg2 => auxSR2, 
        shamt => auxInst(7 downto 4), 
        writeData => auxSWD,
        readData1 => auxReadData1, 
        readData2 => auxReadData2
    );
    
    --ExtensorSigno
    extSig : ExtensorSigno Port map ( 
        Slit_in => auxInst(11 downto 0),
        Slit_out => auxExtSig
    );
    
    --ExtensorDireccion
    extDir : ExtensorDireccion Port map ( 
        lit_in => auxInst(11 downto 0),
        lit_out => auxExtDir
    );

    --SEXT
    SEXT : Mux16Bits Port map (
        a => auxExtSig,
        b => auxExtDir,
        control => auxMicroInstruccion(13),
        salida => auxSEXT
    );
    
    --SOP1
    SOP1 : Mux16Bits Port map (
        a => auxReadData1,
        b => auxPCOut,
        control => auxMicroInstruccion(9),
        salida => auxSOP1
    );
    
    --SOP2
    SOP2 : Mux16Bits Port map (
        a => auxReadData2,
        b => auxSEXT,
        control => auxMicroInstruccion(8),
        salida => auxSOP2
    );
    
    --ALU
    ALU : ALUNBits Port map ( 
        a => auxSOP1, 
        b => auxSOP2,
        aluop => auxMicroInstruccion(7 downto 4),
        res => auxResALU,
        banderas => auxBanderas
    );
    
    --SDMD
    SDMD : Mux16Bits Port map (
        a => auxResALU,
        b => auxInst(15 downto 0),
        control => auxMicroInstruccion(3),
        salida => auxSDMD
    );
    
    --MemDatos
    memData : MemoriaDatos Port map ( 
        add => auxSDMD(9 downto 0),
        dataIn => auxReadData2,
        clk => clk, 
        wd => auxMicroInstruccion(2),
        dataOut => auxDataOut
    );
    
    --SR
    SR : Mux16Bits Port map (
        a => auxDataOut,
        b => auxResALU,
        control => auxMicroInstruccion(1),
        salida => auxSR
    );
    
    --SDMP
    SDMP : Mux16Bits Port map (
        a => auxInst(15 downto 0),
        b => auxSR,
        control => auxMicroInstruccion(19),
        salida => auxSDMP
    );
    
    pc <= auxPCout(9 downto 0);
    instruccion <= auxInst;
    RD1 <= auxReadData1;
    RD2 <= auxReadData2;
    resALU <= auxResALU;
    busSR <= auxSR;
end Behavioral;
