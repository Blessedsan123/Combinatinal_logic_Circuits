-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity demux2to1 is
port(input : in std_logic;
     sel : in std_logic;
     output1 : out std_logic;
     output2 : out std_logic);
     end entity;

architecture sim of demux2to1 is
begin
process is 
begin
if sel='1' then
output1<=input;
else
output2<=input;
end if;
wait;
end process;
end sim;