library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Sign_extend is
    Port ( data16 : in  STD_LOGIC_VECTOR (15 downto 0);
           data32 : out  STD_LOGIC_VECTOR (31 downto 0));
end Sign_extend;

architecture Behavioral of Sign_extend is

begin

data32<="1111111111111111"&data16
when data16(15)='1' else
"0000000000000000"&data16;


end Behavioral;

