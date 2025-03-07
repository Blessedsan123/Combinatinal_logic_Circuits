-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity test_mux is
end entity;

architecture sim of test_mux is
--import the components of the design
component mux8bit
port(input : in bit_vector(7 downto 0);
     sel : in bit_vector(2 downto 0);
     output : out bit);
end component;

--signal declaration
--input signal declaration

signal a: bit_vector(7 downto 0);
signal sel : bit_vector(2 downto 0);
--output signal declaration

signal y : bit;

begin 
uut : mux8bit port map
(input=>a,
sel=>sel,
output=>y);

process is
begin
    sel <= "000";
    a<= "00000001";
    wait for 1 ns;
    
    
    sel <= "001";
    a <= "00000010";
    wait for 1 ns;
end process;


end sim;