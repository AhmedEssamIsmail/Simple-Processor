
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity alucontrol is
    Port ( AluOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end alucontrol;

architecture Behavioral of alucontrol is
signal tmpOperation : std_logic_vector (3 downto 0);
begin

tmpOperation(3) <= (AluOp(1)) and ((Funct(0))and(Funct(1))); 

tmpOperation(2) <= (AluOp(0)) or ((AluOp(1))and(Funct(1)));

tmpOperation(1) <= (not(AluOp(1))) or (not(Funct(2)));

tmpOperation(0) <= not(tmpOperation(3)) AND (Aluop(1) AND (Funct(3) or funct(0)));
                 

Operation <= tmpOperation;
 

end Behavioral;

