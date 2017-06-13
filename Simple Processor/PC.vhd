library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use  work.MyPackage.all;

entity PC is

port (
       CLK : in  std_logic;
		 START : in  std_logic;
		 input : in std_logic_vector (31 downto 0);
		 output : out std_logic_vector(31 downto 0)
		 
);
end PC;

architecture Behavioral of PC is

begin


PC : reg GENERIC MAP (32) PORT MAP (input,CLK,not(START),'0',(START), output);

end Behavioral;

