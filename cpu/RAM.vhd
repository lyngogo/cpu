LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY RAM IS 
generic
(
width: integer := 8; --Data width
depth: integer := 2 ;--Addr depth
mode:integer:=0
);
PORT (CLK,cs,we:IN STD_LOGIC;
			re:in std_LOGIC;
        ADDRIN: IN  STD_LOGIC_VECTOR (width-1 DOWNTO 0);
		  DataIn:IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		  mem0:out std_LOGIC_VECTOR(width-1 DOWNTO 0);
		  mem1:out std_LOGIC_VECTOR(width-1 DOWNTO 0);
		  mem2:out std_LOGIC_VECTOR(width-1 DOWNTO 0);
		  mem3:out std_LOGIC_VECTOR(width-1 DOWNTO 0);
		  mem4:out std_LOGIC_VECTOR(width-1 DOWNTO 0);
        DataOut:OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0));
		  
        --QB:OUT STD_LOGIC);
END RAM;

ARCHITECTURE behav OF RAM IS
type RamType is array(2 ** depth - 1 downto 0) of std_logic_vector(width - 1 downto 0);
--加法   1000
--减法   1100
--ld   0010
--
--sd  0100
--jump  1010
--jump_neg  0101
--halt   0000
signal Ram : RamType;
BEGIN 
--Ram(0)<="01001100";         -- 内存3 -> 寄存器0 
--Ram(0)<="01001001";
--Ram(0)<="01000110";
--Ram(0)<="01000111";        -- 内存0 -> 寄存器3 

PROCESS (CLK) 
begin

if clk'event and clk = '1' then

	if cs = '0' then
		if we = '1' then
			Ram(conv_integer(addRIN)) <= dataIn;
			
		else
			if re='1' then
				dataOut <= Ram(conv_integer(addrIN));
				else dataout<="ZZZZZZZZ";
				end if;
		end if;
	end if;
	if ADDRIN="ZZZZZZZZ" then
	dataout<="ZZZZZZZZ";
	end if;

end if;
mem0<=Ram(0);
mem1<=Ram(1);
mem2<=Ram(2);
mem3<=Ram(3);
mem4<=Ram(4);
end process;
END behav;
