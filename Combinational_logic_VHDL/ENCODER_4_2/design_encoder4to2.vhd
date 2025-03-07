-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity encoder4to2 is
port (en : in std_logic;
      input : in std_logic_vector(3 downto 0);
      output :out std_logic_vector(1 downto 0));
      end entity;
      
      architecture sim of encoder4to2 is
      begin
      process(en,input)
      begin
      if en = '1' then
      case input is
      when "0000" => output<="00";
      when "0010" => output<="01";
      when "0100" => output<="10";
      when "1000" => output<="11";
      when others => output<="XX";
      end case;
      else
      output<="00" ;
      end if;

      end process;
      end sim;
