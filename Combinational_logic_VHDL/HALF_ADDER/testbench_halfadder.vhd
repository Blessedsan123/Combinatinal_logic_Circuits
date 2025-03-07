-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity test_hf is
end test_hf;

architecture behavioral of test_hf is
--insert the component of the design
component halfadder
port(in1 : in std_logic;
     in2 : in std_logic;
     sum : out std_logic;
     carry : out std_logic);
     end component;
     
     --signal declartion for testbench
     --input signals declaration
     signal a : std_logic:='0';
     signal b : std_logic:='0';
     --output signals declaration
     signal sum : std_logic;
     signal carry : std_logic;
     
     begin
     -- unit under test begins
     uut : halfadder port map
     (in1=>a,
     in2=>b,
     sum=>sum,
     carry=>carry);
     
     --process begins
     process
     begin
     wait for 2ns;
     a<='0';
     b<='1';
     wait for 1ns;
     report "The sum is: " & std_logic'image(sum) & " The carry is: " & std_logic'image(carry);
     wait for 2ns;
     a<='1';
     b<='0';
     wait for 1ns;
     report "The sum is: " & std_logic'image(sum) & " The carry is: " & std_logic'image(carry);
     wait for 2ns;
     a<='1';
     b<='1';
     wait for 1ns;
     report "The sum is: " & std_logic'image(sum) & " The carry is: " & std_logic'image(carry);

     end process;
     end  behavioral;
     
     