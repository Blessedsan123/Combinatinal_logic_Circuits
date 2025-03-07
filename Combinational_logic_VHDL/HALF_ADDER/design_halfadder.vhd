--Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity halfadder is
port(in1 : in std_logic;
     in2 : in std_logic;
     sum : out std_logic;
     carry : out std_logic);
     end halfadder;
     
     architecture behavioral of halfadder is
     begin
     sum<=in1 xor in2;
     carry<= in1 and in2;
     end behavioral;