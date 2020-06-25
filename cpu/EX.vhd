LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY EX IS 
generic
(
width: integer := 8 --Data width
);
PORT (CLK:IN STD_LOGIC;
		opcode:in std_LOGIC_VECTOR(1 downto 0);
			zero:out std_LOGIC;
        DATAIN1: IN  STD_LOGIC_VECTOR(width-1 downto 0);
		  DATAIN2: IN  STD_LOGIC_VECTOR(width-1 downto 0);
        DATAOUT:OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0));
        --QB:OUT STD_LOGIC);
END EX;

ARCHITECTURE behav OF EX IS
BEGIN 

PROCESS (CLK)
BEGIN 
    IF CLK'EVENT AND CLK='1' 
    THEN
      case opcode is
			
			when "00"=>dataout<=datain1+datain2; --加法
			when "01"=>dataout<=datain1-datain2; --减法
			when "10"=>dataout<=datain2 and datain1   ;   --求与        
			when "11"=>dataout<=datain2 or datain2;    --求或
			end case;
			
    END IF; 
   
END PROCESS;
END behav;
