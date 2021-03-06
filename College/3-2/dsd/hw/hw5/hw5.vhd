library ieee;
use ieee.std_logic_1164.all;

entity hw5 is
	port (a,b  : in std_logic_vector(3 downto 0);
		  sel  : in std_logic;
		  hex  : out std_logic_vector(6 downto 0)
		 );
end hw5;

architecture arch of hw5 is
	signal connect : std_logic_vector(3 downto 0);
	component mux2to1
		port(a,b  : in std_logic_vector(3 downto 0);
			s     : in std_logic;
			y     : out std_logic_vector(3 downto 0)
			);
	end component;
	
	component Bin2SSD
		port(bin : in std_logic_vector(3 downto 0);
		         hex : out std_logic_vector(6 downto 0)
					);
	end component;
	
	begin
	
	mux1: mux2to1
		port map (a => a,
				  b => b,
				  s => sel,
				  y => connect);
	
	bin1:  Bin2SSD
		port map(bin => connect,
				 hex => hex);
	
	end arch;
	