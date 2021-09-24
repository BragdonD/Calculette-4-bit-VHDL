library ieee;
use ieee.std_logic_1164.all;

entity ErorControlAdd is
port( ASigned, BSigned, ResSigned, CoutAdd 	: in std_logic;
		erorTotale 										: out std_logic);
end entity;

architecture archi_errorAdd of ErorControlAdd is
	signal ErorSigne, ErorOverFlow : std_logic;
begin
	ErorOverFlow <= CoutAdd;
	ErorSigne <= ((ResSigned and not(ASigned) and not(BSigned)) or (not(ResSigned) and ASigned and BSigned));
	erorTotale <= ErorSigne or (ErorOverFlow and not(ErorSigne));
end archi_errorAdd;