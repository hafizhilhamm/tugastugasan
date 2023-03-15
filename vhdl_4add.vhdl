library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity adder4bit is
    port (
        A: in std_logic_vector(3 downto 0);
        B: in std_logic_vector(3 downto 0);
        Cin: in std_logic;
        Sum: out std_logic_vector(3 downto 0);
        Cout: out std_logic
    );
end adder4bit;

architecture Behavioral of adder4bit is
begin
    process(A, B, Cin)
        variable temp: unsigned(4 downto 0);
    begin
        temp := ('0' & A) + ('0' & B) + ('0' & Cin);
        Sum <= std_logic_vector(temp(3 downto 0));
        Cout <= temp(4);
    end process;
end Behavioral;
