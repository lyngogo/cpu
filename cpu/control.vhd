LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY control IS 
generic
(
mode: integer := 0 --不同级不同control
);
PORT (CLK:IN STD_LOGIC;
		instruction:IN STD_LOGIC_VECTOR(3 downto 0);
		outinstruction:out STD_LOGIC_VECTOR(3 downto 0);
        Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite: out  STD_LOGIC;
		  ALop:out std_LOGIC_VECTOR(1 downto 0)
);
        --QB:OUT STD_LOGIC);
END control;
--加法   1000
--减法   1100
--ld   0010

--sd  0100
--jump  1010
--jump_neg  0101
--halt   0000
ARCHITECTURE behav OF control IS   -- ALU  00 加法  01 减法    10 与 11 或
BEGIN 

PROCESS (CLK)
    VARIABLE REG8:STD_LOGIC_VECTOR (1 DOWNTO 0);
	  VARIABLE flag:STD_LOGIC ;
BEGIN 
    IF CLK'EVENT AND CLK='1' 
    THEN
		outinstruction<=instruction;
	 case mode is      -- 0 IFID   1 IDEX   2 EXME   3 MEWB      note,只管分内的事，不要在自己的工作岗位上修改其他人的值            目前来看，只需1个mode即可，但是为了以后可能修改，就先这样
		when 0=> case instruction is 
						when "1000"=>aluSrc<='0';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='Z';
						when "1100"=>aluSrc<='0';
										ALop<="01";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='Z';
						when "0010"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='1';
										memWrite<='0';
										memtoReg<='1';
										Branch<='0';
						when "0001"=>null;
						when "0100"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='0';
						when "1010"=>null;
						when "0101"=>null;
						when "0000"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='0';
						when others=>null;
					end case;
		when 1=>case instruction is 
						when "1000"=>aluSrc<='0';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='Z';
						when "1100"=>aluSrc<='0';
										ALop<="01";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='Z';
						when "0010"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='1';
										memWrite<='0';
										memtoReg<='1';
										Branch<='0';
						when "0001"=>null;
						when "0100"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='0';
						when "1010"=>null;
						when "0101"=>null;
						when "0000"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='0';
						when others=>null;
					end case;
		when 2=>case instruction is 
						when "1000"=>aluSrc<='0';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='Z';
						when "1100"=>aluSrc<='0';
										ALop<="01";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='Z';
						when "0010"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='1';
										memWrite<='0';
										memtoReg<='1';
										Branch<='0';
						when "0001"=>null;
						when "0100"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='1';
										memtoReg<='0';
										Branch<='0';
						when "1010"=>null;
						when "0101"=>null;
						when "0000"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='0';
						when others=>null;
					end case;
		when 3=>case instruction is 
						when "1000"=>aluSrc<='0';
										ALop<="00";
										regWrite<='1';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='Z';
						when "1100"=>aluSrc<='0';
										ALop<="01";
										regWrite<='1';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='Z';
						when "0010"=>aluSrc<='1';
										ALop<="00";
										regWrite<='1';
										memRead<='1';
										memWrite<='0';
										memtoReg<='1';
										Branch<='0';
						when "0001"=>null;
						when "0100"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='1';
										memtoReg<='0';
										Branch<='0';
						when "1010"=>null;
						when "0101"=>null;
						when "0000"=>aluSrc<='1';
										ALop<="00";
										regWrite<='0';
										memRead<='0';
										memWrite<='0';
										memtoReg<='0';
										Branch<='0';
						when others=>null;
					end case;
		when others=> null;
		end case;
    END IF; 
   
END PROCESS;
END behav;
