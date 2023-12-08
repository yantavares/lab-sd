entity  testbench1 is end;

library  ieee;
use ieee.std_logic_1164.all;
use  std.textio.all;

architecture tb_q1 of  testbench1 is




component  q1
port(
A  : in std_logic;
B  : in  std_logic;
Cin  : in  std_logic;    
S   : out std_logic;
Cout   : out std_logic
);
end component;

signal  A_1:  std_logic;
signal  B_1:  std_logic;
signal  Cin_1:  std_logic;

Begin

q0:  q1   port map (A => A_1, B => B_1, Cin => Cin_1,  S => open );

estimulo : process
begin
wait for  5 ns;  A_1 <= '0' ;  B_1 <=  '0' ; Cin_1 <= '0';
wait for  5 ns;  A_1 <= '0' ;  B_1 <=  '0' ; Cin_1 <= '1';
wait for  5 ns;  A_1 <= '0' ;  B_1 <=  '1' ; Cin_1 <= '1';
wait for  5 ns;  A_1 <= '0' ;  B_1 <=  '1' ; Cin_1 <= '0';
wait for  5 ns;  A_1 <= '1' ;  B_1 <=  '1' ; Cin_1 <= '0';
wait for  5 ns;  A_1 <= '1' ;  B_1 <=  '1' ; Cin_1 <= '1';
wait for  5 ns;  A_1 <= '1' ;  B_1 <=  '0' ; Cin_1 <= '1';
wait for  5 ns;  A_1 <= '1' ;  B_1 <=  '0' ; Cin_1 <= '0';

wait;
end process  estimulo;

end tb_q1;
