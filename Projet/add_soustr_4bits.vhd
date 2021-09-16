library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity add_soustr_4bits is
	port(	in_A, in_B : std_logic_vector(3 downto 0); 	--Les deux composantes d'entrées sur 4 bits
			operation : in std_logic; 							--Entrée permettant de savoir si il s'agit d'une addition ou d'une soustraction
			output : out std_logic_vector(3 downto 0);	--Sortie permettant de savoir la valeur du nombre
			out_signs : out std_logic 							--Sortie permettant de connaitre le signe du nombre de sortie
		);
end;

--operation = 1 -> soustraction
--operation = 0 -> addition

architecture archi_add_soustr_4bits of add_soustr_4bits is
	signal new_B_input: std_logic_vector(3 downto 0);
	signal temp: std_logic;
begin
	--ici on fait le complement à deux de b si m est
	process(in_B)
		variable i: integer;
	begin
		i:= 0;
		while i<4 loop
			new_B_input(i) <= operation xor in_B(i);
			i:= i+1;
		end loop;
	end process;
	
	add0: entity work.add_4bit(archi_4bits)
		port map
		(
			-- inputs add_4bits
			a => in_A,
			b => new_B_input,
			output => output,
			in_restraint => operation,
			-- output add_4bits
			out_restraint => temp
		);
		-- Ici on reinverse le signe de notre opération car quand temp vaut 0 on a un nombre négatif et inversement
		-- or ceci est contraire au principe des nombres binaires
		out_signs <= not(temp);	
end archi_add_soustr_4bits;
