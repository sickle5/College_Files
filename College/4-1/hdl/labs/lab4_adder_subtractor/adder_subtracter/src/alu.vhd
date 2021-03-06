library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

entity alu is 
	port (a,b : in std_logic_vector (3 downto 0);
		  oper : in std_logic_vector(1 downto 0);
		  result    : out std_logic_vector(3 downto 0);

	);
	end alu;
	

	architecture arch of alu is
	signal rez,signeda,signedb, unsigneda, unsignedb : std_logic_vector(7 downto 0);
	begin
	result <= rez;
	-- signeda <= a(3) & a(3) & a(3) & a(3) & a;
	-- signedb <= b(3) & b(3) & b(3) & b(3) & b;
	-- unsigneda <= "0000" & a;
	-- unsignedb <= "0000" & b;
	process (a,b,oper,signeda,signedb,unsigneda)
	begin
	case oper is
		when "10" => rez <= a + b;
		when "01" => rez <= a - b;
		-- when "010" => rez <= (a * b);
		-- when "011" => rez <= (not signeda) + '1';
		-- when "100" => rez <= "0000" & (a and b);
		-- when "101" => rez <= "0000" & (a or b);
		-- when "110" => rez <= "0000" & (a xor b);
		-- when "111" => rez <= "0000" & (not a);
		when others => rez <= "00000000";
		end case;
		end process;
		end arch;
	-- if (oper = "000") then
		-- result <= a + b;
	-- elsif (oper = "001") then
		-- result <= a + ((not b) + '1');
	-- elsif (oper = "010") then
		-- result <= a * b;
	-- elsif (oper = "011") then
		-- result <= (not a + '1');
	-- elsif (oper = "100") then
		-- result <= a and b;
	-- elsif (oper = "101") then
		-- result <= a or b;
	-- elsif (oper = "110") then
		-- result <= a xor b;
	-- else 
		-- result <= not a;
		-- end if;
		