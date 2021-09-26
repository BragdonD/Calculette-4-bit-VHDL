library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity hdmi_de10 is
port(	clk_50		: in std_logic;	--50Mhz clock 
		reset			: in std_logic;
		mode			: in std_logic;
		Res			: in std_logic_vector(3 downto 0);
		eror			: in std_logic;
		res_out		: out std_logic_vector(3 downto 0);
		vga_vs		: out std_logic;	--vertical output
		vga_hs		: out std_logic;	--horizontal output
		vga_r			: out std_logic_vector(3 downto 0);	--red component for a pixel
		vga_g			: out std_logic_vector(3 downto 0); --green component for a pixel
		vga_b			: out std_logic_vector(3 downto 0));--blue component for a pixel
end hdmi_de10;

architecture archi_hdmi_de10 of hdmi_de10 is
	signal clk_25 : std_logic;
	signal r,g,b : std_logic_vector(7 downto 0);
	signal reset_a, reset_b, reset_c, reset_d, reset_e : std_logic;
begin	
	process
	begin
		wait until rising_edge(clk_50);
			if(reset = '1') then
				clk_25 <= '0';
				reset_a <= '1';
				reset_b <= '1';
				reset_c <= '1';
				reset_d <= '1';
				reset_e <= '1';
			else
				clk_25 <= not(clk_25);
				reset_a <= '0';
				reset_b <= reset_a;
				reset_c <= reset_b;
				reset_d <= reset_c;
				reset_e <= reset_d;
			end if;
	end process;
	
	res_img: entity work.result_img(behavioral)
		port map
		(
			clk_25 => clk_25,
			reset	=> reset_e,
			mode	=> mode,
			Res	=> Res,
			eror	=> eror,
			vs_out	=> vga_vs,
			hs_out	=> vga_hs,
			de_out	=> open,
			r_out		=> r,
			g_out		=> g,
			b_out		=> b
		);
		
	vga_r <= r(7 downto 4);
	vga_g <= g(7 downto 4);
	vga_b <= b(7 downto 4);
	res_out <= res;
	
end archi_hdmi_de10;