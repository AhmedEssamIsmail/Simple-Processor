library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is

PORT(	
      I0: 	IN STD_LOGIC;
		I1: 	IN STD_LOGIC;
		I2: 	IN STD_LOGIC;
		I3: 	IN STD_LOGIC;
		S:	   IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		O:  	OUT STD_LOGIC
);
 
end mux4;

architecture Behavioral of mux4 is

begin
O <=	I0 WHEN S="00" ELSE
		I1 WHEN S="01" ELSE
		I2 WHEN S="10" ELSE
		I3 WHEN S="11" ;
        			


end Behavioral;

