library ieee;
use ieee.std_logic_1164.all;

entity Mux3vers1 is
	port( IN0,IN1,IN2 : in std_logic;
			SEL0, SEL1 : in std_logic;
			OUTPUT : out std_logic
); end;

architecture archi_Mux3vers1 of Mux3vers1 is
	signal SEL : std_logic_vector(1 downto 0);
begin
	SEL(1) <= SEL0;
	SEL(0) <= SEL1;
	process(IN0,IN1,IN2,SEL)
	begin
		case sel is
			when "00" => OUTPUT <= IN0;
			when "01" => OUTPUT <= IN1;
			when "10" => OUTPUT <= IN2;
			when "11" => OUTPUT <= IN2;
			when others => OUTPUT <= '0';
		end case;		
	end process;
end archi_Mux3vers1;