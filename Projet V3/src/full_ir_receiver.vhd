library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity full_ir_receiver is
port(
		A,B : out std_logic_vector(3 downto 0);
		rd_data 				: out std_logic;
		-- clock, data input, and system reset
		clk 					: in std_logic;
		data_in 				: in std_logic;
		reset 				: in std_logic
);
end entity;

architecture behav of full_ir_receiver is
	--old_data1 -> signe
	--old_data2 -> 
	--type state is (signeA, dizA, unitA, signeB, dizB, unitB,equal);
	--signal current_state, next_state : state;
	
	
	signal old_data_1, old_data_2: std_logic_vector(3 downto 0) := (others => '0');
	signal new_data : std_logic_vector(3 downto 0);
	signal temp_rd_data : std_logic;
begin
	irRec : entity work.nec_receiver
		port map
		(
			rd_data => temp_rd_data,
			clk => clk,
			data_in => data_in,
			reset => reset,
			result => new_data
		);
	analyse_data : process(temp_rd_data, reset)
		variable counter : integer := 0;
	begin

			if(reset = '0') then
					old_data_1 <= (others => '0');
					old_data_2 <= (others => '0');
					counter := 0;
				
			elsif(rising_edge(temp_rd_data))then
				if(new_data /= "1111")then
					if(counter = 0)then
						old_data_1 <= new_data;
						counter := counter +1;
					else
						old_data_2 <= new_data;
						counter := counter +1;
					end if;
				end if;			
				
			end if;
	end process analyse_data;
					
					
	decodage : process(old_data_1, old_data_2)
	begin
		A <= old_data_1;
		B <= old_data_2;
	end process decodage;
	
	
	
	rd_data <= temp_rd_data;
end architecture;		

