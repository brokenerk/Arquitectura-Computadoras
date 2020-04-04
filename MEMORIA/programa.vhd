


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Programa is
    generic (
        m : integer := 5; --tamaño del bus de direcciones
        n : integer := 25 --tamaño de palabra
    );
    Port ( dir : in STD_LOGIC_VECTOR (m-1 downto 0);
           inst : out STD_LOGIC_VECTOR (n-1 downto 0));
end Programa;

architecture Behavioral of Programa is
constant tipoR : std_logic_vector(4 downto 0) := "00000";
constant LI : std_logic_vector(4 downto 0) := "00001";
constant LWI : std_logic_vector(4 downto 0) := "00010";

constant R0 : std_logic_vector(3 downto 0) := "0000";
constant R1 : std_logic_vector(3 downto 0) := "0001";
constant R2 : std_logic_vector(3 downto 0) := "0010";
constant R3 : std_logic_vector(3 downto 0) := "0011";
constant su : std_logic_vector(3 downto 0) := "0000";
constant ADD : std_logic_vector(3 downto 0) := "0000";

type banco is array (0 to (2**m)-1) of std_logic_vector(n-1 downto 0);
constant aux : banco := (
    0= "0000000000000000000000000",    --add r0, r0, r0
    1 ="0000100110000000011111111",    --li, r3 xff
    2= tipoR & R0 & R0 & R0 & SU & ADD,
    3= LI & R3 & x"00FF",
    others => (others => '0')
);
begin

    inst <= aux(conv_integer(dir));


end Behavioral;




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity tbPrograma is
--  Port ( );
end tbPrograma;

architecture Behavioral of tbPrograma is
component Programa is
    Port ( dir : in STD_LOGIC_VECTOR (4 downto 0);
           inst : out STD_LOGIC_VECTOR (24 downto 0));
end component;
signal dir :  STD_LOGIC_VECTOR (4 downto 0) := "00000";
signal inst : STD_LOGIC_VECTOR (24 downto 0);

begin

u1 : Programa port map (
    dir => dir,
    inst => inst
    );
    
uno : process
begin
    wait for 30 ns;
    dir <= dir + 1;
end process;

end Behavioral;