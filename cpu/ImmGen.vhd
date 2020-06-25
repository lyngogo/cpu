LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY ImmGen IS 
PORT (CLK:IN STD_LOGIC;
        immIN: IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
        immOUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
        --QB:OUT STD_LOGIC);
END ImmGen;

ARCHITECTURE behav OF ImmGen IS
BEGIN 

PROCESS (CLK)
    VARIABLE p:STD_LOGIC_VECTOR (5 DOWNTO 0);
	 VARIABLE n:STD_LOGIC_VECTOR (5 DOWNTO 0);
BEGIN 
    IF CLK'EVENT AND CLK='1' then
		if immIN(1) = '1' then             --这个位置不知道错没错
			immOUT<=n&immIN;
		else
			immOUT<=p&immIN;
		end if;
    END IF; 
   
END PROCESS;
END behav;
