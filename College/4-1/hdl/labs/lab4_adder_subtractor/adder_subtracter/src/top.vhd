library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

entity top is 
	port (a, b 			 : in std_logic_vector (2 downto 0);
		  --oper 			 : in std_logic_vector(1 downto 0);
		  add,sub,clk,reset 	 : in std_logic;
		  hex0,hex1,hex2 : out std_logic_vector (6 downto 0)
	);
	end top;
	
architecture arch of top is
	signal asig,bsig : std_logic_vector(2 downto 0);
	signal rezsig : std_logic_vector(3 downto 0);
	signal opersig : std_logic;


	component alu is 
	port (a,b : in std_logic_vector (3 downto 0);
		  oper : in std_logic_vector(1 downto 0);
		  result    : out std_logic_vector(3 downto 0)
	);
	end component;
	
	component synchronizer is 
	port (
		clk               : in std_logic;
		reset             : in std_logic;
		async_in          : in std_logic;
		sync_out          : out std_logic
	  );
	end component;
	
	component rising_edge_synchronizer is 
	port (
		clk               : in std_logic;
		reset             : in std_logic;
		input             : in std_logic;
		edge              : out std_logic
	  );
	end component;
	
	component seven_seg is
	port(input1  : in std_logic_vector (3 downto 0);
		 input2  : in std_logic_vector (3 downto 0);
		 input3  : in std_logic_vector (3 downto 0);
		 clk     : in std_logic;
		 reset   : in std_logic;
		 hex0,hex1,hex2 : out std_logic_vector (6 downto 0)
		 );
		 end component;
		 
	begin 
	opersig <= add & sub;
	add_sub: alu
		port map(
		a => asig,
		b => bsig,
		oper => opersig,
		result => rezsig);
	
	ssd: seven_seg
		port map(
			input1 => '0' & asig,
			input2 => '0' & bsig,
			input3 => '0' & rezsig,
			reset => reset,
			clk => clk,
			hex0 => hex0,
			hex1 => hex1,
			hex2 => hex2
			);
	
	sync1:synchronizer
		port map(
		clk => clk,
		reset => reset,
		async_in => a,
		sync_out => asig);
		
	sync2:synchronizer
		port map(
		clk => clk,
		reset => reset,
		async_in => b,
		sync_out => bsig);
	
	sync3: rising_edge_synchronizer
		port map(
		clk => clk,
		reset => reset,
		input => add,
		edge => addsig);
		
	sync4: rising_edge_synchronizer
		port map(
		clk => clk,
		reset => reset,
		input => sub,
		edge => subsig);
		
	
	