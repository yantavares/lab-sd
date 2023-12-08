library ieee;
use ieee.std_logic_1164.all;

entity somador_palavras is
port (
    a, b     :    in std_logic_vector(3 downto 0);
    s    :    out std_logic_vector(4 downto 0)
);
end somador_palavras;

architecture main of somador_palavras is
component somador_completo port (
    cin, a, b : IN STD_LOGIC ;
    s, cout : OUT STD_LOGIC
);
end component;

signal auxcout    :    std_logic_vector(2 downto 0) := "000";

begin
    SCO : somador_completo port map( a => a(0), b => b(0), cin => '0', cout => auxcout(0), s => s(0));
    SC1 : somador_completo port map( a => a(1), b => b(1), cin => auxcout(0), cout => auxcout(1), s => s(1));
    SC2 : somador_completo port map( a => a(2), b => b(2), cin => auxcout(1), cout => auxcout(2), s => s(2));
    SC3 : somador_completo port map( a => a(3), b => b(3), cin => auxcout(2), cout => s(4), s => s(3));
end main;
