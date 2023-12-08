library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity decodificador_4X16_tb is end;
 
architecture decodificador_4X16_arc of decodificador_4X16_tb is
 
    component decodificador_4X16
        port(
            a : in std_logic_vector(3 downto 0);
            y : out std_logic_vector(15 downto 0)
        );
    end component;
 
 
    signal clka : std_logic_vector(3 downto 0) := "0000";
 
begin
    decodificador_4X16_tb : decodificador_4X16 port map (a => clka, y => open);
    clka(0) <= not clka(0) after 10 ns;
    clka(1) <= not clka(1) after 20 ns;
    clka(2) <= not clka(2) after 40 ns;
    clka(3) <= not clka(3) after 80 ns;
 
end decodificador_4X16_arc;
