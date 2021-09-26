library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity CLA is
port( 
		--others input
		clk			:  in 	std_logic;
		A				:	in 	std_logic_vector(3 downto 0);
		B				:	in 	std_logic_vector(3 downto 0);
		reset			:	in 	std_logic;
		mode			:	in 	std_logic;
		cinCLA		:	out 	std_logic;
		resCLA		: 	in 	std_logic_vector(3 downto 0);
		coutCLA		: 	in		std_logic;
		operation	: 	in 	std_logic;
		opeACLA		: 	out 	std_logic_vector(3 downto 0);
		opeBCLA		: 	out 	std_logic_vector(3 downto 0);
		result		: 	out 	std_logic_vector(3 downto 0);
		eror			: 	out 	std_logic;
		ope_out		: 	out	std_logic);

end CLA;

architecture behaviorCLA of CLA is
	
	signal ope1, ope2	: std_logic_vector(3 downto 0);
	signal temp1,temp2,temp3,temp4 : std_logic_vector(6 downto 0);

	
begin
	
	process(A,B)
		variable i : integer;
	begin
		i := 0;
		while i<4 loop
			temp1(i) <= A(i) and B(0);
			i := i +1;
		end loop; 
		temp1(6 downto 4) <="000";
		
		i := 1;
		while i<5 loop
			temp2(i) <= A(i-1) and B(1);
			i := i +1;
		end loop; 
		temp2(6 downto 5) <="00";
		temp2(0 downto 0) <="0";
		
		i := 2;
		while i<6 loop
			temp3(i) <= A(i-2) and B(2);
			i := i +1;
		end loop;
		temp3(6 downto 6) <="0";
		temp3(1 downto 0) <="00";
		
		i := 3;
		while i<7 loop
			temp4(i) <= A(i-3) and B(3);
			i := i +1;
		end loop; 

		temp4(2 downto 0) <="000";
		
	end process;
	
	process(temp1,temp2,temp3,temp4)
		variable res1_2, res3_4 : integer;
	begin
		res1_2 := to_integer(unsigned(temp1)) + to_integer(unsigned(temp2));
		res3_4 := to_integer(unsigned(temp3)) + to_integer(unsigned(temp4));
		ope1 <= std_logic_vector(to_unsigned(res1_2, 4));
		ope2 <= std_logic_vector(to_unsigned(res3_4, 4));
	end process;
	
	process(operation, ope1, ope2, A, B)
	begin
		if(operation='1')then
			opeACLA <= ope1;
			opeBCLA <= ope2;
			cinCLA <= '0';
		else
			opeACLA <= A;
			opeBCLA <= B;
			cinCLA <= '0';
		end if;
	end process;
	
	process(resCLA, coutCLA, operation, mode, A, B, temp4, temp3, temp2, temp1)
		variable i : integer;
		variable transition : std_logic_vector(3 downto 0);
		variable temperor : std_logic;
		variable ErorMulti : std_logic;
	begin
		if(operation='1')then
			--transition(4) := COutCLA;
			transition(3 downto 0) := resCLA;
			if(mode = '1')then
				if((to_integer(signed(A)) * to_integer(signed(B)))>= -8 and
					(to_integer(signed(A)) * to_integer(signed(B)))<= 8)then
					ErorMulti := '0';
				else
					ErorMulti := '1';
				end if;
				
				if((to_integer(signed(transition))) >= (-8) and (to_integer(signed(transition)) <= 8) and ErorMulti = '0')then
					temperor := '0';
				else
					temperor := '1';
				end if;
			else
				if((to_integer(unsigned(A)) * to_integer(unsigned(B)))>=0 and
					(to_integer(unsigned(A)) * to_integer(unsigned(B)))<=15)then
					ErorMulti := '0';
				else
					ErorMulti := '1';
				end if;
				if((to_integer(unsigned(transition))>=0) and (to_integer(unsigned(transition))<=15) and ErorMulti = '0')then
					temperor := '0';
				else
					temperor := '1';
				end if;
			end if;
			i:= 0;
			while i<4 loop
				result(i) <= transition(i) and not(temperor);
				i:= i+1;
			end loop;
			eror <= temperor;
			
		else
			if(mode='1' and ((A(3)/= B(3)) or (ResCLA(3) = '1' and CoutCLA = '1')))then
				eror <= '0';
			else
				eror <= coutCLA;
			end if;
			
			i := 0;
			while i<4 loop
				if(mode='1' and ((A(3)/= B(3)) or (ResCLA(3) = '1' and CoutCLA = '1')))then
					result(i) <= ResCLA(i);
				else
					result(i) <= ResCLA(i) and not(coutCLA);
				end if;
				i := i + 1;
			end loop;
		end if;
	end process;
	ope_out <= operation;
	
		
end behaviorCLA;