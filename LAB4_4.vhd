library ieee;
use ieee.std_logic_1164.all;
 
entity IR is
  port (Enter :	in std_logic_vector(1 downto 0);
        BEGONE : out std_logic_vector(2 downto 0)
    );
end IR;
 
architecture rtl of IR is
begin
process (Enter)
begin
 case Enter is
   when "00" => BEGONE <= "011";
   when "01" => BEGONE <= "100";
   when "10" => BEGONE <= "101";
   when "11" => BEGONE <= "110";
   when others => null;
 end case;
 --wait;
end process;
end rtl;