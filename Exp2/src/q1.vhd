library  IEEE;
use IEEE.std_logic_1164.all;

entity q1  is port (
A  : in std_logic;
B  : in  std_logic;
Cin  : in  std_logic;    
S   : out std_logic;
Cout   : out std_logic
);
end q1;

architecture rtl  of  q1  is

begin

S  <= A xor B xor Cin;
Cout  <= (A and B) or (A and Cin) or (B and Cin);

end rtl;

