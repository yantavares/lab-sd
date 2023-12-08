library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity tb_Q1 is
end tb_Q1;

architecture main of tb_Q1 is

component Q1 is
port(j,k,clr,pr,clk:in std_logic;
   q :out std_logic);
end component;

signal clka, clkb, clkc, clkd, clke: std_logic := '0';

begin

    tb_Q1 : Q1 port map( clk => clka, k => clkb, j => clkc, clr => clkd, pr => clke, q => open);
    clka <= not clka after 1 ns;
    clkb <= not clkb after 2 ns;
    clkc <= not clkc after 4 ns;
    clkd <= not clkd after 8 ns;
    clke <= not clke after 16 ns;
end main;
