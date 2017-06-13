library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux2 is
    Port ( in0 : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux2;

architecture Behavioral of Mux2 is

begin

outt <=in1 when sel='1' else
in0;
end Behavioral;

