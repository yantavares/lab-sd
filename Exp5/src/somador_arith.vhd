library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
 
entity somador_arith is
port (
    a, b    :    in std_logic_vector(3 downto 0);
    s    :    out std_logic_vector(4 downto 0)
);
end somador_arith;
 
architecture main of somador_arith is
 
begin
    s <= unsigned('0' & a) + unsigned('0' & b);
end main;
