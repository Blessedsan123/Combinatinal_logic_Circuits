--testbench code

library IEEE;
use IEEE.std_logic_1164.all;

entity test_mux4to1 is 
end entity;

architecture sim of test_mux4to1 is
--import the componrnts of the design
component mux4to1
port (in1 : in std_logic;
      in2 : in std_logic;
      in3 : in std_logic;
      in4 : in std_logic;
      sel1 : in std_logic;
      sel2 : in std_logic;
      output : out std_logic);
      
      end component;
      
      --signal declaration 
      --input signals declaration
      signal a : std_logic:='0';
      signal b : std_logic:='0';
      signal c : std_logic:='0';
      signal d : std_logic:='0';
      signal s1 : std_logic:='0';
      signal s2 : std_logic:='0';
      --output signal declaration
      signal y : std_logic;
      
      begin
       -- unit under test begins
       uut : mux4to1 port map(
       in1=>a,
       in2=>b,
       in3=>c,
       in4=>d,
       sel1=>s1,
       sel2=>s2,
       output=>y);
       
       --process begins
       process is
       begin
       wait for 2ns;
       a<='0';
       b<='1';
       c<='1';
       d<='0';
       s1<='0';
       s2<='1';
       wait for 2ns;
       report "the output is : "& std_logic'image(y);
       
      end process;

end architecture;