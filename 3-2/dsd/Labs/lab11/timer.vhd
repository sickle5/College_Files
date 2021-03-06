
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity timer is
	port(clk  : in std_logic;
		 resetn : in std_logic;
		 delay : in std_logic_vector(5 downto 0);
		 flag: out std_logic);
	end timer;

architecture arch of timer is
	signal max_count : std_logic_vector(5 downto 0);
	signal int_count :std_logic_vector(5 downto 0);
	signal ts : std_logic;
	--signal flag : std_logic;
	--flag <= flag;
	begin
	
	--flag <= f;
	--test <= ts;
	max_count <= delay;
	delay0 :process(clk)
	begin
	if resetn = '0' then
		flag <= '0';
		int_c

	elsif (rising_edge(clk)) then
		
			if(int_count = max_count) then
				int_count <= (others => '0');
			else
				int_count <= (int_count + '1');
			end if;
		end if;
	--end if;
	end process;
	
	flaging:process (clk)
		begin
			if(rising_edge(clk)) then
					if (int_count = max_count) then
						flag <= '1';
					else
						flag <= '0';
					end if;
				end if;
--				if flag = '1' then
--					ts <= not ts;
--				end if;
		--	end if;
		end process;
		end arch;