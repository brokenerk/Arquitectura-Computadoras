library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity UnidadControl is
    Port ( clk, clr, LF : in STD_LOGIC;
           opCode : in STD_LOGIC_VECTOR (4 downto 0);
           funCode, banderas : in STD_LOGIC_VECTOR (3 downto 0);
           na: out STD_LOGIC;
           microInstruccion : out STD_LOGIC_VECTOR (19 downto 0));
end UnidadControl;

architecture Behavioral of UnidadControl is
    component UnidadC is
        Port ( clk, clr, EQ, NE, LT, LE, GT, GE, nivel, BGETI, BGTI, BLETI, BLTI, BNEQI, BEQI, TIPOR : in STD_LOGIC;
               SDOPC, SM : out STD_LOGIC);
    end component;
    
    component Condicion is
        Port ( Q : in STD_LOGIC_VECTOR (3 downto 0);
               EQ, NE, LT, LE, GT, GE : out STD_LOGIC);
    end component;
    
    component DecodificadorInstruccion is
        Port ( opCode : in STD_LOGIC_VECTOR (4 downto 0);
               TIPOR, BEQI, BNEQI, BLTI, BLETI, BGTI, BGETI : out STD_LOGIC);
    end component;
    
    component MfunCode is
        Port ( funCode : in STD_LOGIC_VECTOR (3 downto 0);
               microFuncion : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    component MopCode is
        Port ( opCode : in  STD_LOGIC_VECTOR (4 downto 0);
               microOpCode : out  STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    component Mux2C is
        Port ( opCode : in STD_LOGIC_VECTOR (4 downto 0);
               SDOPC : in STD_LOGIC;
               salida : out STD_LOGIC_VECTOR (4 downto 0));
    end component;
    
    component Multiplexor is
        Port ( 
            microFuncion, microOpcode : in STD_LOGIC_VECTOR (19 downto 0);
            SM : in STD_LOGIC;
            salida : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    
    component Nivel is
        Port ( clk, clr : in STD_LOGIC;
               nivel : out STD_LOGIC);
    end component;
    
    component Registro is
        Port ( banderas : in STD_LOGIC_VECTOR (3 downto 0);
               clr, clk, LF : in STD_LOGIC;
               Q : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    --[EQ, NE, LT, LE, GT, GE]
    signal auxCondicion : STD_LOGIC_VECTOR (5 downto 0);
    --[TIPOR, BEQI, BNEQI, BLTI, BLETI, BGTI, BGETI]
    signal auxDecodificador : STD_LOGIC_VECTOR (6 downto 0);
    signal auxNivel, auxSM, auxSDOPC : STD_LOGIC;
    signal auxQ : STD_LOGIC_VECTOR(3 downto 0);
    signal auxOpCode : STD_LOGIC_VECTOR(4 downto 0);
    signal auxMicroFun, auxMicroOp, auxSalida : STD_LOGIC_VECTOR(19 downto 0);
begin
     uc : UnidadC Port map (
        clk => clk,
        clr => clr,
        EQ => auxCondicion(5),
        NE => auxCondicion(4),
        LT => auxCondicion(3),
        LE => auxCondicion(2),
        GT => auxCondicion(1),
        GE => auxCondicion(0),
        nivel => auxNivel,
        BGETI => auxDecodificador(0),
        BGTI => auxDecodificador(1),
        BLETI => auxDecodificador(2),
        BLTI => auxDecodificador(3),
        BNEQI => auxDecodificador(4),
        BEQI => auxDecodificador(5),
        TIPOR => auxDecodificador(6),
        SDOPC => auxSDOPC,
        SM => auxSM
    );
    
    
    con : Condicion Port map (
        Q => auxQ,
        EQ => auxCondicion(5),
        NE => auxCondicion(4),
        LT => auxCondicion(3),
        LE => auxCondicion(2),
        GT => auxCondicion(1),
        GE => auxCondicion(0) 
    );
    
    deco : DecodificadorInstruccion Port map (
        opCode => opCode,
        TIPOR => auxDecodificador(6),
        BEQI => auxDecodificador(5),
        BNEQI => auxDecodificador(4),
        BLTI => auxDecodificador(3),
        BLETI => auxDecodificador(2),
        BGTI => auxDecodificador(1),
        BGETI => auxDecodificador(0)
    );
    
    fun : MfunCode Port map (
        funCode => funCode,
        microFuncion => auxMicroFun
    );
    
    op : MopCode Port map ( 
        opCode => auxOpCode,
        microOpCode => auxMicroOp
    );
    
    mux2 : Mux2C Port map (
        opCode => opCode,
        SDOPC => auxSDOPC, 
        salida => auxOpCode
    );
    
    mux : Multiplexor Port map (
        microFuncion => auxMicroFun,
        microOpCode => auxMicroOp,
        SM => auxSM,
        salida => auxSalida
    );
    
    niv : Nivel Port map (
        clk => clk,
        clr => clr,
        nivel => auxNivel
    );
    
    microInstruccion <= auxSalida;
    na <= auxNivel;
    
    reg : Registro port map(
        banderas => banderas,
        clr => clr,
        clk => clk,
        LF => LF,
        Q => auxQ
    );

end Behavioral;
