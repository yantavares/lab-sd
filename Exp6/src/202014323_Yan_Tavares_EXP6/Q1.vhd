library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity Q1 is
   port( J,K: in  std_logic;
         pr: in std_logic;
         clk: in std_logic;
         clr: in std_logic;
         Q: out std_logic);
end Q1;
architecture main of Q1 is
   signal JK: std_logic_vector(1 downto 0);
   signal Qbuf  :  std_logic := '0';    
begin
  JK <= J & K;
  process(pr, clk, clr)
  begin
    if pr = '1' then Qbuf <= '1';
    elsif clr = '1' then Qbuf <= '0';
    elsif rising_edge(clk) then
      case JK is
        when "00" =>    Qbuf <= Qbuf;
        when "01" =>     Qbuf <= '0';
        when "10" =>     Qbuf <= '1';
        when "11" =>     Qbuf <= not(Qbuf);
        when others =>     Qbuf <= Qbuf;
     end case;    
    end if;
  end process;
  Q <= Qbuf;
end main;
