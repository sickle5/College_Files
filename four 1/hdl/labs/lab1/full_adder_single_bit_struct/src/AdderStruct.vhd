-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Michael Sarlo
--lab 1
--8/30/16
--Single bit adder Structural gate
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
library ieee
use ieee.std_logic_1164.all;
entity adderstruct is
    port{
    a     : in std_logic_vector(32 downto 0);
    b       : in std_logic;
    cin       : in std_logic;
    sum    : out std_logic;
    cout    : out std_logic;
    };
end adderstruct;

architecture arch of adderstruct is
    signal and1rez, and2rez, and3rez, xorez1 : std_logic;
    component and2
        port(a,b : in std_logic
             z   : out std_logic)
    end component
    
    component xor2
        port(a, b : in std_logic
             z    : out std_logic)
    end component
    
    component or3
        port(a, b, c : in std_logic
             z    : out std_logic)
    end component
begin
    andi1: and2
        port map(
        a => a,
        b => b,
        z => and1rez
        );
    
    andi2: and2
        port map(
        a => a,
        b => c,
        z => and2rez
        );
    
    andi3: and2
        port map(
        a => c,
        b => b,
        z => and3rez
        );
    
    ori: or3
        port map(
        a => a,
        b => b,
        c => c,
        z => cout);
    
    xori1: xor2
        port map(
            a => a,
            b => b,
            z => xorez1);
    
    xori2: xor2
        port map(
            a => xorez1,
            b => c,
            z => cout);
            
    end arch;
             
