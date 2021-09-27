library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.all;

entity full_ir_receiver is
port(
		A,B : out std_logic_vector(3 downto 0);
		rd_data 				: out std_logic;
		-- clock, data input, and system reset
		clk 					: in std_logic;
		data_in 				: in std_logic;
		reset 				: in std_logic;
		mode					: in std_logic;
		HEX0					: out std_logic_vector(6 downto 0);
		HEX1					: out std_logic_vector(6 downto 0);
		HEX2					: out std_logic_vector(6 downto 0);
		HEX3					: out std_logic_vector(6 downto 0);
		HEX4					: out std_logic_vector(6 downto 0);
		HEX5					: out std_logic_vector(6 downto 0)
);
end entity;

architecture behav of full_ir_receiver is
	--old_data1 -> signe
	--old_data2 -> 
	--type state is (signeA, dizA, unitA, signeB, dizB, unitB,equal);
	--signal current_state, next_state : state;
	
	
	signal old_data_1, old_data_2, old_data_3, old_data_4, old_data_5, old_data_6: std_logic_vector(3 downto 0);
	signal new_data : std_logic_vector(3 downto 0);
	signal temp_rd_data : std_logic;
	signal enable : std_logic;
begin
	irRec : entity work.nec_receiver
		port map
		(
			rd_data => temp_rd_data,
			clk => clk,
			data_in => data_in,
			reset => reset,
			enable => enable,
			result => new_data
		);
	analyse_data : process(clk, reset, new_data, enable,mode)
		variable counter : integer range 0 to 6:= 0;
		variable intA, intB, dizA, dizB, unitA, unitB : integer;
	begin
			if(reset = '0') then
					old_data_1 <= (others => '0');
					old_data_2 <= (others => '0');
					old_data_3 <= (others => '0');
					old_data_4 <= (others => '0');
					old_data_5 <= (others => '0');
					old_data_6 <= (others => '0');
					intA :=0;
					intB:=0;
					dizA:=0;
					dizB:=0;
					unitA:=0;
					unitB:=0;
					A <= "0000";
					B <= "0000";
					counter := 0;
			elsif(rising_edge(clk))then
				if(enable = '1')then
					if(new_data /= "1111")then
						case counter is
						when 0 =>
							if(new_data = "1010" or new_data = "1011")then
								old_data_1 <= new_data;
								counter := counter +1;
							elsif(new_data /= "1111")then
								old_data_1 <= "1011";
								old_data_2 <= new_data;
								counter := counter + 2;
							end if;
								
						when 1 =>
							old_data_2 <= new_data;
							counter := counter +1;
						when 2 =>
							if(new_data = "1010" or new_data = "1011")then
								old_data_3 <= old_data_2;
								old_data_2 <= "0000";
								old_data_4 <= new_data;
								counter := counter +2;
							else
								old_data_3 <= new_data;
								counter := counter +1;
							end if;
						when 3 =>
							if(new_data = "1010" or new_data = "1011")then
								old_data_4 <= new_data;
								counter := counter +1;
							end if;
						when 4 =>
							old_data_5 <= new_data;
							counter := counter +1;
						when 5 =>
							if(new_data = "1100")then
								old_data_6 <= old_data_5;
								old_data_5 <= "0000";
								counter := counter + 1;
							else
								old_data_6 <= new_data;
								counter := counter + 1;
							end if;
						when others =>
							counter := 6;
							if(mode = '1')then
								--nb A
								if(old_data_1 = "1010")then
									dizA := to_integer(unsigned(old_data_2)) *10 ;
									unitA := to_integer(unsigned(old_data_3));
									intA := - (dizA + unitA);
									if(intA>7 or intA<-8)then
										A <= "0000";
									else
										A <= std_logic_vector(to_signed(intA, 4));
									end if;
								else
									dizA := to_integer(unsigned(old_data_2)) *10 ;
									unitA := to_integer(unsigned(old_data_3));
									intA := (dizA + unitA);
									if(intA>7 or intA<-8)then
										A <= "0000";
									else
										A <= std_logic_vector(to_signed(intA, 4));
									end if;
								end if;
								--nb B
								if(old_data_4 = "1010")then
									dizB := to_integer(unsigned(old_data_5)) *10 ;
									unitB := to_integer(unsigned(old_data_6));
									intB := - (dizB + unitB);
									if(intB>7 or intB<-8)then
										B <= "0000";
									else
										B <= std_logic_vector(to_signed(intB, 4));
									end if;
								else
									dizB := to_integer(unsigned(old_data_5)) *10 ;
									unitB := to_integer(unsigned(old_data_6));
									intB := (dizB + unitB);
									if(intB>7 or intB<-8)then
										B <= "0000";
									else
										B <= std_logic_vector(to_signed(intB, 4));
									end if;
								end if;
							else
								dizA := to_integer(unsigned(old_data_2)) *10 ;
								unitA := to_integer(unsigned(old_data_3));
								intA := (dizA + unitA);
								if(intA>15 or intA<0)then
									A <= "0000";
								else
									A <= std_logic_vector(to_unsigned(intA, 4));
								end if;
								
								dizB := to_integer(unsigned(old_data_5)) *10 ;
								unitB := to_integer(unsigned(old_data_6));
								intB := (dizB + unitB);
								if(intB>15 or intB<0)then
									B <= "0000";
								else
									B <= std_logic_vector(to_unsigned(intB, 4));
								end if;
							end if;
								
						end case;
					end if;
				end if;						
			end if;
	end process analyse_data;
					
					
	hex00 : entity work.seg7
	port map(number => old_data_1,leds => HEX5);
	
	hex01 : entity work.seg7
	port map(number => old_data_2,leds => HEX4);
	
	hex02 : entity work.seg7
	port map(number => old_data_3,leds => HEX3);
	
	hex03 : entity work.seg7
	port map(number => old_data_4,leds => HEX2);
	
	hex04 : entity work.seg7
	port map(number => old_data_5,leds => HEX1);
	
	hex05 : entity work.seg7
	port map(number => old_data_6,leds => HEX0);
	
	rd_data <= temp_rd_data;
end architecture;		

