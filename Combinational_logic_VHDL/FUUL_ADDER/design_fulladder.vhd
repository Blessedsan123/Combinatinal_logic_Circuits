--Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity fulladder is
port (in1 : in std_logic;
      in2 : in std_logic;
      in3 : in std_logic;
      sum : out std_logic;
      carry : out std_logic);
      end fulladder;
      
      architecture behavioral of fulladder is
      begin
      sum<= in1 xor in2 xor in3;
      carry<=(in1 and in2) or(in2 and in3) or (in1 and in3);
      end behavioral;