library ieee;
use ieee.std_logic_1164.all;

entity somador_completo is

port (
    cin, a, b : IN STD_LOGIC ;
    s, cout : OUT STD_LOGIC
);

end somador_completo;

architecture main of somador_completo is

begin
    s <= a XOR b XOR cin ;
    cout <= (a AND b) OR (cin AND a) OR (cin AND b) ;
end main;
