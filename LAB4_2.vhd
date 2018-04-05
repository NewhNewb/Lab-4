library ieee;
use ieee.std_logic_1164.all;
 
entity IR is
  port (
		Enter :	in std_logic_vector(1 downto 0);
		BEGONE :	out std_logic_vector(2 downto 0)
    );
end IR;
 
architecture rtl of IR is
begin
      BEGONE <= "011" when (Enter = "00") else
		   "100" when (Enter = "01") else
		   "101" when (Enter = "10") else
		   "110" when (Enter = "11") else
		   "000";
  
end rtl;