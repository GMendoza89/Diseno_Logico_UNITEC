LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

Entity TB_sumador is 
End TB_sumador;

Architecture simulation of TB_sumador is
    component sumador is 
        port(
            A  : in  std_logic;
            B  : in  std_logic;
            Ci : in  std_logic;
            S  : out std_logic;
            Co : out std_logic);
    end component;

    signal A, B, Ci, Co, S : std_logic;
    begin
        SIMBLK01 : sumador PORT MAP(A, B, Ci, S, Co);
        process
        begin   
            --
            Ci <= '0';
            A <= '0';
            B <= '0';
            wait for 20 ns;
            --
            Ci <= '0';
            A <= '0';
            B <= '1';
            wait for 20 ns;
            --
            Ci <= '0';
            A <= '1';
            B <= '0';
            wait for 20 ns;
            --
            Ci <= '0';
            A <= '1';
            B <= '1';
            wait for 20 ns;
            --
            Ci <= '1';
            A <= '0';
            B <= '0';
            wait for 20 ns;
            --
            Ci <= '1';
            A <= '0';
            B <= '1';
            wait for 20 ns;
            --
            Ci <= '1';
            A <= '1';
            B <= '0';
            wait for 20 ns;
            --
            Ci <= '1';
            A <= '1';
            B <= '1';
            wait;
        end process;
End simulation;