Library IEEE;
use IEEE.std_logic_1164.all;

entity TB_Sumador_n is
End TB_Sumador_n;

Architecture simulation of TB_Sumador_n is
    component Sumador_n is
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
    End component;
    signal A,B,S : std_logic_vector(7 downto 0);
    signal Co,V,Z,Sn : std_logic;
    begin
        SIMBLK: Sumador_n PORT MAP (A,B,S,Co,V,z,Sn);
        process
        begin
            -- Bloque 1;
            A <= "00001100";
            B <= "00001100";
            
            wait for 20 ns;
            A <= "00001100";
            B <= "10001100";
            
            wait for 20 ns;
            A <= "00001100";
            B <= "11111111";
            
            wait for 20 ns;
            A <= "00001100";
            B <= "11111111";
        
        wait for 20 ns;
    end Process;
end simulation;
