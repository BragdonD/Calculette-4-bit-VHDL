library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity result_img is
port(	clk_25		: in std_logic;	--25Mhz clock for 60Hz output frames
		reset			: in std_logic;	
		A, B			: in std_logic_vector(3 downto 0);
		Res			: in std_logic_vector(3 downto 0);
		eror			: in std_logic;
		vs_out		: out std_logic;	--vertical output
		hs_out		: out std_logic;	--horizontal output
		de_out		: out std_logic;	--data enable output (1 is enable else is 0)
		r_out			: out std_logic_vector(7 downto 0);	--red component for a pixel
		g_out			: out std_logic_vector(7 downto 0); --green component for a pixel
		b_out			: out std_logic_vector(7 downto 0));--blue component for a pixel
end result_img;


architecture behavioral of result_img is
	--colors
	constant rgb_font 	: std_logic_vector(23 downto 0) := x"000000";
	constant rgb_letters	: std_logic_vector(23 downto 0) := x"FFFFFF";
	
	--counters for the movement into the frame
	signal h_count		: integer range 0 to 799 := 0;
	signal v_count		: integer range 0 to 524 := 0;
	
	signal vs_1, hs_1, de_1 : std_logic;
	signal vs_2, hs_2, de_2 : std_logic;
	
	signal number 		: std_logic;
	signal int_A, int_B, int_Res : integer;
	signal rgb2 : std_logic_vector(23 downto 0);
	
begin
	--changer position dans la frame
	process(clk_25, v_count, h_count)
	begin
		if(rising_edge(clk_25)) then
			if(reset = '1') then
				h_count <= 0;
				v_count <= 0;
			else
				--passage a la ligne suivante
				if(h_count = 799) then 
					h_count <= 0;
					--passage a la frame suivante
					if(v_count = 524) then 
						v_count <= 0;
					else
						--passage a la ligne suivante
						v_count <= v_count + 1;
					end if;
				else
					--passage a la colonne suivante
					h_count <= h_count + 1;
				end if;
			end if; 	--reset
		end if;		--rising edge
	end process;
	
	int_A <= to_integer(unsigned(A));
	int_B <= to_integer(unsigned(B));
	int_Res <= to_integer(unsigned(Res));
	
	process(clk_25, A, B, v_count, h_count)
		variable d_ope_1, d_ope_2, d_res, u_ope_1, u_ope_2, u_res : integer;
	begin
		if(rising_edge(clk_25)) then
			------------------------------------------------------------------------------------------------ pipeline stage 1
			--generating the sign signal for horizontal
			if( h_count < 96) then 
				hs_1 <= '1';
			else
				hs_1 <= '0';
			end if;
			--generating the sign signal for vertical
			if( v_count < 2) then
				vs_1 <= '1';
			else
				vs_1 <= '0';
			end if;
			--say if the pixel is active
			--here we set the 640 * 480 square to active
			if (( h_count >= 144 ) and ( h_count <  784 ) and ( v_count >=  36 ) and ( v_count <  516 )) then
				de_1 <= '1'; 
			else
				de_1 <= '0'; 
			end if;
			------------------------------------------------------------------------------------------------ pipeline stage 2
			vs_2 <= vs_1;
			hs_2 <= hs_1;
			de_2 <= de_1;
			
			------------------------------------------------------------------------------------------------ Calcul dizaine and unit
			d_ope_1 	:= int_A/10;
			d_ope_2 	:= int_B/10;
			d_res 	:= int_Res/10;
			u_ope_1 	:=	int_A - d_ope_1;
			u_ope_2  :=	int_B - d_ope_2;
			u_res 	:= int_Res - d_res;
			
			-------------------------------------------------------------------------------------------------color of the font
			--bords top and bottom
			if( v_count <= 236 or v_count >= 316) then
				rgb2 <= rgb_font;
			--space bewteen characters
			elsif(h_count >= 0 and h_count <= 5) and
				  (h_count >= 76 and h_count <= 85) and
				  (h_count >= 236 and h_count <= 245) and
				  (h_count >= 316 and h_count <= 325) and
				  (h_count >= 396 and h_count <= 405) and
				  (h_count >= 476 and h_count <= 485) and
				  (h_count >= 556 and h_count <= 565) and
				  (h_count >= 636 and h_count <= 640) then
				rgb2 <= rgb_font;
			--space into the characters
			elsif(((v_count >= 206 and v_count <= 237) or
				  (v_count >= 244 and v_count <= 276))  and 
			  not((h_count >= 0 and h_count <= 5) 		 and
				  (h_count >= 76 and h_count <= 85) 	 and
				  (h_count >= 236 and h_count <= 245) 	 and
				  (h_count >= 316 and h_count <= 325) 	 and
				  (h_count >= 396 and h_count <= 405)   and
				  (h_count >= 476 and h_count <= 485)   and
				  (h_count >= 556 and h_count <= 565)   and
				  (h_count >= 636 and h_count <= 640)))then
				rgb2 <= rgb_font; 
			end if;
			
			--------------------------------------------------------------------------------------------------color of the characters
			--------------------------------------------------------------------------------------------------first caractere
			if(h_count >= 10 and h_count <= 75) then
				--segment haut
				if(v_count >= 205 and v_count <= 211) then
					if(d_ope_1 = 0 or d_ope_1 = 2 or d_ope_1 = 5 or d_ope_1 = 6 or d_ope_1 = 7 or d_ope_1 = 8 or d_ope_1 = 9) then
						rgb2 <= rgb_letters; 
					else
						rgb2 <= rgb_font; 
					end if;
				--elsif(v_count >= 232 and v_count <= 211) then
				end if;
			end if;
			
			
			--------------------------------------------------------------------------------------------------output
			hs_out  <= hs_2;
			vs_out  <= vs_2;
			de_out  <= de_2;
			r_out   <= rgb2(23 downto 16);
			g_out   <= rgb2(15 downto  8);
			b_out   <= rgb2( 7 downto  0);
			
			
		end if;	--rising edge
	end process;
	
			
end behavioral;				
	
	
	

