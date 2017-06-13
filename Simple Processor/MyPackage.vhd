

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage is


component Adder is
    Port ( FirstOperand : in  STD_LOGIC;
           SecondOperand : in  STD_LOGIC;
           CarryIn : in Std_logic ;
           Result : out  STD_LOGIC;
           CarryOut : out  STD_LOGIC);
end component;


component ALU is
	Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end component;

component alucontrol is
    Port ( AluOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;


component alu1bit is
		port (input1 : in  STD_LOGIC;
           input2 : in  STD_LOGIC;
           op : in  STD_LOGIC_vector (3 downto 0);
           cin : in  STD_LOGIC;
           output : out  STD_LOGIC;
			  carryout : out Std_logic; 
			  setout : out std_logic; 
			  less : in Std_logic);
end component;



component ControlUnit is

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

end component;

component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;


component decoder is
PORT(I:IN STD_LOGIC_VECTOR (4 DOWNTO 0);
     E:IN STD_LOGIC;
     O :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end component;


component reg IS
	GENERIC(n:NATURAL);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;


component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;

component Jump_Address is
   Port ( PC : in  STD_LOGIC_VECTOR (3 downto 0);
           data26 : in  STD_LOGIC_VECTOR (25 downto 0);
           data32 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component mux32 is

    Port ( 
	 
	 
	 I0 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I1 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I2 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I3 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I4 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I5 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I6 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I7 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I8 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I9 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I10 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I11 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I12 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I13 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I14 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I15 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I16 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I17 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I18 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I19 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I20 : in  STD_LOGIC_VECTOR (31 downto 0);
	 I21 : in  STD_LOGIC_VECTOR (31 downto 0);
	  I22 : in  STD_LOGIC_VECTOR (31 downto 0);
	  I23 : in  STD_LOGIC_VECTOR (31 downto 0);
	  I24 : in  STD_LOGIC_VECTOR (31 downto 0);
	  I25 : in  STD_LOGIC_VECTOR (31 downto 0);
	  I26 : in  STD_LOGIC_VECTOR (31 downto 0);
	  I27 : in  STD_LOGIC_VECTOR (31 downto 0);
	  I28 : in  STD_LOGIC_VECTOR (31 downto 0);
     I29 : in  STD_LOGIC_VECTOR (31 downto 0);
     I30 : in  STD_LOGIC_VECTOR (31 downto 0);
     I31 : in  STD_LOGIC_VECTOR (31 downto 0);
    S : in  STD_LOGIC_VECTOR (4 downto 0);
    O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component Mux2_5in is
Port ( in0 : in  STD_LOGIC_VECTOR (4 downto 0);
           in1 : in  STD_LOGIC_VECTOR (4 downto 0);
           sel : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component Mux2x1 is
    Port ( SecondOp : in  STD_LOGIC_VECTOR (31 downto 0);
           NotSecondOp : in  STD_LOGIC_VECTOR (31 downto 0);
           Operand : out  STD_LOGIC_VECTOR (31 downto 0);
           CinSelector : in  STD_LOGIC);
end component;

component Mux2 is
    Port ( in0 : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component mux4 is

PORT(	
      I0: 	IN STD_LOGIC;
		I1: 	IN STD_LOGIC;
		I2: 	IN STD_LOGIC;
		I3: 	IN STD_LOGIC;
		S:	   IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		O:  	OUT STD_LOGIC
);
end component;

component PC is

port (
        CLK : in  std_logic;
		 START : in  std_logic;
		 input : in std_logic_vector (31 downto 0);
		 output : out std_logic_vector(31 downto 0)
		 
		 
);
end component;

component Reg32_0 IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;


component reg32_1 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;

component RegisterFile is
port(
         read_sel1 : in std_logic_vector(4 downto 0);
			read_sel2 : in std_logic_vector(4 downto 0); 
			write_sel : in std_logic_vector(4 downto 0);
			write_ena : in std_logic;
         clk: in std_logic;
         write_data: in std_logic_vector(31 downto 0);
         data1: out std_logic_vector(31 downto 0);
         data2: out std_logic_vector(31 downto 0)
			);
end component;


component Sign_extend is
    Port ( data16 : in  STD_LOGIC_VECTOR (15 downto 0);
           data32 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
 






end MyPackage;


