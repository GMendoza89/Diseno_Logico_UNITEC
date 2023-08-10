Library IEEE;
use IEEE.std_logic_1164.all;

entity Restador_n is
    generic(
        n : integer := 16
    );
    port(
        A, B : in  std_logic_vector(n-1 downto 0); -- Sumandos
        Bi   : in  std_logic;                      -- Acarreo de entrada
        S    : out std_logic_vector(n-1 downto 0); -- Suma
        Bo   : out std_logic                       -- Acarreo de salida
    );
End Restador_n;

Architecture Recurrence of Restador_n is
    signal B : std_logic_vector(n downto 0);
    begin
        process(A,B,Ci,C)
        begin
            B(0) <= Bi;     -- Acarreo de entrada
            for i in 0 to n-1 loop
                S(i) <= (A(i) XOR B(i)) XOR C(i);
                C(i+1) <= ((NOT A(i) AND B(i)) OR (NOT A(i) AND C(i))) OR (B(i) AND C(i)); -- Acarreo Recurrente
            end Loop;
            Bo <= B(n);
        end Process;
    End Recurrence;
