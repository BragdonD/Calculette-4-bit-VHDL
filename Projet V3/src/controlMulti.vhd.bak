library ieee;
use ieee.std_logic_1164.all;

entity ErorControlMulti is
port( ASigned, BSigned 	: in std_logic;
		ResMulti 			: in std_logic_vector(7 downto 0);
		ResOut 				: out std_logic_vector(3 downto 0);
		erorTotale 			: out std_logic);
end entity;

architecture archi_errorMulti of ErorControlMulti is
	signal ErorSigne, ErorOverFlow : std_logic;
	signal ResSigned : std_logic;
	signal TempRes : std_logic_vector(3 downto 0);
	signal tempEror : std_logic;
begin
	ResSigned <= ResMulti(3);
	ErorOverFlow <= ResMulti(7) or ResMulti(6) or ResMulti(5) or ResMulti(4);
	ErorSigne <= ((ResSigned and not(ASigned) and not(BSigned)) or (not(ResSigned) and ASigned and BSigned));
	tempEror <= ErorSigne or (ErorOverFlow and not(ErorSigne));
	
	process(tempEror, ResMulti)
		variable i : integer range 0 to 4;
	begin
		i := 0;
		while i< 4 loop
			TempRes(i) <= not(tempEror) and ResMulti(i);
			i:= i + 1;
		end loop;
	end process;
		
	erorTotale <= tempEror;
	ResOut <= TempRes;
	
end archi_errorMulti;