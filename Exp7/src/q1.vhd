library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity q1 is
      port ( A: in std_logic_vector (1 downto 0);
             clock, rst: in std_logic;
             B, C, D : out std_logic);
end q1;

architecture q1_arch of q1 is
type State is (INIT, v_25, v_50, v_75, liberou, liberou_25, cancela_25, cancela_50, cancela_75);

signal currentstate, nextstate: state;

begin
    sync_proc: process(clock)
    begin
        if rising_edge(clock) then
           currentstate <= nextstate;
        end if;

end process sync_proc;

combinacao: process(currentstate, A)
begin
    case currentState is
    when INIT =>
       B <= '0';
       C <= '0';
       D <= '0';
       if (A = "00" or A = "11") then
       nextstate <= INIT;

       elsif (A = "01") then
       nextstate <= v_25;

       elsif (A = "10") then
       nextstate <= v_50;
       end if;

when v_25 =>
     B <= '0';
     C <= '0';
     D <= '0';
     if (A = "00") then
     nextstate <= v_25;

     elsif (A = "01") then
     nextstate <= v_50;

     elsif (A = "10") then
     nextstate <= v_75;

     elsif (A = "11") then
     nextstate <= cancela_25;
     end if;

when v_50 =>
     B <= '0';
     C <= '0';
     D <= '0';
     if (A = "00") then
     nextstate <= v_50;

     elsif (A = "01") then
     nextstate <= v_75;

     elsif (A = "10") then
     nextstate <= liberou;

     elsif (A = "11") then
     nextstate <= cancela_50;
     end if;

when v_75 =>
     B <= '0';
     C <= '0';
     D <= '0';
     if (A = "00") then
     nextstate <= v_75;

     elsif(A = "01") then
     nextstate <= liberou;

     elsif(A = "10") then
     nextstate <= liberou_25;

     elsif(A = "11") then
     nextstate <= cancela_75;
     end if;

when liberou =>
     B <= '1';
     C <= '0';
     D <= '0';
     nextstate <= INIT;

when liberou_25 =>
     B <= '1';
     C <= '1';
     D <= '0';
     nextstate <= INIT;

when cancela_25 =>
     B <= '0';
     C <= '1';
     D <= '0';
     nextstate <= INIT;

when cancela_50 =>
     B <= '0';
     C <= '0';
     D <= '1';
     nextstate <= INIT;

when cancela_75 =>
     B <= '0';
     C <= '1';
     D <= '1';
     nextstate <= INIT;

when others =>
     B <= '0';
     C <= '0';
     D <= '0';
     nextstate <= INIT;

end case;
end process combinacao;
end q1_arch;
