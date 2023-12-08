library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb is port (
    s_gm, s_dut : in std_logic_vector (4 downto 0);
    a, b	:	out std_logic_vector(3 downto 0)
);

end tb;

architecture test of tb is
begin
	process
		variable cont : std_logic_vector(7 downto 0);
	begin
		cont  := "00000000";
		report "iniciando" severity NOTE;
		for i in 0 to 255 loop
			a(0) <= cont(0);
			a(1) <= cont(1);
			a(2) <= cont(2);
			a(3) <= cont(3);
			
			b(0) <= cont(4);
			b(1) <= cont(5);
			b(2) <= cont(6);
			b(3) <= cont(7);
			wait for 500 ns;

			assert(s_gm = s_dut) report "Falhou: i = " & integer'image(i) severity ERROR;

			cont := cont + 1;
		end loop;
		report "Teste finalizado :)" severity NOTE;
		wait;
	end process;
end test;