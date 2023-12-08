LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_q2 IS END;

ARCHITECTURE behavior OF tb_q2 IS 

    COMPONENT q2
    PORT(
    a, b, c, d, e, f, g : in std_logic;
        s : out std_logic
        );
    END COMPONENT;

   signal clka : std_logic := '0';
   signal clkb : std_logic := '0';
   signal clkc : std_logic := '0';
   signal clkd : std_logic := '0';
   signal clke : std_logic := '0';
   signal clkf : std_logic := '0';
   signal clkg : std_logic := '0';


BEGIN

   tb_q2 : q2 PORT MAP (
          a => clka,
          b => clkb,
          c => clkc,
          d => clkd,
          e => clke,
          f => clkf,
          g => clkg,
          s => open
        );


    clka <= not clka after 1 ns;
    clkb <= not clkb after 2 ns;
    clkc <= not clkc after 4 ns;
    clkd <= not clkd after 8 ns;
    clke <= not clke after 16 ns;
    clkf <= not clkf after 32 ns;
    clkg <= not clkg after 64 ns;

END behavior;