LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY rg IS 
PORT (CLK:IN STD_LOGIC;
        DATAIN: IN  STD_LOGIC_VECTOR(7 downto 0);
        DATAOUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
        --QB:OUT STD_LOGIC);
END rg;

ARCHITECTURE behav OF rg IS
BEGIN 

PROCESS (CLK)

BEGIN 
    IF CLK'EVENT AND CLK='1' 
    THEN

              dataout<=datain;
    END IF; 
   
END PROCESS;
END behav;