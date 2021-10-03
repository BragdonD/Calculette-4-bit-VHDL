library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity buzzer is 
	port 
	(
		mode 	: in std_logic;
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
	signal clock_neg : std_logic;
begin
	process(clock)
	begin
		if rising_edge(clock) then
			clock_2 <= not(clock_2);
		end if;
	end process;
	
	process(clock_2, res, mode)
		variable timer : integer := 0;
		variable timerSign : integer := 0;
		variable enableSign : std_logic :='0';
		variable intRes : integer;
	begin
		if reset = '1' then
			cpt <= 0;
			old_var <= '0';
			enableSign := '0';
			timerSign := 0;
			timer := 0;
			var <= '0';
			intRes := 0;
		elsif rising_edge (clock_2) then
			if(mode = '1')then
				intRes := to_integer(signed(res));
				if(intRes<0)then
					intRes := (- intRes)+1;
				end if;
				if(to_integer(signed(res))<0 and timerSign<50000000)then
					enableSign := '1';
				else
					enableSign := '0';
				end if;
			else
				intRes := to_integer(unsigned(res));
			end if;
			if(timerSign < 100000000 and enableSign = '1') then
				var <= '1';
				timerSign := timerSign + 1;
			elsif(timerSign >= 100000000 and timerSign < 200000000 and enableSign = '1') then
				var <= '0';
				timerSign := timerSign + 1;
				old_var <= '0';
			elsif cpt < intRes then
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