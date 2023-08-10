Library IEEE;
use IEEE.std_logic_1164.all;

entity Sumador_n is
    generic(
        n : integer := 8
    );
    port(
        A, B : in  std_logic_vector(n-1 downto 0); -- Sumandos
        --Ci   : in  std_logic;                      -- Acarreo de entrada
        S    : out std_logic_vector(n-1 downto 0); -- Suma
        Co   : out std_logic;                      -- Acarreo de salida
        V    : out std_logic;                      -- Bandera del Sobreflujo
        Z    : out std_logic;                      -- Bandera del Cero
        Sn    : out std_logic                      -- Bandera del Signo
    );
End Sumador_n;

Architecture Recurrence of Sumador_n is
    signal C : std_logic_vector(n downto 0);      -- Acarreo Recurrente     
    signal P : std_logic_vector(n-1 downto 0);    -- Señal para evaluar el 0
    signal R : std_logic_vector(n-1 downto 0);    -- Señal donde se almacena el resultado
    begin
        process(A,B,C,R,P)
        begin
            R(0) <= A(0) XOR B(0);
            C(0) <='0';     -- Acarreo de entrada
            C(1) <= A(0) AND B(0);
            for i in 1 to n-1 loop
                R(i) <= (A(i) XOR B(i)) XOR C(i);
                C(i+1) <= ((A(i) AND B(i)) OR (A(i) AND C(i))) OR (B(i) AND C(i)); -- Acarreo Recurrente
            end Loop;
            
            S <= R;
            Co <= C(n);
            Sn <=R(n-1);
            V <= (A(n-1) AND B(n-1) AND (NOT(R(n-1))))OR((NOT(A(n-1))) AND (NOT(B(n-1))) AND R(n-1));
            
            P(0) <= R(0);
            for j in 1 to n-1 loop
                P(j)<= P(j - 1) OR R(j);
            end loop;
            
            Z <= NOT(P(n-1));

        end Process;
End Recurrence;
