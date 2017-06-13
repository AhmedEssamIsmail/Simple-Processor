
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use  work.MyPackage.all;

 
entity MainModule is
port(
		START: IN STD_LOGIC;
		CLK: IN STD_LOGIC;
		RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
		RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
		ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
		PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
		DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0)
);
 
end MainModule;
 
architecture Behavioral of MainModule is
signal BV : STd_logic_vector (31 downto 0);
signal RegFO1:Std_logic_vector(31 downto 0);
signal RegFO2:Std_logic_vector(31 downto 0);
signal myAddress:std_logic_vector ( 31 downto 0 );
signal NewAddress :std_logic_vector ( 31 downto 0 );
signal RD : std_logic_vector(4 downto 0);
signal AluCout : std_logic_vector (3 downto 0 ) ; 
signal Alu2In : std_logic_vector(31 downto 0 ) ; 
signal myALUout : std_logic_vector(31 downto 0 ) ; 
signal Writedata : Std_logic_vector ( 31 downto 0) ;
signal DMO : std_logic_vector ( 31 downto 0 ) ;
signal BAout : std_logic_vector ( 31 downto 0 ) ;
signal m1 : std_logic_vector ( 31 downto 0 ) ;
signal m2 : std_logic_vector ( 31 downto 0 ) ;
signal Data : std_logic_vector ( 31 downto 0 ) ;
signal jumpout: std_logic_vector ( 31 downto 0 ) ;
signal addercflag:  std_logic;
signal adderzflag:  std_logic;
signal adderoflag:  std_logic;
signal cflag:  std_logic;
signal zflag:  std_logic;
signal oflag:  std_logic;
signal RegDst :   STD_LOGIC;
signal AluSrc :   STD_LOGIC;
signal MemReg :   STD_LOGIC;
signal RegWrite :   STD_LOGIC;
signal MemRead :   STD_LOGIC;
signal MemWrite :   STD_LOGIC;
signal Branch :   STD_LOGIC;
signal NotEqBranch :  STD_LOGIC;
signal AluOp1 :  STD_LOGIC;
signal AluOp0 :   STD_LOGIC;
signal jump :  STD_LOGIC;

signal pcmux1sel : std_logic ;


begin
 
 

PC : reg GENERIC MAP (32) PORT MAP (m2,CLK,(START),'0',NOT(START), myAddress);
 
pcadder : ALU port map (myAddress , "00000000000000000000000000000100" , "0010" , '0' , NewAddress,addercflag,adderzflag,adderoflag );	
 
IM : INSTRMEMORY PORT MAP (not(START),Data,myAddress,CLK);
 
MainControlUnit : ControlUnit port map (Data(31 downto 26),RegDst,AluSrc,MemReg,RegWrite,MemRead,MemWrite,Branch,NotEqBranch,AluOp1,AluOp0,jump );
  
RegisterFileMux : Mux2_5in port map (Data(20 downto 16) , Data(15 downto 11),RegDst,RD);
 
MainRegisterFile : RegisterFile port map (Data(25 downto  21 ),Data(20 downto 16 ) , RD ,RegWrite ,CLK , WriteData ,RegFO1, RegFO2);
 
MainSignExtend : Sign_extend port map (data (15 downto 0) , BV );
 
MainAluControl : alucontrol port map (Aluop1&Aluop0,data( 5 downto 0 ),AluCout);
 
AluMux : Mux2 port map ( RegFO2 , BV , Alusrc , Alu2In );
 
MainALU : ALU port map ( RegFO1 , Alu2In , AluCout ,AluCout(2) , myALUout  , cflag , zflag , oflag ) ; 
 
mainDatamemory : DATAMEMORY GENERIC MAP (64 , 32 , 32)  port map (not(Start) , RegFO2 , DMO , MemRead , MemWrite , myALUout , CLK );
 
DataMemMux : mux2 port map (myALUout , DMO , MemReg , WriteData ) ;
 
branchadder : ALU port map ( NewAddress , BV(29 downto 0)&"00" , "0010" , '0' , BAout , addercflag , adderzflag , adderoflag ) ;

myjump  : Jump_Address port map( NewAddress(31 downto 28) , Data (25 downto 0) , jumpout); 

pcmux1sel <= (Branch and  zflag) or  (NotEqBranch and not (zflag));
 
pcmux1: Mux2 port map (  NewAddress  , BAout  , pcmux1sel  ,  m1 );
 
pcmux2: Mux2 port map ( m1 , jumpout  , jump , m2);
 
ALUout <= myALUout ; 

PCout <= myAddress;

DataMemout <= DMO;

RegFileOut1 <= RegFO1;
 
RegFileOut2 <= RegFO2;
 
end Behavioral;