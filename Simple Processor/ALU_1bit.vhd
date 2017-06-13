
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MyPackage.All;


entity alu1bit is
		port (input1 : in  STD_LOGIC;
           input2 : in  STD_LOGIC;
           op : in  STD_LOGIC_vector (3 downto 0);
           cin : in  STD_LOGIC;
           output : out  STD_LOGIC;
			  carryout : out Std_logic; 
			  setout : out std_logic; 
			  less : in Std_logic);
end alu1bit;

architecture Behavioral of alu1bit is
			signal carryoutadder : std_logic ;
			signal outadder : std_logic ;
begin
			adder1bit : Adder port map (input1, input2 , cin , outadder , carryoutadder );
			
			output <= input1 and input2 when op = "0000" else
						 input1 and input2 when op = "1100" else
						 input1 or input2  when op = "0001" else
						 less 				 when op = "0111" else
			          outadder  			 when op = "0010" else
						 outadder  			 when op = "0110";
			setout <= outadder ;
			carryout <= carryoutadder ;
			--
end Behavioral;

