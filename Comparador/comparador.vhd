Library IEEE;
use IEEE.std_logic_1164.all;

Entity comparador is
    port(
        A, B, Gi, Ei, Li : in  std_logic;
        Go, Eo, Lo       : out std_logic
    );
End comparador;

Architecture comparation of comparador is
    begin
        Go <= Gi or ( Ei AND (A AND NOT(B))); -- Mayor
        Eo <= Ei AND (A XNOR B);              -- Igual
        Lo <= Li or (Ei AND (NOT(A) AND B));  -- Menor
END comparation;