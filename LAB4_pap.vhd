
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity or_1 is port (
ibit0, ibit1: in std_logic;
obitA: out std_logic
);
end or_1;

architecture dataflow of or_1 is
begin
obitA <= ibit0 or ibit1;
end dataflow;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity or_2 is port (
ibit2, ibit3: in std_logic;
obitB: out std_logic
);
end or_2;

architecture dataflow of or_2 is
begin
obitB <= ibit2 or ibit3;
end dataflow;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity or_3 is port (
obitA, obitB: in std_logic;
obitfin: out std_logic
);
end or_3;

architecture dataflow of or_3 is
begin
obitfin <= obitA or obitB;
end dataflow;

--Structural Design (top level)
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Small_ckt is port (
A, B, C, D : in std_logic;
F : out std_logic
);
end Small_ckt;

architecture structural of Small_ckt is
signal A_B, C_D: std_logic;
component or_1 is port (
ibit0, ibit1: in std_logic;
obitA: out std_logic
);
end component;

component or_2 is port (
ibit2, ibit3: in std_logic;
obitB: out std_logic
);
end component;

component or_3 is port (
obitA, obitB: in std_logic;
obitfin: out std_logic
);
end component;

begin
C1: or_1 port map (ibit0 => A, ibit1 => B, obitA => A_B);
C2: or_2 port map (ibit2 => C, ibit3 => D, obitB => C_D);
C3: or_3 port map (obitA => A_B, obitB => C_D, obitfin => F);
end structural;