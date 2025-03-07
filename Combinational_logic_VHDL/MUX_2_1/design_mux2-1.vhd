-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity mux2to1 is
-- for 2:1 mux we have 2 in inputs, 1 selector line and an output.
port (in1 : in std_logic;
      in2 : in std_logic;
      sel : in std_logic;
      output : out std_logic);
      
      end entity;
      
      architecture sim of mux2to1 is
      begin
      process is
      begin
      if sel='1' then
      output<=in1;
      else
      output<=in2;
      end if;
      wait;
      end process;
      
      end sim;