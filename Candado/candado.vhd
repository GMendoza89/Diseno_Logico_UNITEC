LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

Entity Candado is
    port(
        D : in std_logic;
        LD: in std_logic;
        Q : out std_logic
    );
End Candado;
Architecture simple of Candado is
    Begin
        process(D,LD)
        begin
            if(LD = '1') then
                Q <= D;
            end if;
        end process;
end simple;
