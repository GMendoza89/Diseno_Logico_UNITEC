Library IEEE;
use IEEE.std_logic_1164.all;

entity Suma_resta_n is
    generic(
        n : integer := 16
    );
    port(
        A, B : in  std_logic_vector(n-1 downto 0); -- Sumandos
        Ci   : in  std_logic;                      -- Acarreo de entrada
        x    : in std_logic;
        S    : out std_logic_vector(n-1 downto 0); -- Suma
        Co   : out std_logic                       -- Acarreo de salida
    );
End Suma_resta_n;

Architecture Recurrence of Suma_resta_n is
    signal C : std_logic_vector(n downto 0);
    begin
        process(A,B,Ci,C)
        begin
            C(0) <= Ci;     -- Acarreo de entrada
            for i in 0 to n-1 loop
                S(i) <= (A(i) XOR B(i)) XOR C(i);
                C(i+1) <= ((A(i) AND B(i)) OR (A(i) AND C(i))) OR (B(i) AND C(i)); -- Acarreo Recurrente
            end Loop;
            Co <= C(n);
        end Process;
    End Recurrence;
