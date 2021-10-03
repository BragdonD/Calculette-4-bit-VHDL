library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multi4bits is
port ( A, B : in std_logic_vector(3 downto 0);
		 mode : in std_logic;	--mode signé --0 pour non/1 pour oui
		 Res : out std_logic_vector(7 downto 0)
		 );
end entity;

architecture archi_multi4bits of multi4bits is
	signal SignedA, SignedB : signed(3 downto 0);
	signal UnSignedA, UnSignedB : unsigned(3 downto 0);
	signal ResTemp : std_logic_vector(7 downto 0);
begin
	SignedA <= signed(A);
	SignedB <= signed(B);
	UnSignedA <= unsigned(A);
	UnSignedB <= unsigned(B); 
	
	--operation en fonction du mode signé
	process(SignedA,SignedB,UnsignedA,UnsignedB, mode)
		variable IntA, IntB, IntRes : integer;
	begin
				IntA := to_integer(UnsignedA);
				IntB := to_integer(UnsignedB);
				IntRes := IntA * IntB;
				ResTemp <= std_logic_vector(to_unsigned(IntRes,8));

	end process;
	
	Res <= ResTemp(7 downto 0);

end archi_multi4bits;
		