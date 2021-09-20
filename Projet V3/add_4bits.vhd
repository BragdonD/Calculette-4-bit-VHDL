library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add4bits is
port ( A, B : in std_logic_vector(3 downto 0);
		 mode : in std_logic;	--mode signé --0 pour non/1 pour oui
		 Res : out std_logic_vector(3 downto 0);
		 Cout : out std_logic);
end entity;

architecture archi_add4bits of add4bits is
	signal SignedA, SignedB : signed(3 downto 0);
	signal UnSignedA, UnSignedB : unsigned(3 downto 0);
	signal ResTemp : std_logic_vector(4 downto 0);
begin
	SignedA <= signed(A);
	SignedB <= signed(B);
	UnSignedA <= unsigned(A);
	UnSignedB <= unsigned(B); 
	
	--operation en fonction du mode signé
	process(SignedA,SignedB,UnsignedA,UnsignedB)
		variable IntA, IntB, IntRes : integer;
	begin
		case mode is
			when '0' =>
				IntA := to_integer(UnsignedA);
				IntB := to_integer(UnsignedB);
				IntRes := IntA + IntB;
				ResTemp <= std_logic_vector(to_unsigned(IntRes,5));
			when '1' => 
				IntA := to_integer(SignedA);
				IntB := to_integer(SignedB);
				IntRes := IntA + IntB;
				ResTemp <= std_logic_vector(to_signed(IntRes,5));
			when others => ResTemp <= "00000";
		end case;
	end process;
	
	Res <= ResTemp(3 downto 0);
	Cout <= ResTemp(4);
end archi_add4bits;
		
	
		
	
			
			
			
		
	
	