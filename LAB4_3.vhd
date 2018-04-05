library ieee;
use ieee.std_logic_1164.all;
 
entity IR is
  port (
		Enter :	in std_logic_vector(1 downto 0);
        BEGONE : out std_logic_vector(2 downto 0)
    );
end IR;
 
architecture rtl of IR is
begin
process (Enter)
begin
      if Enter = "00" then BEGONE <= "011";
   elsif Enter = "01" then BEGONE <= "100";
   elsif Enter = "10" then BEGONE <= "101";
   else                BEGONE <= "110";
   end if;
   --wait;
end process;
end rtl;