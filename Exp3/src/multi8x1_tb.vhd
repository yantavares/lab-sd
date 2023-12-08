library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity multi8x1_tb is end;
 
architecture multi8x1_arc of multi8x1_tb is
 
    component multi8x1
        port(
            d : in std_logic_vector(7 downto 0);
            s : in std_logic_vector(2 downto 0);
            y : out std_logic
        );
    end component;
 
    signal clkd : std_logic_vector(7 downto 0) := "00000000";
    signal clks : std_logic_vector(2 downto 0) := "000";
 
begin
    multi8x1_tb : multi8x1 port map (d => clkd, s => clks, y => open);
    clkd(0) <= not clkd(0) after 1 ns;
    clkd(1) <= not clkd(1) after 2 ns;
    clkd(2) <= not clkd(2) after 4 ns;
    clkd(3) <= not clkd(3) after 8 ns;
    clkd(4) <= not clkd(4) after 16 ns;
    clkd(5) <= not clkd(5) after 32 ns;
    clkd(6) <= not clkd(6) after 64 ns;
    clkd(7) <= not clkd(7) after 128 ns;

    clks(0) <= not clks(0) after 256 ns;
    clks(1) <= not clks(1) after 512 ns;
    clks(2) <= not clks(2) after 1024 ns;
 

end multi8x1_arc;
