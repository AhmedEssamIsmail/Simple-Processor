
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Jump_Address is
    Port ( PC : in  STD_LOGIC_VECTOR (3 downto 0);
           data26 : in  STD_LOGIC_VECTOR (25 downto 0);
           data32 : out  STD_LOGIC_VECTOR (31 downto 0));
end Jump_Address;

architecture Behavioral of Jump_Address is
signal tmp : STD_LOGIC_VECTOR (27 DOWNTO 0);
begin

tmp<=data26&"00";

data32<=PC&tmp;

end Behavioral;

