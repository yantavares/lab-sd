LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY q1_tb IS END;

ARCHITECTURE behavior OF q1_tb IS 

    COMPONENT q1
    PORT(
	a, b, c : in std_logic;
    	x, y : out std_logic
        );
    END COMPONENT;

   signal clka : std_logic := '0';
   signal clkb : std_logic := '0';
   signal clkc : std_logic := '0';


BEGIN

   q1_tb : q1 PORT MAP (
          a => clka,
          b => clkb,
	  c => clkc,
          x => open,
	  y => open
        );

	clka <= not clka after 1 ns;
	clkb <= not clkb after 2 ns;
	clkc <= not clkc after 4 ns;

END behavior;
