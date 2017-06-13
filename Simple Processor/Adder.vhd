
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MyPackage.All;


entity Adder is
    Port ( FirstOperand : in  STD_LOGIC;
           SecondOperand : in  STD_LOGIC;
           CarryIn : in Std_logic ;
           Result : out  STD_LOGIC;
           CarryOut : out  STD_LOGIC);
end Adder;

architecture Behavioral of Adder is

begin
		Result <= FirstOperand Xor SecondOperand Xor CarryIn;
		CarryOut <= ((FirstOperand Xor SecondOperand) And CarryIn) or (FirstOperand and SecondOperand);

end Behavioral;

