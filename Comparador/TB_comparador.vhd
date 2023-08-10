Library IEEE;
use IEEE.std_logic_1164.all;

Entity TB_comparador is
End TB_comparador;

Architecture simulation of TB_comparador is
    component comparador is
        port(
            A, B, Gi, Ei, Li : in  std_logic;
            Go, Eo, Lo       : out std_logic
        );
    End component;
    
    signal A, B, Go, Eo, Lo, Gi, Li, Ei : std_logic;
    begin
        SIMBLK : comparador PORT MAP(A,B,Gi,Ei,Li,Go,Eo,Lo);
        process
        begin
        --
        Gi <= '1';
        Ei <= '0';
        Li <= '0';
        A <= '0';
        B <= '0';
        wait for 20 ns;
        --
        Gi <= '1';
        Ei <= '0';
        Li <= '0';
        A <= '1';
        B <= '0';
        wait for 20 ns;
        --
        Gi <= '1';
        Ei <= '0';
        Li <= '0';
        A <= '0';
        B <= '1';
        wait for 20 ns;
        --
        Gi <= '0';
        Ei <= '0';
        Li <= '1';
        A <= '0';
        B <= '0';
        wait for 20 ns;
         --
         Gi <= '0';
         Ei <= '0';
         Li <= '1';
         A <= '1';
         B <= '0';
         wait for 20 ns;
          --
        Gi <= '0';
        Ei <= '0';
        Li <= '1';
        A <= '0';
        B <= '1';
        wait for 20 ns;

         --
         Gi <= '0';
         Ei <= '1';
         Li <= '0';
         A <= '0';
         B <= '0';
         wait for 20 ns;
        --
        Gi <= '0';
        Ei <= '1';
        Li <= '0';
        A <= '0';
        B <= '0';
        wait for 20 ns;
        --
        Gi <= '0';
        Ei <= '1';
        Li <= '0';
        A <= '0';
        B <= '1';
        wait for 20 ns;
        --
        Gi <= '0';
        Ei <= '1';
        Li <= '0';
        A <= '1';
        B <= '0';
        wait for 20 ns;
        --
        Gi <= '0';
        Ei <= '1';
        Li <= '0';
        A <= '1';
        B <= '1';
        wait for 20 ns;
        end process;
end simulation;




