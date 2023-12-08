LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF tb_q2 IS 

    COMPONENT q2
    PORT(
        S : in STD_LOGIC_VECTOR(1 downto 0);
     	D: in STD_LOGIC_VECTOR(0 to 3);
        Y: out STD_LOGIC
        );
    END COMPONENT;

   signal clkg : std_logic_vector(3 downto 0) := "0000";
   signal S : std_logic_vector(1 downto 0) := "00";

BEGIN

   uut: q2 PORT MAP (
          D => clkg,
          S => S,
          Y => open
        );

	
	clkg(0) <= not clkg(0) after 1 ns;
	clkg(1) <= not clkg(1) after 2 ns;
	clkg(2) <= not clkg(2) after 4 ns;
	clkg(3) <= not clkg(3) after 8 ns;

   stim_proc: process
   begin
	
	

      wait for 16 ns;	

	S <= "10";

      wait for 16 ns;	

	S <= "11";

      wait for 16 ns;	

	S <= "01";   

      wait for 16 ns;	

	end process;

END;
