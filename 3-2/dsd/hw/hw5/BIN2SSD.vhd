library ieee;
use ieee.std_logic_1164.all;

entity Bin2SSD is
		port(bin : in std_logic_vector(3 downto 0);
		         hex : out std_logic_vector(6 downto 0)
					);
	end BIN2SSD;

architecture arch of Bin2SSD is
	begin
	process (bin)
	begin
	if (bin = "0000") then
		hex <= "1111110";
	elsif (bin = "0001") then
		hex <= "0110000";
	elsif (bin = "0010") then
		hex <= "1100000";
	elsif (bin = "0011") then
		hex <= "1111001";
	elsif (bin = "0100") then
		hex <= "0110011";
	elsif (bin = "0101") then
		hex <= "1011011";
	elsif (bin = "0110") then
		hex <= "1011111";
	elsif (bin = "0111") then
		hex <= "1110000";
	elsif (bin = "1000") then
		hex <= "1111111";
	elsif (bin = "1001") then
		hex <= "1111011";
	elsif (bin = "1010") then
		hex <= "1110111";
	elsif (bin = "1011") then
		hex <= "0011111";
	elsif (bin = "1100") then
		hex <= "1001110";
	elsif (bin = "1101") then
		hex <= "0111101";
	elsif (bin = "1110") then
		hex <= "1001111";
	else
		hex <= "1000111";
	end if;
	end process;
	end arch;