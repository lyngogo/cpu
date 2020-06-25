LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY REG IS 
generic
(
width: integer := 8; --Data width
depth: integer := 2 --Addr depth
);
PORT (CLK,we:IN STD_LOGIC;
			
        ADDRIN1: IN  STD_LOGIC_VECTOR (depth-1 DOWNTO 0);
		  ADDRIN2: IN  STD_LOGIC_VECTOR (depth-1 DOWNTO 0);
		  WriteAddR: IN  STD_LOGIC_VECTOR (depth-1 DOWNTO 0);
		  writeIn:IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		  reg0:out STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		  reg1:out STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		  reg2:out STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		  reg3:out STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		  DataOut1:OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
        DataOut2:OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0));
		 
        --QB:OUT STD_LOGIC);
END REG;

ARCHITECTURE behav OF REG IS
type RamType is array(  0 to 2 ** depth - 1) of std_logic_vector(width - 1 downto 0);
signal Ram : RamType:=(x"01",x"02",x"03",x"04");


BEGIN 
--ram(0 downto 3)<=(0=>x"01",1=>x"02",2=>x"03",3=>x"04");

PROCESS (CLK)
begin

if clk'event and clk = '1' then
	if we = '1' then
		Ram(conv_integer(WriteAddR)) <= writeIn;
	end if;
	dataOut1 <= Ram(conv_integer(addrIN1));
	dataOut2 <= Ram(conv_integer(addrIN2));
	if ADDrin1="ZZ" or AddRin2="ZZ" then
		dataout1<="ZZZZZZZZ";
		dataout2<="ZZZZZZZZ";
	end if;
	
	
end if;
	reg0<=Ram(0);
	reg1<=Ram(1);
	reg2<=Ram(2);
	reg3<=Ram(3);
end process;
END behav;