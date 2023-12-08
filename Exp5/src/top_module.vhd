library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
entity top_module is end;
architecture main of top_module is
component somador_palavras
port (
    a, b     :    in std_logic_vector(3 downto 0);
    s    :    out std_logic_vector(4 downto 0)
);
end component;
component somador_arith
port (
    a, b    :    in std_logic_vector(3 downto 0);
    s    :    out std_logic_vector(4 downto 0)
);
end component;
 
component tb is
port (
    s_dut, s_gm    :    in std_logic_vector(4 downto 0);
    a, b        :       out std_logic_vector(3 downto 0)
 
);
end component;
 
signal ax, bx   :     std_logic_vector (3 downto 0);
signal s_dutx, s_gmx: std_logic_vector(4 downto 0);
 
begin
    U0: somador_palavras port map(a => ax,b => bx,s => s_dutx);
    U1: somador_arith port map(a => ax,b => bx,s => s_gmx);
    U2: tb port map(s_dut => s_dutx, s_gm => s_gmx, a => ax, b => bx);
end main;
