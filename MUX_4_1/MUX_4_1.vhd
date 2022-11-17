LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

Entity MUX_4_1 is
    port(
        X0 : in std_logic;      -- Entrada 0 del multiplexor
        X1 : in std_logic;
        X2 : in std_logic;
        X3 : in std_logic;
        S  : in std_logic_vector(1 downto 0);
        Y0 : out std_logic);
END MUX_4_1;

Architecture Simple of MUX_4_1 is
Begin
    Y0 <= (X0 AND NOT S(1) and NOT S(0)) OR ((X1 AND NOT S(1) and S(0))) or ((X2 AND S(1) and NOT S(0))) or ((X3 AND S(0) and S(1)));
End Simple;