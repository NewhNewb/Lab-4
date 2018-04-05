library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal w_RESULT1 : std_logic_vector(2 downto 0);


  component IR is
    port (
        Enter : in std_logic_vector(1 downto 0);
        BEGONE : out std_logic_vector(2 downto 0));
  end component IR;

begin
  and_gate_INST : IR
    port map (
      Enter(1)    => r_SIG1,
	  Enter(0)    => r_SIG2,
      BEGONE    => w_RESULT1
      );
	  

  process is
  begin
    r_SIG1 <= '1';
	r_SIG2 <= '1';
    wait for 10 ns;
    r_SIG1 <= '0';
	r_SIG2 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
	r_SIG2 <= '0';
    wait for 10 ns;
	r_SIG1 <= '0';
	r_SIG2 <= '1';
	wait for 10 ns;
  end process;

end behave;