library ieee;
use ieee.std_logic_1164.all;

entity ErorControlAdd is
port( ASigne, BSigne, ResSigne, CoutAdd 	: in std_logic;
		mode : in std_logic;
		erorTotale 										: out std_logic);
end entity;

architecture archi_errorAdd of ErorControlAdd is
	signal ErorSigne, ErorOverFlow : std_logic;
begin
	process(mode, ASigne, BSigne, ResSigne, CoutAdd)
	begin
		ErorOverFlow <= CoutAdd;
		if(mode = '1')then
			ErorSigne <= ((ResSigne and not(ASigne) and not(BSigne)) or (not(ResSigne) and ASigne and BSigne));
			erorTotale <= ErorSigne or (ErorOverFlow and not(ErorSigne));
		else
			erorTotale <= ErorOverFlow;
		end if;
	end process;
end archi_errorAdd;