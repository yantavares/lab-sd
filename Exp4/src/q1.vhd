library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity q1 is
    port(
         a, b, c : in std_logic;
         x, y : out std_logic
    );
end q1;
 
architecture main of q1 is
component mux4x1 port(
         S: in std_logic_vector(1 downto 0);
         D: in std_logic_vector(3 downto 0);
         Y: out std_logic 
);
end component;
    signal Dx, Dy : std_logic_vector(3 downto 0) := "0000";
    signal SS    : std_logic_vector(1 downto 0) := "00";

begin
    SS <= a & b;
    Tx: mux4x1 port map (D => Dx, S => SS, Y => x);
    Ty: mux4x1 port map (D => Dy, S => SS, Y => y);
    Dx <= '1' & not c & c & '0';
    Dy <= c & '0' & not c & '1';
 
end main;
