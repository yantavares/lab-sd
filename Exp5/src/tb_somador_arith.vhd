library Ieee;
use Ieee.std_logic_1164.all;
use std.textio.all;
use IEEE.STD_LOGIC_ARITH.all;
use Ieee.std_logic_unsigned.all;

entity tb_somador_arith is
end;

architecture behavior of tb_somador_arith is

component exp5_2 is port (
A: in std_logic_vector (3 downto 0);
B: in std_logic_vector (3 downto 0);
S: out std_logic_vector (4 downto 0));

end component;

signal INPUT_signal : std_logic_vector (7 downto 0):= (others => '0');
signal signalAT : std_logic_vector (3 downto 0) := (others => '0');
signal signalBT : std_logic_vector (3 downto 0):= (others => '0');

begin

signalAT <= INPUT_signal(3) & INPUT_signal (2) & INPUT_signal (1) & INPUT_signal (0);

signalBT <= INPUT_signal(7) & INPUT_signal (6) & INPUT_signal (5) & INPUT_signal (4);

dut: exp5_2 port map (A => signalAT, B => signalBT, S => open);

estimulo: process

begin

for I in 0 to 255 loop
wait for 500 ns; INPUT_signal <= UNSIGNED (INPUT_signal) +1;
end loop;
wait;
end process;

end behavior;
