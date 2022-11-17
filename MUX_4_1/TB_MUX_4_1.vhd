LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

Entity TB_MUX_4_1 is

END TB_MUX_4_1;

Architecture Simulation of TB_MUX_4_1 is
    Component MUX_4_1 
    port(
        X0 : in std_logic;      -- Entrada 0 del multiplexor
        X1 : in std_logic;
        X2 : in std_logic;
        X3 : in std_logic;
        S  : in std_logic_vector(1 downto 0);
        Y0 : out std_logic);
    End Component;

    signal X0, X1, X2, X3, Y0 : std_logic;
    signal S : std_logic_vector(1 downto 0);
    begin
        SimBLk : MUX_4_1 PORT MAP(X0, X1, X2, X3,S,Y0);

        process
        begin
            --
            X0 <= '0';
            X1 <= '0';
            X2 <= '0';
            X3 <= '0';
            S <= "00";
            wait for 20 ns;
            --
            X0 <= '1';
            X1 <= '0';
            X2 <= '0';
            X3 <= '0';
            S <= "00";
            wait for 20 ns;
            --
            X0 <= '0';
            X1 <= '1';
            X2 <= '0';
            X3 <= '0';
            S <= "00";
            wait for 20 ns;
            --
            X0 <= '0';
            X1 <= '1';
            X2 <= '0';
            X3 <= '0';
            S <= "01";
            wait for 20 ns;
            --
            X0 <= '0';
            X1 <= '0';
            X2 <= '0';
            X3 <= '0';
            S <= "01";
            wait for 20 ns;
            --
            X0 <= '0';
            X1 <= '0';
            X2 <= '1';
            X3 <= '0';
            S <= "10";
            wait for 20 ns;
            --
            X0 <= '0';
            X1 <= '0';
            X2 <= '0';
            X3 <= '0';
            S <= "10";
            wait for 20 ns;
            --
            X0 <= '0';
            X1 <= '0';
            X2 <= '0';
            X3 <= '1';
            S <= "11";
            wait for 20 ns;
            --
            X0 <= '0';
            X1 <= '0';
            X2 <= '0';
            X3 <= '0';
            S <= "11";
            wait;
            --
        end process;
    end Simulation;
