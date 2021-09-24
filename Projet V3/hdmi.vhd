library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity result_img is
port(	clk_25		: in std_logic;	--25Mhz clock for 60Hz output frames
		reset			: in std_logic;
		mode			: in std_logic;
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
	
	constant rgb_letters	: std_logic_vector(23 downto 0) := x"A0D0F0";
	
	--counters for the movement into the frame
	signal h_count		: integer range 0 to 799 := 0;
	signal v_count		: integer range 0 to 524 := 0;
	
	signal vs_1, hs_1, de_1 : std_logic;
	signal vs_2, hs_2, de_2 : std_logic;

	signal rgb2 : std_logic_vector(23 downto 0);
	
begin
	--changer position dans la frame
	process
	begin
		wait until rising_edge(clk_25);
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
	end process;
	
	
	process
		variable d_res, u_res : integer;
		variable temp, int_res : integer;
	begin
		wait until rising_edge(clk_25);
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
			if(mode='0') then
					int_Res := to_integer(unsigned(Res));
			else
					int_Res := to_integer(signed(Res));
			end if;
			d_res 	:= int_Res/10;
			if(int_Res < 0) then
				u_res 	:= - (int_Res - d_res*10);
			else
				u_res 	:= int_Res - d_res*10;
			end if;
			-------------------------------------------------------------------------------------------------color of the font
			if(de_1 = '0') then
				rgb2 <= x"000000";
			else 
								--bords top and bottom
				if( v_count <= 136 or v_count >= 436) then
					rgb2 <= rgb_letters;
				else
					if(h_count>=144 and h_count<149) then
						rgb2 <= rgb_letters;
					elsif(h_count>149 and h_count<299) then
						if(v_count>271 and v_count<301) or (v_count>406 and v_count<436) then
							rgb2 <= x"DD6755";
						else
							rgb2 <= rgb_letters;
						end if;
						
					elsif(h_count>=299 and h_count<309) then
						rgb2 <= rgb_letters;
					elsif(h_count>=309 and h_count<459) then
						if(v_count>271 and v_count<301 and (mode='1' and int_res<0))then
							rgb2 <= x"DD6755";
						else
							rgb2 <= rgb_letters;
						end if;
					elsif(h_count>=459 and h_count<469) then
						rgb2 <= rgb_letters;
					elsif(h_count>=469 and h_count<619) then
						if(v_count>136 and v_count<166 and (d_res = 2 or d_res = 3 or d_res = 5 or d_res = 6 or d_res = 7 or d_res = 8 or d_res = 9 or eror='1')) or 
						(v_count>271 and v_count<301 and (d_res = 2 or d_res = 3 or d_res = 4 or d_res = 5 or d_res = 6 or d_res = 8 or d_res = 9 or eror='1')) or 
						(v_count>406 and v_count<436 and ( d_res = 2 or d_res = 3 or d_res = 5 or d_res = 6 or d_res = 8 or d_res = 9 or eror='1')) or
						(h_count>=469 and h_count<499 and (d_res = 4 or d_res = 5 or d_res = 6 or d_res = 8 or d_res = 9 or eror='1') and v_count>136 and v_count<301) or 
						(h_count>=469 and h_count<499 and (d_res = 2 or d_res = 6 or d_res = 8 or eror='1') and v_count>276 and v_count<436) or
						(h_count>=589 and h_count<619 and (d_res = 1 or d_res = 2 or d_res = 3 or d_res = 4 or d_res = 7 or d_res = 8 or d_res = 9) and eror ='0' and v_count>136 and v_count<301) or
						(h_count>=589 and h_count<619 and (d_res = 1 or d_res = 3 or d_res = 4 or d_res = 5 or d_res = 6 or d_res = 7 or d_res = 8 or d_res = 9 ) and eror='0' and v_count>276 and v_count<436)
						then
							rgb2 <= x"DD6755";
						else
							rgb2 <= rgb_letters;
						end if;
					elsif(h_count>=624 and h_count<629) then
						rgb2 <= rgb_letters;
					elsif(h_count>=629 and h_count<779) then
						if(v_count>136 and v_count<166 and (u_res = 0 or u_res = 2 or u_res = 3 or u_res = 5 or u_res = 6 or u_res = 7 or u_res = 8 or u_res = 9 ) and eror='0') or 
						(v_count>271 and v_count<301 and (u_res = 2 or u_res = 3 or u_res = 4 or u_res = 5 or u_res = 6 or u_res = 8 or u_res = 9 or eror='1')) or 
						(v_count>406 and v_count<436 and (u_res = 0 or u_res = 2 or u_res = 3 or u_res = 5 or u_res = 6 or u_res = 8 or u_res = 9)and eror='0') or
						(h_count>=629 and h_count<659 and (u_res = 0 or u_res = 4 or u_res = 5 or u_res = 6 or u_res = 8 or u_res = 9 )and eror='0' and v_count>136 and v_count<301) or 
						(h_count>=629 and h_count<659 and (u_res = 0 or u_res = 2 or u_res = 6 or u_res = 8 or eror='1') and v_count>276 and v_count<436) or
						(h_count>=749 and h_count<779 and (u_res = 0 or u_res = 1 or u_res = 2 or u_res = 3 or u_res = 4 or u_res = 7 or u_res = 8 or u_res=9)and eror='0' and v_count>136 and v_count<301) or
						(h_count>=749 and h_count<779 and (u_res = 0 or u_res = 1 or u_res = 3 or u_res = 4 or u_res = 5 or u_res = 6 or u_res = 7 or u_res = 8 or u_res = 9 )and eror='0' and v_count>276 and v_count<436)
						then
							rgb2 <= x"DD6755";
						else
							rgb2 <= rgb_letters;
						end if;
					elsif(h_count>=779 and h_count<784) then
						rgb2 <= rgb_letters;
					end if;
				end if;
			end if;
				

			
			--------------------------------------------------------------------------------------------------output
			hs_out  <= hs_2;
			vs_out  <= vs_2;
			de_out  <= de_2;
			r_out   <= rgb2(23 downto 16);
			g_out   <= rgb2(15 downto  8);
			b_out   <= rgb2( 7 downto  0);
			
			
	end process;
	
			
end behavioral;				
	
	
	

