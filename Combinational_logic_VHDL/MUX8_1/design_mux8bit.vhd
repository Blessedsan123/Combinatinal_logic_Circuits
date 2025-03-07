-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity mux8bit is
port(input : in bit_vector(7 downto 0);
     sel : in bit_vector(2 downto 0);
     output : out bit);

end entity;

architecture sim of mux8bit is
begin
with sel select
output<=input(0) when "000",
input(1) when "001",
input(2) when "010",
input(3) when "011",
input(4) when "100",
input(5) when "101",
input(6) when "110",
input(7) when others;
end sim;