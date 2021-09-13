library ieee;
use ieee.std_logic_1164.all;

entity add_1bit is
	port(	a, b, old_restraint : in std_logic;
			res, new_restraint : out std_logic
			);
end add_1bit;
	
architecture archi_1bit of add_1bit is
begin
	res <= a xor b xor old_restraint;
	new_restraint <= (a and b) or (old_restraint and (a xor b));
end archi_1bit;
	