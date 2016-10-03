library ieee;
use ieee.std_logic_1164.all;

entity hw4_1 is
	port(a,b    : in std_logic_vector(3 downto 0);
		 x,y,z      : out std_logic);
	end hw4_1;

architecture arch of hw4_1 is 
signal result : std_logic_vector(2 downto 0);
begin
	process(a,b)
	begin	
	
	if a<b then
		result <= "001";
	elsif a = b then
		result <= "010";
	elsif a>b then
		result <= "100";
	else 
		result <= "000";
		end if;
	
	x <= result(2);
	y <= result(1);
	z <= result(0);
	
	end process;
	end arch;
		