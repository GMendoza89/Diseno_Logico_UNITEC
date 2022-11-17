Library IEEE;
use IEEE.std_logic_1164.all;

Entity TB_med_comparador is
End TB_med_comparador;

architecture simulation of TB_med_comparador is
    component med_comparador
    port(
        A, B       : in  std_logic;
        Go, Eo, Lo : out std_logic
    );
    end component;
    
    signal A, B, Go, Eo, Lo : std_logic;
    begin
        SIMBLK : med_comparador PORT MAP(A,B,Go,Eo,Lo);
        process
        begin
        --
        A <= '0';
        B <= '0';
        wait for 20 ns;
        --
        A <= '0';
        B <= '1';
        wait for 20 ns;
        --
        A <= '1';
        B <= '0';
        wait for 20 ns;
        --
        A <= '1';
        B <= '1';
        wait for 20 ns;
        end process;
end simulation;




