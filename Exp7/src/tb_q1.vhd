library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_q1 is
end tb_q1;

architecture tb_q1arch of tb_q1 is
component q1 is
          PORT ( A: in std_logic_vector (1 downto 0);
             clock, rst: in std_logic;
             B, C, D : out std_logic);
end component;

constant Tempo:time:= 5 ns;
signal clock: std_logic;
signal rst: std_logic;
signal moeda: std_logic_vector (1 downto 0);

begin
machine: q1 PORT map(moeda, clock, rst, open, open, open);
mudar:process
begin
     clock <= '1', '0' after Tempo/2, '0' after Tempo;
     wait for Tempo;
end process mudar;

captura:process
begin
     rst <= '0';
     wait for 5 ns;
     moeda <= "00";
     wait for 5 ns;
     moeda <= "10";
     wait for 5 ns;
     moeda <= "01";
     wait for 5 ns;
     moeda <= "10";
     wait for 5 ns;
     moeda <= "00";
     wait for 5 ns;
     moeda <= "01";
     wait for 5 ns;
     moeda <= "10";
     wait for 5 ns;
     moeda <= "01";
     wait for 5 ns;
     moeda <= "00";
     wait for 5 ns;
     moeda <= "01";
     wait for 5 ns;
     moeda <= "10";
     wait for 5 ns;
     moeda <= "11";
     wait for 5 ns;
     moeda <= "00";
     wait for 5 ns;
     moeda <= "01";
     wait for 5 ns;
     moeda <= "01";
     wait for 5 ns;
     moeda <= "11";
     wait for 5 ns;
     moeda <= "00";
     wait for 5 ns;
     moeda <= "01";
     wait for 5 ns;
     moeda <= "11";
     wait for 5 ns;
end process captura;
end tb_q1arch;
