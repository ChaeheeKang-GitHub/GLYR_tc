library ieee;
use ieee.std_logic_1164.all;

entity tc4_tb is
end entity tc4_tb;

architecture arch_tc4_tb of tc4_tb is
	signal clk_s, rst_s : std_logic;
	signal g_s,l_s,y_s,r_s : std_logic;

	component tc4 is
		port ( clk, rst : in std_logic;
		g,l,y,r: out std_logic);
	end component;

begin
	map0: tc4 port map ( clk_s, rst_s, g_s, l_s, y_s, r_s );

clocking : process begin
		clk_s <= '0';
		wait for 10 ns;
		clk_s <= '1';
		wait for 10 ns;
end process;

rese: process begin
		rst_s <= '1';
		wait for 5 ns;
		rst_s <= '0';
		wait for 995 ns;
end process;

end architecture arch_tc4_tb;
