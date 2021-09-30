library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity buzzer is 
	port 
	(
		clock : in std_logic;
		var	: out std_logic;
		reset : in std_logic;
		res 	: in std_logic_vector(3 downto 0)
	);
end buzzer;


architecture Behavioral of buzzer is
	signal cpt 		: integer := 0;
	signal old_var : std_logic;
	signal clock_2 : std_logic := '0';
begin
	process(clock)
	begin
		if rising_edge(clock) then
			clock_2 <= not(clock_2);
		end if;
	end process;
	
	process(clock_2)
		variable timer : integer := 0;
	begin
		if reset = '1' then
			cpt <= 0;
			old_var <= '0';
		elsif rising_edge (clock_2) then
			if cpt < to_integer(unsigned(res)) then
				if timer < 10000000 then
					
					timer := timer + 1;
					if old_var = '0' then
						var <= '1';
					else 
						var <= '0';
					end if;
					
				elsif timer = 10000000	then
					if(old_var = '1') then
						cpt <= cpt + 1;
					end if;
					timer := 0;
					old_var <= not(old_var);
				end if;
				
			else 
				var <= '0';
			end if;
		end if;		
	end process;
end Behavioral;