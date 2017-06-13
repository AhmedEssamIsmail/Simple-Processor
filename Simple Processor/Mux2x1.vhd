library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MyPackage.All;
entity Mux2x1 is
    Port ( SecondOp : in  STD_LOGIC_VECTOR (31 downto 0);
           NotSecondOp : in  STD_LOGIC_VECTOR (31 downto 0);
           Operand : out  STD_LOGIC_VECTOR (31 downto 0);
           CinSelector : in  STD_LOGIC);
end Mux2x1;

architecture Behavioral of Mux2x1 is

begin
	Operand <= SecondOp when CinSelector = '0' else
				  NotSecondOp when CinSelector = '1' ;

end Behavioral;

