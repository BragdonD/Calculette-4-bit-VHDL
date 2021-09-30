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

	
	process(clk,reset)
		variable counter : integer:=0;
		variable old_data : std_logic_vector(3 downto 0):=(others =>'0');
		variable intB : integer:=0;
		variable temp : std_logic := '0';
	begin
		if(reset = '1') then
			counter := 0;
			intB := 0;
			OPeACLA <= "0000";
			OPeBCLA <= "0000";
			result <= "0000";
			eror <= '0';
			old_data := "0000";
		elsif(rising_edge(clk))then
			--if(outputCLA /= old_data)then
				old_data := outputCLA;
				case operation is
				when '1' =>
					
					intB := to_integer(unsigned(B));
					
					if(counter <= intB )then
						if(counter = 0)then
							OPeACLA <= "0000";
							OPeBCLA <= A;
							counter := counter + 1;
						else
							if(cout = '1')then
								eror <= '1';
								OPeACLA <= "0000";
								OPeBCLA <= "0000";
								counter := 2 + 1;
							else
								eror <= '0';
								OPeACLA <= old_data;
								OpeBCLA <= A;
								counter := counter + 1;
							end if;
						end if;

					else
						if(eror ='1')then
							result <= "0000";
							erorCLA <= '1';
						else
							result <= old_data;
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