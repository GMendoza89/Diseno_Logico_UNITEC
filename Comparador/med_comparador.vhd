Library IEEE;
use IEEE.std_logic_1164.all;

Entity med_comparador is
    port(
        A, B       : in  std_logic;
        Go, Eo, Lo : out std_logic
    );
End med_comparador;

Architecture comparation of med_comparador is
    begin
        Go <= A AND NOT(B); -- Mayor
        Eo <= A XNOR B;
        Lo <= NOT(A) AND B;
END comparation;