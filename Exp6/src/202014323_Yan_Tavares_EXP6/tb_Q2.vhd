library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity tb_Q2 is end;
architecture main of tb_Q2 is
component Q2 is
port( dir, L, R: in  std_logic;
         reset: in std_logic;
         clk: in std_logic;
         load: in std_logic;
     D:  in std_logic_vector(3 downto 0);
     Q: out std_logic_vector(3 downto 0));
end component;
signal clka, clkb, clkc, clkd, clke, clkf: std_logic := '0';
signal clkg : std_logic_vector(3 downto 0) := "0000";
begin
   tb_Q2 : Q2 port map( clk => clka, R => clkb, L => clkc, dir => clkd, D => clkg, load => clke, reset => clkf, Q => open);
    clka <= not clka after 1 ns;
    clkb <= not clkb after 2 ns;
    clkc <= not clkc after 4 ns;
    clkd <= not clkd after 8 ns;
    clke <= not clke after 16 ns;
    clkf <= not clkf after 32 ns;
    clkg <= not clkg after 64 ns;

end main;
