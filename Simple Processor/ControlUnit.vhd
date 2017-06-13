
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity ControlUnit is

    Port ( input : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           AluSrc : out  STD_LOGIC;
           MemReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
			  NotEqBranch : out STD_LOGIC;
           AluOp1 : out  STD_LOGIC;
           AluOp0 : out  STD_LOGIC;
			  jump : out STD_LOGIC
			  );

end ControlUnit;

architecture Behavioral of ControlUnit is

signal  RFormat , lw , sw ,  beq , j , bneq : std_logic;

begin

RFormat <= not(input(0)) and not(input(1)) and not(input(2)) and
			not(input(3)) and not(input(4)) and not(input(5));

lw <= 	input(0) and input(1) and not(input(2)) and
			not(input(3)) and not(input(4)) and input(5);

sw <= 	input(0) and input(1) and not(input(2)) and
			input(3) and not(input(4)) and input(5) ;

beq <= 	not(input(0)) and not(input(1)) and input(2) and
			not(input(3)) and not(input(4)) and not(input(5));

bneq <= 	input(0) and not(input(1)) and  input(2) and
			not(input(3)) and not(input(4)) and not(input(5));

j <= not(input(0)) and (input(1)) and not (input(2)) and
			not(input(3)) and not(input(4)) and not(input(5));

RegDst <= RFormat;
			
AluSrc <= lw or sw ;
			
MemReg <= lw;
			
RegWrite <= RFormat or lw;
			
MemRead <= lw;

MemWrite <= sw;

Branch <= beq;
			
AluOp1 <= RFormat;
			
AluOp0 <= beq;

jump <= j;

NotEqBranch <= bneq;

end Behavioral;

