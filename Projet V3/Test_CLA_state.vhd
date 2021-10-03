library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity CLA is
port( 
		--others input
		clk			:  in std_logic;
		A				:	in std_logic_vector(3 downto 0);
		B				:	in std_logic_vector(3 downto 0);
		reset			:	in std_logic;
		mode			:	in std_logic;
		operation	: 	in	std_logic;
		--sortie CLA
		cout : in std_logic;
		outputCLA : in std_logic_vector(3 downto 0);
		--entree CLA
		OPeACLA : out std_logic_vector(3 downto 0);
		OPeBCLA : out std_logic_vector(3 downto 0);
		
		erorCLA : out std_logic;
		result : out std_logic_vector(3 downto 0)
		
		);

end CLA;

architecture behaviorCLA of CLA is
	signal eror : std_logic;
	signal clk25 : std_logic;
	signal clk12 : std_logic;
begin
	process(clk)
	begin
		if(rising_edge(clk))then
			clk25 <= not(clk25);
		end if;
	end process;
	process(clk25)
	begin
		if(rising_edge(clk25))then
			clk12 <= not(clk12);
		end if;
	end process;
	
	process(clk12,reset, outputCLA)
		variable counter : integer:=0;
		variable old_data : std_logic_vector(3 downto 0):=(others =>'0');
		variable intB, intA : integer:=0;
		variable tempA: std_logic_vector(3 downto 0);
		variable temp : std_logic := '0';
	begin
		if(reset = '1') then
			counter := 0;
			intB := 0;
			intA := 0;
			OPeACLA <= "0000";
			OPeBCLA <= "0000";
			result <= "0000";
			eror <= '0';
			old_data := "0000";
		elsif(rising_edge(clk12))then
			--if(outputCLA /= old_data)then
				old_data := outputCLA;
				case operation is
				when '1' =>
					if(mode = '0')then
						intB := to_integer(unsigned(B));
						intA := to_integer(unsigned(A));
						tempA := std_logic_vector(to_unsigned(intA, 4));
					else
						intB := to_integer(signed(B));
						intA := to_integer(signed(A));
						if(intA<0 and intB<0)then
							intA := -intA;
							tempA := std_logic_vector(to_unsigned(intA, 4));
						else
							tempA := std_logic_vector(to_signed(intA, 4));
						end if;
						if(intB <0)then
							intB := -intB;
						end if;

					end if;
					
					if(counter < intB )then
						if(counter = 0)then
							OPeACLA <= "0000";
							OPeBCLA <= tempA;
							counter := counter + 1;
						else
							if(cout = '1' and mode='0')then
								eror <= '1';
								OPeACLA <= "0000";
								OPeBCLA <= "0000";
								counter := intB + 1;
							elsif(mode = '1' and (Cout = '1' and old_data(3) ='0'))then
								eror <= '1';
								OPeACLA <= "0000";
								OPeBCLA <= "0000";
								counter := intB + 1;
							else
								eror <= '0';
								OPeACLA <= old_data;
								OpeBCLA <= tempA;
								counter := counter + 1;
							end if;
						end if;

					else
						if(eror ='1' or (cout = '1' and mode ='0') or (mode = '1' and (Cout = '1' and old_data(3) ='0')))then
							result <= "0000";
							erorCLA <= '1';
						else
							result <= outputCLA; --std_logic_vector(to_unsigned(counter,4));
							erorCLA <= '0';
						end if;
					end if;
				
				when '0' =>
					OPeACLA <= A;
					OpeBCLA <= B;
					if(cout ='1')then
						result <= "0000";
						erorCLA <= '1';
					else
						result <= old_data ;
						erorCLA <= '0';
					end if;		
				end case;
			--end if;
		end if;
	end process;
			
	
	
		
end behaviorCLA;