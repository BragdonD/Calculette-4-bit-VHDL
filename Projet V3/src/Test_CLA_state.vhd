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
begin
	process(A,B,reset,mode,clk)
		variable counter : integer:=0;
		variable intB : integer;
	begin
		if(reset = '1') then
			counter := 0;
		elsif(rising_edge(clk))then
			case operation is
			when '1' =>
				case mode is 
				when '0' =>
					intB := to_integer(signed(B));
					if(intB<0)then
						intB := - intB;
					end if;					
				when '1' => 
					intB := to_integer(unsigned(B));
				end case;
				if(counter < intB)then
					if(counter = 0)then
						OPeACLA <= A;
						OPeBCLA <= "0000";
					else
						if(cout = '1')then
							eror <= '1';
							OPeACLA <= "0000";
							OPeBCLA <= "0000";
						else
							OPeACLA <= outputCLA;
							OpeBCLA <= A;
						end if;
					end if;
				else
					if(eror ='1')then
						result <= "0000";
						erorCLA <= '1';
					else
						result <= outputCLA;
						erorCLA <= '1';
					end if;
				end if;
			when '0' =>
				OPeACLA <= A;
				OpeBCLA <= B;
				if(eror ='1')then
					result <= "0000";
					erorCLA <= '1';
				else
					result <= outputCLA;
					erorCLA <= '1';
				end if;		
			end case;
		end if;
	end process;
			
	
	
		
end behaviorCLA;