
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MyPackage.All;


entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

	signal dataout1  :std_logic_vector(31 downto 0);

	signal Carryout1 :std_logic ;
	signal Carryout2 :std_logic ;
	signal Carryout3 :std_logic ;
	signal Carryout4 :std_logic ;
	signal Carryout5 :std_logic ;
	signal Carryout6 :std_logic ;
	signal Carryout7 :std_logic ;
	signal Carryout8 :std_logic ;
	signal Carryout9 :std_logic ;
	signal Carryout10:std_logic ;
	signal Carryout11:std_logic ;
	signal Carryout12:std_logic ;
	signal Carryout13:std_logic ;
	signal Carryout14:std_logic ;
	signal Carryout15:std_logic ;
	signal Carryout16:std_logic ;
	signal Carryout17:std_logic ;
	signal Carryout18:std_logic ;
	signal Carryout19:std_logic ;
	signal Carryout20:std_logic ;
	signal Carryout21:std_logic ;
	signal Carryout22:std_logic ;
	signal Carryout23:std_logic ;
	signal Carryout24:std_logic ;
	signal Carryout25:std_logic ;
	signal Carryout26:std_logic ;
	signal Carryout27:std_logic ;
	signal Carryout28:std_logic ;
	signal Carryout29:std_logic ;
	signal Carryout30:std_logic ;
	signal Carryout31:std_logic ;
	signal Carryout32:std_logic ;

	signal AdderFirstOperand : STD_LOGIC_VECTOR (31 downto 0);
	signal AdderSecondOperand: STD_LOGIC_VECTOR (31 downto 0);
	signal Temp 				 : STD_LOGIC 		  					;
	signal SetOut 				 : STD_LOGIC 		  					;
	
begin

			FirstOperand : Mux2x1 port map(data1,not(data1),AdderFirstOperand,aluop(3));
			SecOperand   : Mux2x1 port map(data2,not(data2),AdderSecondOperand,aluop(2));
			
			alu1  : alu1bit port map(AdderFirstOperand(0) ,AdderSecondOperand(0) ,aluop ,cin        ,dataout1(0) ,carryout1 , Temp  , SetOut);
			alu2  : alu1bit port map(AdderFirstOperand(1) ,AdderSecondOperand(1) ,aluop ,carryout1  ,dataout1(1) ,carryout2 , Temp  , '0'   );
			alu3  : alu1bit port map(AdderFirstOperand(2) ,AdderSecondOperand(2) ,aluop ,carryout2  ,dataout1(2) ,carryout3 , Temp  , '0'   );
			alu4  : alu1bit port map(AdderFirstOperand(3) ,AdderSecondOperand(3) ,aluop ,carryout3  ,dataout1(3) ,carryout4 , Temp  , '0'   );
			alu5  : alu1bit port map(AdderFirstOperand(4) ,AdderSecondOperand(4) ,aluop ,carryout4  ,dataout1(4) ,carryout5 , Temp  , '0'   );
			alu6  : alu1bit port map(AdderFirstOperand(5) ,AdderSecondOperand(5) ,aluop ,carryout5  ,dataout1(5) ,carryout6 , Temp  , '0'   );
			alu7  : alu1bit port map(AdderFirstOperand(6) ,AdderSecondOperand(6) ,aluop ,carryout6  ,dataout1(6) ,carryout7 , Temp  , '0'   );
			alu8  : alu1bit port map(AdderFirstOperand(7) ,AdderSecondOperand(7) ,aluop ,carryout7  ,dataout1(7) ,carryout8 , Temp  , '0'   );
			alu9  : alu1bit port map(AdderFirstOperand(8) ,AdderSecondOperand(8) ,aluop ,carryout8  ,dataout1(8) ,carryout9 , Temp  , '0'   );
			alu10 : alu1bit port map(AdderFirstOperand(9) ,AdderSecondOperand(9) ,aluop ,carryout9  ,dataout1(9) ,carryout10, Temp  , '0'   );
			alu11 : alu1bit port map(AdderFirstOperand(10),AdderSecondOperand(10),aluop ,carryout10 ,dataout1(10),carryout11, Temp  , '0'   );
			alu12 : alu1bit port map(AdderFirstOperand(11),AdderSecondOperand(11),aluop ,carryout11 ,dataout1(11),carryout12, Temp  , '0'   );
			alu13 : alu1bit port map(AdderFirstOperand(12),AdderSecondOperand(12),aluop ,carryout12 ,dataout1(12),carryout13, Temp  , '0'   );
			alu14 : alu1bit port map(AdderFirstOperand(13),AdderSecondOperand(13),aluop ,carryout13 ,dataout1(13),carryout14, Temp  , '0'   );
			alu15 : alu1bit port map(AdderFirstOperand(14),AdderSecondOperand(14),aluop ,carryout14 ,dataout1(14),carryout15, Temp  , '0'   );
			alu16 : alu1bit port map(AdderFirstOperand(15),AdderSecondOperand(15),aluop ,carryout15 ,dataout1(15),carryout16, Temp  , '0'   );
			alu17 : alu1bit port map(AdderFirstOperand(16),AdderSecondOperand(16),aluop ,carryout16 ,dataout1(16),carryout17, Temp  , '0'   );
			alu18 : alu1bit port map(AdderFirstOperand(17),AdderSecondOperand(17),aluop ,carryout17 ,dataout1(17),carryout18, Temp  , '0'   );
			alu19 : alu1bit port map(AdderFirstOperand(18),AdderSecondOperand(18),aluop ,carryout18 ,dataout1(18),carryout19, Temp  , '0'   );
			alu20 : alu1bit port map(AdderFirstOperand(19),AdderSecondOperand(19),aluop ,carryout19 ,dataout1(19),carryout20, Temp  , '0'   );
			alu21 : alu1bit port map(AdderFirstOperand(20),AdderSecondOperand(20),aluop ,carryout20 ,dataout1(20),carryout21, Temp  , '0'   );
			alu22 : alu1bit port map(AdderFirstOperand(21),AdderSecondOperand(21),aluop ,carryout21 ,dataout1(21),carryout22, Temp  , '0'   );
			alu23 : alu1bit port map(AdderFirstOperand(22),AdderSecondOperand(22),aluop ,carryout22 ,dataout1(22),carryout23, Temp  , '0'   );
			alu24 : alu1bit port map(AdderFirstOperand(23),AdderSecondOperand(23),aluop ,carryout23 ,dataout1(23),carryout24, Temp  , '0'   );
			alu25 : alu1bit port map(AdderFirstOperand(24),AdderSecondOperand(24),aluop ,carryout24 ,dataout1(24),carryout25, Temp  , '0'   );
			alu26 : alu1bit port map(AdderFirstOperand(25),AdderSecondOperand(25),aluop ,carryout25 ,dataout1(25),carryout26, Temp  , '0'   );
			alu27 : alu1bit port map(AdderFirstOperand(26),AdderSecondOperand(26),aluop ,carryout26 ,dataout1(26),carryout27, Temp  , '0'   );
			alu28 : alu1bit port map(AdderFirstOperand(27),AdderSecondOperand(27),aluop ,carryout27 ,dataout1(27),carryout28, Temp  , '0'   );
			alu29 : alu1bit port map(AdderFirstOperand(28),AdderSecondOperand(28),aluop ,carryout28 ,dataout1(28),carryout29, Temp  , '0'   );
			alu30 : alu1bit port map(AdderFirstOperand(29),AdderSecondOperand(29),aluop ,carryout29 ,dataout1(29),carryout30, Temp  , '0'   );
			alu31 : alu1bit port map(AdderFirstOperand(30),AdderSecondOperand(30),aluop ,carryout30 ,dataout1(30),carryout31, Temp  , '0'   );
			alu32 : alu1bit port map(AdderFirstOperand(31),AdderSecondOperand(31),aluop ,carryout31 ,dataout1(31),carryout32, SetOut, '0'   );
			
	      zflag <=not(dataout1(0)  or dataout1(1)  or dataout1(2)  or dataout1(3)  or dataout1(4)  or
						   dataout1(5)  or dataout1(6)  or dataout1(7)  or dataout1(8)  or dataout1(9)  or
						   dataout1(10) or dataout1(11) or dataout1(12) or dataout1(13) or dataout1(14) or
						   dataout1(15) or dataout1(16) or dataout1(17) or dataout1(18) or dataout1(19) or
						   dataout1(20) or dataout1(21) or dataout1(22) or dataout1(23) or dataout1(24) or
						   dataout1(25) or dataout1(26) or dataout1(27) or dataout1(28) or dataout1(29) or
						   dataout1(30) or dataout1(31)) ;		
						
			oflag <= carryout32 xor carryout31;
			
			cflag <= carryout32;
					
			dataout <= dataout1;
			
end Behavioral;