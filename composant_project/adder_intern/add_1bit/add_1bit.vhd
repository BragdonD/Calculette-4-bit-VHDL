library ieee;
use ieee.std_logic_1164.all;
 
entity add1_bit is
port (      A,B,Cin     :     in    std_logic;
            S,Cout      :     out   std_logic
      );
end entity;
 
architecture behavioral of add1_bit is
begin
      S <= A xor B xor Cin;
      Cout <= (Cin and (B and A)) or (A and B);
end architecture;