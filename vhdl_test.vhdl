library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity adder4bit_tb is
end adder4bit_tb;

architecture Behavioral of adder4bit_tb is
    component adder4bit is
        port (
            A: in std_logic_vector(3 downto 0);
            B: in std_logic_vector(3 downto 0);
            Cin: in std_logic;
            Sum: out std_logic_vector(3 downto 0);
            Cout: out std_logic
        );
    end component;
    
    signal A: std_logic_vector(3 downto 0);
    signal B: std_logic_vector(3 downto 0);
    signal Cin: std_logic;
    signal Sum: std_logic_vector(3 downto 0);
    signal Cout: std_logic;
begin
    uut: adder4bit port map(A => A, B => B, Cin => Cin, Sum => Sum, Cout => Cout);
    
    stim_proc: process
    begin
        A <= "0011";
        B <= "0010";
        Cin <= '0';
        wait for 10 ns;
        assert Sum = "0101" and Cout = '0' report "Test case 1 failed";
        
        A <= "1010";
        B <= "0011";
        Cin <= '1';
        wait for 10 ns;
        assert Sum = "1110" and Cout = '1' report "Test case 2 failed";
        
        A <= "1111";
        B <= "0001";
        Cin <= '1';
        wait for 10 ns;
        assert Sum = "0001" and Cout = '1' report "Test case 3 failed";
        
        wait;
    end process;
end Behavioral;
