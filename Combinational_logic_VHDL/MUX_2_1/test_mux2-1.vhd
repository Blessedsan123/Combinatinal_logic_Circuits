-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity test_mux is
end entity;

architecture sim of test_mux is
-- components import from the design
component mux2to1
port (in1 : in std_logic;
      in2 : in std_logic;
      sel : in std_logic;
      output : out std_logic);
      
      end component;
      
      --signals declaration
      --input signal declaration
      signal a : std_logic:='0';
      signal b : std_logic:='0';
      signal s : std_logic:='0';
      --output signal declaration
      signal y : std_logic;
      
      begin
      --unit under test begins
      uut : mux2to1 port map(
      in1=>a,
      in2=>b,
      sel=>s,
      output=>y);
      
      --process begins
      process is
      begin
      wait for 2ns;
      a<='1';
      b<='0';
      s<='1';
      wait for 2ns;
      report "the output is : " & std_logic'image(y);

      
      end process;
      

end architecture;