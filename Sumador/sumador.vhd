LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

Entity sumador is 
    port(
        A  : in  std_logic;
        B  : in  std_logic;
        Ci : in  std_logic;
        S  : out std_logic;
        Co : out std_logic);
End sumador;

Architecture Behavioral of sumador is
    begin
        S  <= (A XOR B) XOR Ci;
        Co <= (A AND B) OR (A AND CI) OR (B AND CI);
End Behavioral;