library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.MyPackage.all;

entity RegisterFile is
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
end RegisterFile; 


architecture Behavioral of RegisterFile is

signal reg0 : std_logic_vector(31 downto 0);
signal reg1 : std_logic_vector(31 downto 0);
signal reg2 : std_logic_vector(31 downto 0);
signal reg3 : std_logic_vector(31 downto 0);
signal reg4 : std_logic_vector(31 downto 0);
signal reg5 : std_logic_vector(31 downto 0);
signal reg6 : std_logic_vector(31 downto 0);
signal reg7 : std_logic_vector(31 downto 0);
signal reg8 : std_logic_vector(31 downto 0);
signal reg9 : std_logic_vector(31 downto 0);
signal reg10 : std_logic_vector(31 downto 0);
signal reg11 : std_logic_vector(31 downto 0);
signal reg12 : std_logic_vector(31 downto 0);
signal reg13 : std_logic_vector(31 downto 0);
signal reg14 : std_logic_vector(31 downto 0);
signal reg15 : std_logic_vector(31 downto 0);
signal reg16 : std_logic_vector(31 downto 0);
signal reg17 : std_logic_vector(31 downto 0);
signal reg18 : std_logic_vector(31 downto 0);
signal reg19 : std_logic_vector(31 downto 0);
signal reg20 : std_logic_vector(31 downto 0);
signal reg21 : std_logic_vector(31 downto 0);
signal reg22 : std_logic_vector(31 downto 0);
signal reg23 : std_logic_vector(31 downto 0);
signal reg24 : std_logic_vector(31 downto 0);
signal reg25 : std_logic_vector(31 downto 0);
signal reg26 : std_logic_vector(31 downto 0);
signal reg27 : std_logic_vector(31 downto 0);
signal reg28 : std_logic_vector(31 downto 0);
signal reg29 : std_logic_vector(31 downto 0);
signal reg30 : std_logic_vector(31 downto 0);
signal reg31 : std_logic_vector(31 downto 0);

signal tmp1 : std_logic_vector(31 downto 0);

begin

         Regi1:reg  generic map (32) port map (write_data,clk,write_ena and tmp1(0),'0','0',reg0);
			Regi2:reg  generic map (32) port map (write_data,clk,write_ena and tmp1(1),'0','0',reg1);
			Regi3:reg  generic map (32) port map (write_data,clk,write_ena and tmp1(2),'0','0',reg2);
			Regi4:reg  generic map (32) port map (write_data,clk,write_ena and tmp1(3),'0','0',reg3);
			Regi5:reg  generic map (32) port map (write_data,clk,write_ena and tmp1(4),'0','0',reg4);
			Regi6:reg  generic map (32) port map (write_data,clk,write_ena and tmp1(5),'0','0',reg5);
			Regi7:reg  generic map (32) port map (write_data,clk,write_ena and tmp1(6),'0','0',reg6);
			Regi8:reg  generic map (32) port map (write_data,clk,write_ena and tmp1(7),'0','0',reg7);
			Regi9:reg  generic map (32) port map (write_data,clk,write_ena and tmp1(8),'0','0',reg8);
			Regi10:reg generic map (32) port map (write_data,clk,write_ena and tmp1(9),'0','0',reg9);
			Regi11:reg generic map (32) port map (write_data,clk,write_ena and tmp1(10),'0','0',reg10);
			Regi12:reg generic map (32) port map (write_data,clk,write_ena and tmp1(11),'0','0',reg11);
			Regi13:reg generic map (32) port map (write_data,clk,write_ena and tmp1(12),'0','0',reg12);
			Regi14:reg generic map (32) port map (write_data,clk,write_ena and tmp1(13),'0','0',reg13);
			Regi15:reg generic map (32) port map (write_data,clk,write_ena and tmp1(14),'0','0',reg14);
			Regi16:reg generic map (32) port map (write_data,clk,write_ena and tmp1(15),'0','0',reg15);
			Regi17:reg generic map (32) port map (write_data,clk,write_ena and tmp1(16),'0','0',reg16);
			Regi18:reg generic map (32) port map (write_data,clk,write_ena and tmp1(17),'0','0',reg17);
			Regi19:reg generic map (32) port map (write_data,clk,write_ena and tmp1(18),'0','0',reg18);
			Regi20:reg generic map (32) port map (write_data,clk,write_ena and tmp1(19),'0','0',reg19);
			Regi21:reg generic map (32) port map (write_data,clk,write_ena and tmp1(20),'0','0',reg20);
			Regi22:reg generic map (32) port map (write_data,clk,write_ena and tmp1(21),'0','0',reg21);
			Regi23:reg generic map (32) port map (write_data,clk,write_ena and tmp1(22),'0','0',reg22);
			Regi24:reg generic map (32) port map (write_data,clk,write_ena and tmp1(23),'0','0',reg23);
			Regi25:reg generic map (32) port map (write_data,clk,write_ena and tmp1(24),'0','0',reg24);
			Regi26:reg generic map (32) port map (write_data,clk,write_ena and tmp1(25),'0','0',reg25);
			Regi27:reg generic map (32) port map (write_data,clk,write_ena and tmp1(26),'0','0',reg26);
			Regi28:reg generic map (32) port map (write_data,clk,write_ena and tmp1(27),'0','0',reg27);
			Regi29:reg generic map (32) port map (write_data,clk,write_ena and tmp1(28),'0','0',reg28);
			Regi30:reg generic map (32) port map (write_data,clk,write_ena and tmp1(29),'0','0',reg29);
			Regi31:reg generic map (32) port map (write_data,clk,write_ena and tmp1(30),'0','0',reg30);
			Regi32:reg generic map (32) port map (write_data,clk,write_ena and tmp1(31),'0','0',reg31);

			dw : decoder port map (write_sel , '1' , tmp1);


mux1 : mux32 port map (reg0,reg1 ,reg2 , reg3 , reg4 ,reg5 ,reg6 ,reg7 ,reg8,reg9 ,reg10 , reg11 , reg12 ,reg13 ,reg14 ,reg15 ,reg16,reg17 ,reg18 , reg19 , reg20 ,reg21 ,reg22 ,reg23 ,reg24,reg25 ,reg26 , reg27 , reg28 ,reg29 ,reg30 ,reg31 ,read_sel1 , data1 );
							
mux2 : mux32 port map (reg0,reg1 ,reg2 , reg3 , reg4 ,reg5 ,reg6 ,reg7 ,reg8,reg9 ,reg10 , reg11 , reg12 ,reg13 ,reg14 ,reg15 ,reg16,reg17 ,reg18 , reg19 , reg20 ,reg21 ,reg22 ,reg23 ,reg24,reg25 ,reg26 , reg27 , reg28 ,reg29 ,reg30 ,reg31 , read_sel2 , data2 );




end Behavioral;

