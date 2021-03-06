library ieee;
use ieee.std_logic_1164.all;

entity ErorControlMulti is
port( ASigne, BSigne	: in std_logic;
		mode 					: in std_logic;
		ResMulti 			: in std_logic_vector(7 downto 0);
		ResOut 				: out std_logic_vector(3 downto 0);
		erorTotale 			: out std_logic);
end entity;

architecture archi_errorMulti of ErorControlMulti is
	signal TempRes : std_logic_vector(3 downto 0);
	signal tempEror : std_logic;
begin
	process(mode, ResMulti, Asigne,BSigne)
		variable ErorSigne, ErorOverFlow : std_logic;
		variable ResSigne : std_logic;
	begin
		if(mode = '0')then
			ResSigne := ResMulti(3);
			ErorOverFlow := ResMulti(7) or ResMulti(6) or ResMulti(5) or ResMulti(4);
			ErorSigne := '0';
			tempEror <= ErorOverFlow;
		else
			ResSigne := ASigne and BSigne;
			if(ResMulti(4) /= ResMulti(3) or ResMulti(5) /= ResMulti(3) or ResMulti(6) /= ResMulti(3) or ResMulti(7) /= ResMulti(3)) then 
				ErorOverFlow := '1';
			else
				ErorOverFlow := '0';
			end if;
			ErorSigne := ((ResSigne and not(ASigne) and not(BSigne)) or (not(ResSigne) and ASigne and BSigne));
			tempEror <= ErorSigne or (ErorOverFlow and not(ErorSigne));
		end if;
	end process;

	
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