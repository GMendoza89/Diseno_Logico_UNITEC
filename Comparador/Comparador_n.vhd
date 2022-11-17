Library IEEE;
use IEEE.std_logic_1164.all;

Entity Comparador_n is
    generic (
        n : integer := 4        -- Definición de Variables Genericas
    );
    port(
        A,B        : in std_logic_vector(n-1 downto 0);
        Gi, Ei, Li : in std_logic;
        Go, Eo, Lo : out std_logic
    );
END Comparador_n;

Architecture Recurrence of Comparador_n is
    signal G, E, L : std_logic_vector(n downto 0);
    begin
        process(A,B,Gi,Ei,Li,G,L,E)
        begin
            G(n) <= Gi;
            E(n) <= Ei;
            L(n) <= Li;
            for i in n-1 downto 0 loop
                G(i) <= G(i+1) OR (E(i+1) AND (A(i) AND NOT(B(i))));
                E(i) <= E(i+1) AND (A(i) XNOR B(i));
                L(i) <= L(i+1) OR(E(i+1) AND (NOT(A(i)) AND B(i)));
            end loop;
            Go <= G(0);
            Eo <= E(0);
            Lo <= L(0);
        end process;
End Recurrence;