library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity add4_bit is
port (      A, B : in std_logic_vector(3 downto 0);
            Res   : out std_logic_vector(3 downto 0);
            Cout : out std_logic
      );
end entity;
 
architecture behavioral of add4_bit is
      --Nos signaux temporaires nous permettant de stocker les résultats
      signal UnSignedA, UnSignedB : unsigned(3 downto 0);
      signal IntA, IntB, IntRes : integer;
		signal Restemp : std_logic_vector(4 downto 0);
begin
      --Transformation nécessaire pour ensuite pouvoir
      --transformer les deux nombres en integer
      UnSignedA <= unsigned(A);
      UnSignedB <= unsigned(B);
      
      --transformation des deux nombres en entier
      IntA <= to_integer(UnsignedA);
      IntB <= to_integer(UnsignedB);
      
      --Addition des deux nombres
      IntRes <= IntA + IntB;
      
      --Stockage du résultat sur 5 bits
      ResTemp <= std_logic_vector(to_unsigned(IntRes,5));
      
      --Sortie du résultat
      Cout <= ResTemp(4);     
      Res <= ResTemp(3 downto 0);
end architecture;