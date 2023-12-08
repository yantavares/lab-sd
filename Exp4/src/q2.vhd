library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity q2 is
port (
    a,b,c,d,e,f,g  :   in std_logic;
    s               :   out std_logic
);
end q2;

architecture arch of q2 is

component mux8x1 port(
    S : in std_logic_vector(2 downto 0);
    D : in std_logic_vector(7 downto 0);
    Y : out std_logic
);
end component;

component dec4x16 port(
    A : in  STD_LOGIC_VECTOR (3 downto 0);
    Y : out  STD_LOGIC_VECTOR (15 downto 0)
);
end component;

    signal aux_in_dec: std_logic_vector(3 downto 0);
    signal aux_out_dec: std_logic_vector(15 downto 0);
    signal aux_s_mux: std_logic_vector(2 downto 0);
    signal aux_d_mux: std_logic_vector(7 downto 0);

begin 
    aux_in_dec(3) <= a;
    aux_in_dec(2) <= b;
    aux_in_dec(1) <= c;
    aux_in_dec(0) <= d;

    aux_s_mux(2) <= e;
    aux_s_mux(1) <= f;
    aux_s_mux(0) <= g;

    aux_d_mux(0) <= '0';
    aux_d_mux(1) <= aux_out_dec(0) or aux_out_dec(15);
    aux_d_mux(2) <= aux_out_dec(7);
    aux_d_mux(3) <= '1';
    aux_d_mux(4) <= aux_out_dec(9) or aux_out_dec(15);
    aux_d_mux(5) <= '0';
    aux_d_mux(6) <= aux_out_dec(10) or aux_out_dec(11);
    aux_d_mux(7) <= '1';


    Mux: mux8x1 port map(D => aux_d_mux, S => aux_s_mux, Y => s);
    Dec: dec4x16 port map(A => aux_in_dec, Y => aux_out_dec);

end arch;
