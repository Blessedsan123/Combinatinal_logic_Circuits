-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity test_demux is
end entity;

architecture sim of test_demux is
--import the components of design
component demux2to1 
port(input : in std_logic;
     sel : in std_logic;
     output1 : out std_logic;
     output2 : out std_logic);
     end component;
     
     --signal declaration for test
     --input signals declare
     signal a : std_logic :='0';
     signal sel : std_logic :='0';
     
     --output ports declare
     signal out1 : std_logic;
     signal out2 : std_logic;
     
     begin
     --unit under test begins
     
     uut : demux2to1 port map(
     input=>a,sel=>sel,output1=>out1,output2=>out2);
     
     --process begins
     process is
     begin
     wait for 2ns;
     a<='0';
     sel<='1';
     wait for 1ns;
      a<='1';
     sel<='0';
     wait for 1ns;
      a<='1';
     sel<='1';
     wait;
     end process;
end sim;