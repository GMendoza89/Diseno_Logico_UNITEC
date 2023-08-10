Library IEEE;
use IEEE.std_logic_1164.all;

Entity Comparador is
    port(
        A  : in  std_logic;
        B  : in  std_logic;
        Gi : in  std_logic;
        Ei : in  std_logic;
        Li : in  std_logic;
        Go : out std_logic;
        Eo : out std_logic;
        Lo : out std_logic
    );
End Comparador;

Architecture Behavioral of Comparador is
    Begin
        Go <= Gi OR (Ei AND A AND NOT B);
        Eo <= Ei and (A XNOR B);
        Lo <= Li OR (Ei and NOT A AND B);
End Behavioral;

