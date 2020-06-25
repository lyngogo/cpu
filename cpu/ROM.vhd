LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY ROM IS 
generic
(
width: integer := 8; --Data width
depth: integer := 8 ;--Addr depth
mode:integer:=0
);
PORT (CLK,cs,we:IN STD_LOGIC;
			re:in std_LOGIC;
        ADDRIN: IN  STD_LOGIC_VECTOR (depth-1 DOWNTO 0);
		  DataIn:IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
        DataOut:OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0));
        --QB:OUT STD_LOGIC);
END ROM;

ARCHITECTURE behav OF ROM IS
type RamType is array(2 ** depth - 1 downto 0) of std_logic_vector(width - 1 downto 0);
--加法   1000
--减法   1100
--ld   0010

--sd  0100
--jump  1010   还没写
--jump_neg  0101  还没写
--halt   0000  nop
signal Ram : RamType;--:=(0=>"01001100",1=>"01001001",2=>"01000110",3=>"01000111");
BEGIN 
Ram(0)<="01001100";         -- 内存3 <- 寄存器0   sd x3 x0
Ram(1)<="01001001";
Ram(2)<="01000110";
Ram(3)<="01000011";        -- 内存0 <- 寄存器3 
ram(4)<="10000110" ;      --add x2 x1 x2  
ram(5)<="11000011";           --sub x3 x0 x3
ram(6)<="00101110";    -- ld x2 xA3
Ram(8)<="00000000";
PROCESS (CLK) 
begin

if clk'event and clk = '1' then
	if cs = '0' then
		if we = '1' then
			--Ram(conv_integer(addRIN)) <= dataIn;
		else
			if re='1' then
				dataOut <= Ram(conv_integer(addrIN));
				else dataout<="ZZZZZZZZ";
				end if;
		end if; 
	end if;
end if;
end process;
END behav;
