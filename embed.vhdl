-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity main is
  port (
    p: in std_logic;
    l: in std_logic;
    p_out: out std_logic;
    out2: out std_logic);
end main;

architecture Behavioral of main is
begin
  p_out <= (p XOR l);
  out2 <= (p AND l);
end Behavioral;
