library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux2_5in is
Port ( in0 : in  STD_LOGIC_VECTOR (4 downto 0);
           in1 : in  STD_LOGIC_VECTOR (4 downto 0);
           sel : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (4 downto 0));
end Mux2_5in;

architecture Behavioral of Mux2_5in is
begin

outt <=in1 when sel='1' else
in0;



end Behavioral;

