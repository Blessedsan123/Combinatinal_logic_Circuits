-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity test_fa is
end test_fa;

architecture behavioral of test_fa is
--import the components of the design

component fulladder 
port (in1 : in std_logic;
      in2 : in std_logic;
      in3 : in std_logic;
      sum : out std_logic;
      carry : out std_logic);
      end component;
      
      --signal declaration for testing
      --input signals declare
      signal a : std_logic :='0';
      signal b : std_logic :='0';
      signal c : std_logic :='0';
      
      --output signals declaration
      signal s : std_logic;
      signal ca : std_logic;
      
      begin
      --unit under test begins
      unit : fulladder port map(
      in1=>a,
      in2=>b,
      in3=>c,
      sum=>s,
      carry=>ca);
      
      --process begins
      process
      begin
      wait for 2ns;
      a<='0';
      b<='0';
      c<='1';
      wait for 1ns;
      report "The sum is: " & std_logic'image(s) & ", The carry is: " & std_logic'image(ca);
            wait for 2ns;
      a<='0';
      b<='1';
      c<='0';
      wait for 1ns;
      report "The sum is: " & std_logic'image(s) & ", The carry is: " & std_logic'image(ca);
            wait for 2ns;
      a<='0';
      b<='1';
      c<='1';
      wait for 1ns;
      report "The sum is: " & std_logic'image(s) & ", The carry is: " & std_logic'image(ca);
            wait for 2ns;
      a<='1';
      b<='0';
      c<='0';
      wait for 1ns;
      report "The sum is: " & std_logic'image(s) & ", The carry is: " & std_logic'image(ca);
            wait for 2ns;
      a<='1';
      b<='0';
      c<='1';
      wait for 1ns;
      report "The sum is: " & std_logic'image(s) & ", The carry is: " & std_logic'image(ca);
            wait for 2ns;
      a<='1';
      b<='1';
      c<='0';
      wait for 1ns;
      report "The sum is: " & std_logic'image(s) & ", The carry is: " & std_logic'image(ca);
            wait for 2ns;
      a<='1';
      b<='1';
      c<='1';
      wait for 1ns;
      report "The sum is: " & std_logic'image(s) & ", The carry is: " & std_logic'image(ca);
      
      end process;
      end;
      