library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity Q2 is
   port( dir, L, R: in  std_logic;
         reset: in std_logic;
         clk: in std_logic;
         load: in std_logic;
     D:  in std_logic_vector(3 downto 0);
     Q: out std_logic_vector(3 downto 0));
end Q2;
architecture main of Q2 is
  signal Qbuf : std_logic_vector(3 downto 0);
begin
  process (clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then Qbuf <= "0000";
      elsif load = '1' then Qbuf <= D;
      elsif dir = '0' then Qbuf <= Qbuf(2) & Qbuf(1) & Qbuf(0) & L;
      elsif dir = '1' then Qbuf <= L & Qbuf(3) & Qbuf(2) & Qbuf(1);
      end if;
   else Qbuf <= Qbuf;
   end if;
  end process;
  Q <= Qbuf;
end main;
