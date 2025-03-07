-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity test_encoder is
end entity;

architecture sim of test_encoder is

-- import the componets of design
component encoder4to2
port (en : in std_logic;
      input : in std_logic_vector(3 downto 0);
      output :out std_logic_vector(1 downto 0));
      end component;
      
      -- declare the signals for the testbench
      --declare the input signals
      signal a : std_logic:='0';
      signal b : std_logic_vector(3 downto 0):="0000";
      --declare the output signal
       signal y : std_logic_vector(1 downto 0);
       
       begin
       --unit under design begins
       uut : encoder4to2 port map(en=>a,input=>b,output=>y);
       
       --process is begin
       process is
       begin
       wait for 2ns;
       a<='1';
       wait for 1ns;
       b<="0010";
       report "The output is " & std_logic_vector'image(y);
        wait for 1ns;
       b<="0100";
       report "The output is " & std_logic_vector'image(y);        wait for 1ns;
       b<="1000";
       report "The output is " & std_logic_vector'image(y);
	   wait;
       end process;
      
end sim;
