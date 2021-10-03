library ieee;
use ieee.std_logic_1164.all;

entity choix_display is
	port( ResAdd, ResCLA, ResMulti : in std_logic_vector(3 downto 0);
			mode, CLA, Reset,operation : in std_logic;
			Resultat : out std_logic_vector(3 downto 0);
			ModesOut : out std_logic_vector(3 downto 0)
); end;

architecture archi_choix_display of choix_display is
	signal ResTemp : std_logic_vector(3 downto 0);
	signal sel: std_logic_vector(2 downto 0);
begin
	sel(2) <= operation;
	sel(1) <= CLA;
	sel(0) <= Reset;
	
	ModesOut(2 downto 0) <= sel;
	ModesOut(3) <= mode;
	
	process(ResAdd, ResCLA, ResMulti,sel)
	begin
		case sel is 
			when "000" => Resultat <= ResAdd; --Addition
			when "001" => Resultat <= "0000";
			when "010" => Resultat <= ResCLA;
			when "011" => Resultat <= "0000";
			when "100" => Resultat <= ResMulti;
			when "101" => Resultat <= "0000";
			when "110" => Resultat <= ResCLA;
			when "111" => Resultat <= "0000";
			when others => Resultat <= "0000";
		end case;
	end process;
end archi_choix_display;
		