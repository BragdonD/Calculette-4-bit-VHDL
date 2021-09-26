library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_ir_receiver is
port(
		A,B : out std_logic_vector(3 downto 0);
		rd_data 				: out std_logic;
		-- clock, data input, and system reset
		clk 					: in std_logic;
		data_in 				: in std_logic;
		reset 				: in std_logic;
		result				: out std_logic_vector(3 downto 0)
);
end entity;

architecture behav of full_ir_receiver is
	--old_data1 -> signe
	--old_data2 -> 
	type state is (signeA, dizA, unitA, signeB, dizB, unitB);
	signal current_state, next_state : state;
	
	
	signal old_data1, old_data2, old_data3 : std_logic_vector(3 downto 0) := "1111";
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
		
	process(new_data, temp_rd_data)
	begin
		if(rising_edge(temp_rd_data)) then
			--old_data <= new_data;
			
			
	rd_data <= temp_rd_data;
end architecture;		

