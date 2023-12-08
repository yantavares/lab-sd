library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity q2 is
 port(

     S : in STD_LOGIC_VECTOR(1 downto 0);
     D: in STD_LOGIC_VECTOR(3 downto 0);
     Y: out STD_LOGIC

  );
end q2;

architecture rtl of q2 is

begin

    Y <= ( D(0) and not S(1) and not S(0) ) or ( D(1) and not S(1) and S(0) ) or ( D(2) and S(1) and not S(0) ) or ( D(3) and S(1) and S(0) );

end rtl;
