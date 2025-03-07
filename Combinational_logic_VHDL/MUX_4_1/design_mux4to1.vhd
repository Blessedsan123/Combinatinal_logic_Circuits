--design code

library IEEE;
use IEEE.std_logic_1164.all;

entity mux4to1 is
port (in1 : in std_logic;
      in2 : in std_logic;
      in3 : in std_logic;
      in4 : in std_logic;
      sel1 : in std_logic;
      sel2 : in std_logic;
      output : out std_logic);
      
      end entity;
      
      architecture sim of mux4to1 is
      begin
      process is
      begin
      case sel1 & sel2 is

      when "00" => output<=in1;
      when "01" => output<=in2;
      when "10" => output<=in3;
      when "11" => output<=in4;
      when others => output<='0';
      end case;
      wait;
      end process;
      end architecture;