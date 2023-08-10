-- Tabla de consulta de Datos
-- 
-- Diseño Lógico
-- Gustavo David Mendoza Pinto

LIBRARY IEEE; 
USE IEEE.std_logic_1164.all; 
Entity binary_SevenSegments is 
	 port(
		 X : in  std_logic_vector(7 downto 0);
		 Y : out std_logic_vector(27 downto 0));
END binary_SevenSegments; 
Architecture TABLE of binary_SevenSegments is 
BEGIN 
	 process(X) 
	 begin 
		 case X is 
			 when "00000000" => Y <= "0000000111111011111101111110"; -- binario 0 valor entero8 bits con signo 0
			 when "00000001" => Y <= "0000000111111011111100110000"; -- binario 1 valor entero8 bits con signo 1
			 when "00000010" => Y <= "0000000111111011111101001101"; -- binario 2 valor entero8 bits con signo 2
			 when "00000011" => Y <= "0000000111111011111101111001"; -- binario 3 valor entero8 bits con signo 3
			 when "00000100" => Y <= "0000000111111011111100110011"; -- binario 4 valor entero8 bits con signo 4
			 when "00000101" => Y <= "0000000111111011111101011011"; -- binario 5 valor entero8 bits con signo 5
			 when "00000110" => Y <= "0000000111111011111100011111"; -- binario 6 valor entero8 bits con signo 6
			 when "00000111" => Y <= "0000000111111011111101110001"; -- binario 7 valor entero8 bits con signo 7
			 when "00001000" => Y <= "0000000111111011111101111111"; -- binario 8 valor entero8 bits con signo 8
			 when "00001001" => Y <= "0000000111111011111101110011"; -- binario 9 valor entero8 bits con signo 9
			 when "00001010" => Y <= "0000000111111001100001111110"; -- binario 10 valor entero8 bits con signo 10
			 when "00001011" => Y <= "0000000111111001100000110000"; -- binario 11 valor entero8 bits con signo 11
			 when "00001100" => Y <= "0000000111111001100001001101"; -- binario 12 valor entero8 bits con signo 12
			 when "00001101" => Y <= "0000000111111001100001111001"; -- binario 13 valor entero8 bits con signo 13
			 when "00001110" => Y <= "0000000111111001100000110011"; -- binario 14 valor entero8 bits con signo 14
			 when "00001111" => Y <= "0000000111111001100001011011"; -- binario 15 valor entero8 bits con signo 15
			 when "00010000" => Y <= "0000000111111001100000011111"; -- binario 16 valor entero8 bits con signo 16
			 when "00010001" => Y <= "0000000111111001100001110001"; -- binario 17 valor entero8 bits con signo 17
			 when "00010010" => Y <= "0000000111111001100001111111"; -- binario 18 valor entero8 bits con signo 18
			 when "00010011" => Y <= "0000000111111001100001110011"; -- binario 19 valor entero8 bits con signo 19
			 when "00010100" => Y <= "0000000111111010011011111110"; -- binario 20 valor entero8 bits con signo 20
			 when "00010101" => Y <= "0000000111111010011010110000"; -- binario 21 valor entero8 bits con signo 21
			 when "00010110" => Y <= "0000000111111010011011001101"; -- binario 22 valor entero8 bits con signo 22
			 when "00010111" => Y <= "0000000111111010011011111001"; -- binario 23 valor entero8 bits con signo 23
			 when "00011000" => Y <= "0000000111111010011010110011"; -- binario 24 valor entero8 bits con signo 24
			 when "00011001" => Y <= "0000000111111010011011011011"; -- binario 25 valor entero8 bits con signo 25
			 when "00011010" => Y <= "0000000111111010011010011111"; -- binario 26 valor entero8 bits con signo 26
			 when "00011011" => Y <= "0000000111111010011011110001"; -- binario 27 valor entero8 bits con signo 27
			 when "00011100" => Y <= "0000000111111010011011111111"; -- binario 28 valor entero8 bits con signo 28
			 when "00011101" => Y <= "0000000111111010011011110011"; -- binario 29 valor entero8 bits con signo 29
			 when "00011110" => Y <= "0000000111111011110011111110"; -- binario 30 valor entero8 bits con signo 30
			 when "00011111" => Y <= "0000000111111011110010110000"; -- binario 31 valor entero8 bits con signo 31
			 when "00100000" => Y <= "0000000111111011110011001101"; -- binario 32 valor entero8 bits con signo 32
			 when "00100001" => Y <= "0000000111111011110011111001"; -- binario 33 valor entero8 bits con signo 33
			 when "00100010" => Y <= "0000000111111011110010110011"; -- binario 34 valor entero8 bits con signo 34
			 when "00100011" => Y <= "0000000111111011110011011011"; -- binario 35 valor entero8 bits con signo 35
			 when "00100100" => Y <= "0000000111111011110010011111"; -- binario 36 valor entero8 bits con signo 36
			 when "00100101" => Y <= "0000000111111011110011110001"; -- binario 37 valor entero8 bits con signo 37
			 when "00100110" => Y <= "0000000111111011110011111111"; -- binario 38 valor entero8 bits con signo 38
			 when "00100111" => Y <= "0000000111111011110011110011"; -- binario 39 valor entero8 bits con signo 39
			 when "00101000" => Y <= "0000000111111001100111111110"; -- binario 40 valor entero8 bits con signo 40
			 when "00101001" => Y <= "0000000111111001100110110000"; -- binario 41 valor entero8 bits con signo 41
			 when "00101010" => Y <= "0000000111111001100111001101"; -- binario 42 valor entero8 bits con signo 42
			 when "00101011" => Y <= "0000000111111001100111111001"; -- binario 43 valor entero8 bits con signo 43
			 when "00101100" => Y <= "0000000111111001100110110011"; -- binario 44 valor entero8 bits con signo 44
			 when "00101101" => Y <= "0000000111111001100111011011"; -- binario 45 valor entero8 bits con signo 45
			 when "00101110" => Y <= "0000000111111001100110011111"; -- binario 46 valor entero8 bits con signo 46
			 when "00101111" => Y <= "0000000111111001100111110001"; -- binario 47 valor entero8 bits con signo 47
			 when "00110000" => Y <= "0000000111111001100111111111"; -- binario 48 valor entero8 bits con signo 48
			 when "00110001" => Y <= "0000000111111001100111110011"; -- binario 49 valor entero8 bits con signo 49
			 when "00110010" => Y <= "0000000111111010110111111110"; -- binario 50 valor entero8 bits con signo 50
			 when "00110011" => Y <= "0000000111111010110110110000"; -- binario 51 valor entero8 bits con signo 51
			 when "00110100" => Y <= "0000000111111010110111001101"; -- binario 52 valor entero8 bits con signo 52
			 when "00110101" => Y <= "0000000111111010110111111001"; -- binario 53 valor entero8 bits con signo 53
			 when "00110110" => Y <= "0000000111111010110110110011"; -- binario 54 valor entero8 bits con signo 54
			 when "00110111" => Y <= "0000000111111010110111011011"; -- binario 55 valor entero8 bits con signo 55
			 when "00111000" => Y <= "0000000111111010110110011111"; -- binario 56 valor entero8 bits con signo 56
			 when "00111001" => Y <= "0000000111111010110111110001"; -- binario 57 valor entero8 bits con signo 57
			 when "00111010" => Y <= "0000000111111010110111111111"; -- binario 58 valor entero8 bits con signo 58
			 when "00111011" => Y <= "0000000111111010110111110011"; -- binario 59 valor entero8 bits con signo 59
			 when "00111100" => Y <= "0000000111111000111111111110"; -- binario 60 valor entero8 bits con signo 60
			 when "00111101" => Y <= "0000000111111000111110110000"; -- binario 61 valor entero8 bits con signo 61
			 when "00111110" => Y <= "0000000111111000111111001101"; -- binario 62 valor entero8 bits con signo 62
			 when "00111111" => Y <= "0000000111111000111111111001"; -- binario 63 valor entero8 bits con signo 63
			 when "01000000" => Y <= "0000000111111000111110110011"; -- binario 64 valor entero8 bits con signo 64
			 when "01000001" => Y <= "0000000111111000111111011011"; -- binario 65 valor entero8 bits con signo 65
			 when "01000010" => Y <= "0000000111111000111110011111"; -- binario 66 valor entero8 bits con signo 66
			 when "01000011" => Y <= "0000000111111000111111110001"; -- binario 67 valor entero8 bits con signo 67
			 when "01000100" => Y <= "0000000111111000111111111111"; -- binario 68 valor entero8 bits con signo 68
			 when "01000101" => Y <= "0000000111111000111111110011"; -- binario 69 valor entero8 bits con signo 69
			 when "01000110" => Y <= "0000000111111011100011111110"; -- binario 70 valor entero8 bits con signo 70
			 when "01000111" => Y <= "0000000111111011100010110000"; -- binario 71 valor entero8 bits con signo 71
			 when "01001000" => Y <= "0000000111111011100011001101"; -- binario 72 valor entero8 bits con signo 72
			 when "01001001" => Y <= "0000000111111011100011111001"; -- binario 73 valor entero8 bits con signo 73
			 when "01001010" => Y <= "0000000111111011100010110011"; -- binario 74 valor entero8 bits con signo 74
			 when "01001011" => Y <= "0000000111111011100011011011"; -- binario 75 valor entero8 bits con signo 75
			 when "01001100" => Y <= "0000000111111011100010011111"; -- binario 76 valor entero8 bits con signo 76
			 when "01001101" => Y <= "0000000111111011100011110001"; -- binario 77 valor entero8 bits con signo 77
			 when "01001110" => Y <= "0000000111111011100011111111"; -- binario 78 valor entero8 bits con signo 78
			 when "01001111" => Y <= "0000000111111011100011110011"; -- binario 79 valor entero8 bits con signo 79
			 when "01010000" => Y <= "0000000111111011111111111110"; -- binario 80 valor entero8 bits con signo 80
			 when "01010001" => Y <= "0000000111111011111110110000"; -- binario 81 valor entero8 bits con signo 81
			 when "01010010" => Y <= "0000000111111011111111001101"; -- binario 82 valor entero8 bits con signo 82
			 when "01010011" => Y <= "0000000111111011111111111001"; -- binario 83 valor entero8 bits con signo 83
			 when "01010100" => Y <= "0000000111111011111110110011"; -- binario 84 valor entero8 bits con signo 84
			 when "01010101" => Y <= "0000000111111011111111011011"; -- binario 85 valor entero8 bits con signo 85
			 when "01010110" => Y <= "0000000111111011111110011111"; -- binario 86 valor entero8 bits con signo 86
			 when "01010111" => Y <= "0000000111111011111111110001"; -- binario 87 valor entero8 bits con signo 87
			 when "01011000" => Y <= "0000000111111011111111111111"; -- binario 88 valor entero8 bits con signo 88
			 when "01011001" => Y <= "0000000111111011111111110011"; -- binario 89 valor entero8 bits con signo 89
			 when "01011010" => Y <= "0000000111111011100111111110"; -- binario 90 valor entero8 bits con signo 90
			 when "01011011" => Y <= "0000000111111011100110110000"; -- binario 91 valor entero8 bits con signo 91
			 when "01011100" => Y <= "0000000111111011100111001101"; -- binario 92 valor entero8 bits con signo 92
			 when "01011101" => Y <= "0000000111111011100111111001"; -- binario 93 valor entero8 bits con signo 93
			 when "01011110" => Y <= "0000000111111011100110110011"; -- binario 94 valor entero8 bits con signo 94
			 when "01011111" => Y <= "0000000111111011100111011011"; -- binario 95 valor entero8 bits con signo 95
			 when "01100000" => Y <= "0000000111111011100110011111"; -- binario 96 valor entero8 bits con signo 96
			 when "01100001" => Y <= "0000000111111011100111110001"; -- binario 97 valor entero8 bits con signo 97
			 when "01100010" => Y <= "0000000111111011100111111111"; -- binario 98 valor entero8 bits con signo 98
			 when "01100011" => Y <= "0000000111111011100111110011"; -- binario 99 valor entero8 bits con signo 99
			 when "01100100" => Y <= "0000000011000011111101111110"; -- binario 100 valor entero8 bits con signo 100
			 when "01100101" => Y <= "0000000011000011111100110000"; -- binario 101 valor entero8 bits con signo 101
			 when "01100110" => Y <= "0000000011000011111101001101"; -- binario 102 valor entero8 bits con signo 102
			 when "01100111" => Y <= "0000000011000011111101111001"; -- binario 103 valor entero8 bits con signo 103
			 when "01101000" => Y <= "0000000011000011111100110011"; -- binario 104 valor entero8 bits con signo 104
			 when "01101001" => Y <= "0000000011000011111101011011"; -- binario 105 valor entero8 bits con signo 105
			 when "01101010" => Y <= "0000000011000011111100011111"; -- binario 106 valor entero8 bits con signo 106
			 when "01101011" => Y <= "0000000011000011111101110001"; -- binario 107 valor entero8 bits con signo 107
			 when "01101100" => Y <= "0000000011000011111101111111"; -- binario 108 valor entero8 bits con signo 108
			 when "01101101" => Y <= "0000000011000011111101110011"; -- binario 109 valor entero8 bits con signo 109
			 when "01101110" => Y <= "0000000011000001100001111110"; -- binario 110 valor entero8 bits con signo 110
			 when "01101111" => Y <= "0000000011000001100000110000"; -- binario 111 valor entero8 bits con signo 111
			 when "01110000" => Y <= "0000000011000001100001001101"; -- binario 112 valor entero8 bits con signo 112
			 when "01110001" => Y <= "0000000011000001100001111001"; -- binario 113 valor entero8 bits con signo 113
			 when "01110010" => Y <= "0000000011000001100000110011"; -- binario 114 valor entero8 bits con signo 114
			 when "01110011" => Y <= "0000000011000001100001011011"; -- binario 115 valor entero8 bits con signo 115
			 when "01110100" => Y <= "0000000011000001100000011111"; -- binario 116 valor entero8 bits con signo 116
			 when "01110101" => Y <= "0000000011000001100001110001"; -- binario 117 valor entero8 bits con signo 117
			 when "01110110" => Y <= "0000000011000001100001111111"; -- binario 118 valor entero8 bits con signo 118
			 when "01110111" => Y <= "0000000011000001100001110011"; -- binario 119 valor entero8 bits con signo 119
			 when "01111000" => Y <= "0000000011000010011011111110"; -- binario 120 valor entero8 bits con signo 120
			 when "01111001" => Y <= "0000000011000010011010110000"; -- binario 121 valor entero8 bits con signo 121
			 when "01111010" => Y <= "0000000011000010011011001101"; -- binario 122 valor entero8 bits con signo 122
			 when "01111011" => Y <= "0000000011000010011011111001"; -- binario 123 valor entero8 bits con signo 123
			 when "01111100" => Y <= "0000000011000010011010110011"; -- binario 124 valor entero8 bits con signo 124
			 when "01111101" => Y <= "0000000011000010011011011011"; -- binario 125 valor entero8 bits con signo 125
			 when "01111110" => Y <= "0000000011000010011010011111"; -- binario 126 valor entero8 bits con signo 126
			 when "01111111" => Y <= "0000000011000010011011110001"; -- binario 127 valor entero8 bits con signo 127
			 when "10000000" => Y <= "0000001011000010011011111111"; -- binario 128 valor entero8 bits con signo -128
			 when "10000001" => Y <= "0000001011000010011011110001"; -- binario 129 valor entero8 bits con signo -127
			 when "10000010" => Y <= "0000001011000010011010011111"; -- binario 130 valor entero8 bits con signo -126
			 when "10000011" => Y <= "0000001011000010011011011011"; -- binario 131 valor entero8 bits con signo -125
			 when "10000100" => Y <= "0000001011000010011010110011"; -- binario 132 valor entero8 bits con signo -124
			 when "10000101" => Y <= "0000001011000010011011111001"; -- binario 133 valor entero8 bits con signo -123
			 when "10000110" => Y <= "0000001011000010011011001101"; -- binario 134 valor entero8 bits con signo -122
			 when "10000111" => Y <= "0000001011000010011010110000"; -- binario 135 valor entero8 bits con signo -121
			 when "10001000" => Y <= "0000001011000010011011111110"; -- binario 136 valor entero8 bits con signo -120
			 when "10001001" => Y <= "0000001011000001100001110011"; -- binario 137 valor entero8 bits con signo -119
			 when "10001010" => Y <= "0000001011000001100001111111"; -- binario 138 valor entero8 bits con signo -118
			 when "10001011" => Y <= "0000001011000001100001110001"; -- binario 139 valor entero8 bits con signo -117
			 when "10001100" => Y <= "0000001011000001100000011111"; -- binario 140 valor entero8 bits con signo -116
			 when "10001101" => Y <= "0000001011000001100001011011"; -- binario 141 valor entero8 bits con signo -115
			 when "10001110" => Y <= "0000001011000001100000110011"; -- binario 142 valor entero8 bits con signo -114
			 when "10001111" => Y <= "0000001011000001100001111001"; -- binario 143 valor entero8 bits con signo -113
			 when "10010000" => Y <= "0000001011000001100001001101"; -- binario 144 valor entero8 bits con signo -112
			 when "10010001" => Y <= "0000001011000001100000110000"; -- binario 145 valor entero8 bits con signo -111
			 when "10010010" => Y <= "0000001011000001100001111110"; -- binario 146 valor entero8 bits con signo -110
			 when "10010011" => Y <= "0000001011000011111101110011"; -- binario 147 valor entero8 bits con signo -109
			 when "10010100" => Y <= "0000001011000011111101111111"; -- binario 148 valor entero8 bits con signo -108
			 when "10010101" => Y <= "0000001011000011111101110001"; -- binario 149 valor entero8 bits con signo -107
			 when "10010110" => Y <= "0000001011000011111100011111"; -- binario 150 valor entero8 bits con signo -106
			 when "10010111" => Y <= "0000001011000011111101011011"; -- binario 151 valor entero8 bits con signo -105
			 when "10011000" => Y <= "0000001011000011111100110011"; -- binario 152 valor entero8 bits con signo -104
			 when "10011001" => Y <= "0000001011000011111101111001"; -- binario 153 valor entero8 bits con signo -103
			 when "10011010" => Y <= "0000001011000011111101001101"; -- binario 154 valor entero8 bits con signo -102
			 when "10011011" => Y <= "0000001011000011111100110000"; -- binario 155 valor entero8 bits con signo -101
			 when "10011100" => Y <= "0000001011000011111101111110"; -- binario 156 valor entero8 bits con signo -100
			 when "10011101" => Y <= "0000001111111011100111110011"; -- binario 157 valor entero8 bits con signo -99
			 when "10011110" => Y <= "0000001111111011100111111111"; -- binario 158 valor entero8 bits con signo -98
			 when "10011111" => Y <= "0000001111111011100111110001"; -- binario 159 valor entero8 bits con signo -97
			 when "10100000" => Y <= "0000001111111011100110011111"; -- binario 160 valor entero8 bits con signo -96
			 when "10100001" => Y <= "0000001111111011100111011011"; -- binario 161 valor entero8 bits con signo -95
			 when "10100010" => Y <= "0000001111111011100110110011"; -- binario 162 valor entero8 bits con signo -94
			 when "10100011" => Y <= "0000001111111011100111111001"; -- binario 163 valor entero8 bits con signo -93
			 when "10100100" => Y <= "0000001111111011100111001101"; -- binario 164 valor entero8 bits con signo -92
			 when "10100101" => Y <= "0000001111111011100110110000"; -- binario 165 valor entero8 bits con signo -91
			 when "10100110" => Y <= "0000001111111011100111111110"; -- binario 166 valor entero8 bits con signo -90
			 when "10100111" => Y <= "0000001111111011111111110011"; -- binario 167 valor entero8 bits con signo -89
			 when "10101000" => Y <= "0000001111111011111111111111"; -- binario 168 valor entero8 bits con signo -88
			 when "10101001" => Y <= "0000001111111011111111110001"; -- binario 169 valor entero8 bits con signo -87
			 when "10101010" => Y <= "0000001111111011111110011111"; -- binario 170 valor entero8 bits con signo -86
			 when "10101011" => Y <= "0000001111111011111111011011"; -- binario 171 valor entero8 bits con signo -85
			 when "10101100" => Y <= "0000001111111011111110110011"; -- binario 172 valor entero8 bits con signo -84
			 when "10101101" => Y <= "0000001111111011111111111001"; -- binario 173 valor entero8 bits con signo -83
			 when "10101110" => Y <= "0000001111111011111111001101"; -- binario 174 valor entero8 bits con signo -82
			 when "10101111" => Y <= "0000001111111011111110110000"; -- binario 175 valor entero8 bits con signo -81
			 when "10110000" => Y <= "0000001111111011111111111110"; -- binario 176 valor entero8 bits con signo -80
			 when "10110001" => Y <= "0000001111111011100011110011"; -- binario 177 valor entero8 bits con signo -79
			 when "10110010" => Y <= "0000001111111011100011111111"; -- binario 178 valor entero8 bits con signo -78
			 when "10110011" => Y <= "0000001111111011100011110001"; -- binario 179 valor entero8 bits con signo -77
			 when "10110100" => Y <= "0000001111111011100010011111"; -- binario 180 valor entero8 bits con signo -76
			 when "10110101" => Y <= "0000001111111011100011011011"; -- binario 181 valor entero8 bits con signo -75
			 when "10110110" => Y <= "0000001111111011100010110011"; -- binario 182 valor entero8 bits con signo -74
			 when "10110111" => Y <= "0000001111111011100011111001"; -- binario 183 valor entero8 bits con signo -73
			 when "10111000" => Y <= "0000001111111011100011001101"; -- binario 184 valor entero8 bits con signo -72
			 when "10111001" => Y <= "0000001111111011100010110000"; -- binario 185 valor entero8 bits con signo -71
			 when "10111010" => Y <= "0000001111111011100011111110"; -- binario 186 valor entero8 bits con signo -70
			 when "10111011" => Y <= "0000001111111000111111110011"; -- binario 187 valor entero8 bits con signo -69
			 when "10111100" => Y <= "0000001111111000111111111111"; -- binario 188 valor entero8 bits con signo -68
			 when "10111101" => Y <= "0000001111111000111111110001"; -- binario 189 valor entero8 bits con signo -67
			 when "10111110" => Y <= "0000001111111000111110011111"; -- binario 190 valor entero8 bits con signo -66
			 when "10111111" => Y <= "0000001111111000111111011011"; -- binario 191 valor entero8 bits con signo -65
			 when "11000000" => Y <= "0000001111111000111110110011"; -- binario 192 valor entero8 bits con signo -64
			 when "11000001" => Y <= "0000001111111000111111111001"; -- binario 193 valor entero8 bits con signo -63
			 when "11000010" => Y <= "0000001111111000111111001101"; -- binario 194 valor entero8 bits con signo -62
			 when "11000011" => Y <= "0000001111111000111110110000"; -- binario 195 valor entero8 bits con signo -61
			 when "11000100" => Y <= "0000001111111000111111111110"; -- binario 196 valor entero8 bits con signo -60
			 when "11000101" => Y <= "0000001111111010110111110011"; -- binario 197 valor entero8 bits con signo -59
			 when "11000110" => Y <= "0000001111111010110111111111"; -- binario 198 valor entero8 bits con signo -58
			 when "11000111" => Y <= "0000001111111010110111110001"; -- binario 199 valor entero8 bits con signo -57
			 when "11001000" => Y <= "0000001111111010110110011111"; -- binario 200 valor entero8 bits con signo -56
			 when "11001001" => Y <= "0000001111111010110111011011"; -- binario 201 valor entero8 bits con signo -55
			 when "11001010" => Y <= "0000001111111010110110110011"; -- binario 202 valor entero8 bits con signo -54
			 when "11001011" => Y <= "0000001111111010110111111001"; -- binario 203 valor entero8 bits con signo -53
			 when "11001100" => Y <= "0000001111111010110111001101"; -- binario 204 valor entero8 bits con signo -52
			 when "11001101" => Y <= "0000001111111010110110110000"; -- binario 205 valor entero8 bits con signo -51
			 when "11001110" => Y <= "0000001111111010110111111110"; -- binario 206 valor entero8 bits con signo -50
			 when "11001111" => Y <= "0000001111111001100111110011"; -- binario 207 valor entero8 bits con signo -49
			 when "11010000" => Y <= "0000001111111001100111111111"; -- binario 208 valor entero8 bits con signo -48
			 when "11010001" => Y <= "0000001111111001100111110001"; -- binario 209 valor entero8 bits con signo -47
			 when "11010010" => Y <= "0000001111111001100110011111"; -- binario 210 valor entero8 bits con signo -46
			 when "11010011" => Y <= "0000001111111001100111011011"; -- binario 211 valor entero8 bits con signo -45
			 when "11010100" => Y <= "0000001111111001100110110011"; -- binario 212 valor entero8 bits con signo -44
			 when "11010101" => Y <= "0000001111111001100111111001"; -- binario 213 valor entero8 bits con signo -43
			 when "11010110" => Y <= "0000001111111001100111001101"; -- binario 214 valor entero8 bits con signo -42
			 when "11010111" => Y <= "0000001111111001100110110000"; -- binario 215 valor entero8 bits con signo -41
			 when "11011000" => Y <= "0000001111111001100111111110"; -- binario 216 valor entero8 bits con signo -40
			 when "11011001" => Y <= "0000001111111011110011110011"; -- binario 217 valor entero8 bits con signo -39
			 when "11011010" => Y <= "0000001111111011110011111111"; -- binario 218 valor entero8 bits con signo -38
			 when "11011011" => Y <= "0000001111111011110011110001"; -- binario 219 valor entero8 bits con signo -37
			 when "11011100" => Y <= "0000001111111011110010011111"; -- binario 220 valor entero8 bits con signo -36
			 when "11011101" => Y <= "0000001111111011110011011011"; -- binario 221 valor entero8 bits con signo -35
			 when "11011110" => Y <= "0000001111111011110010110011"; -- binario 222 valor entero8 bits con signo -34
			 when "11011111" => Y <= "0000001111111011110011111001"; -- binario 223 valor entero8 bits con signo -33
			 when "11100000" => Y <= "0000001111111011110011001101"; -- binario 224 valor entero8 bits con signo -32
			 when "11100001" => Y <= "0000001111111011110010110000"; -- binario 225 valor entero8 bits con signo -31
			 when "11100010" => Y <= "0000001111111011110011111110"; -- binario 226 valor entero8 bits con signo -30
			 when "11100011" => Y <= "0000001111111010011011110011"; -- binario 227 valor entero8 bits con signo -29
			 when "11100100" => Y <= "0000001111111010011011111111"; -- binario 228 valor entero8 bits con signo -28
			 when "11100101" => Y <= "0000001111111010011011110001"; -- binario 229 valor entero8 bits con signo -27
			 when "11100110" => Y <= "0000001111111010011010011111"; -- binario 230 valor entero8 bits con signo -26
			 when "11100111" => Y <= "0000001111111010011011011011"; -- binario 231 valor entero8 bits con signo -25
			 when "11101000" => Y <= "0000001111111010011010110011"; -- binario 232 valor entero8 bits con signo -24
			 when "11101001" => Y <= "0000001111111010011011111001"; -- binario 233 valor entero8 bits con signo -23
			 when "11101010" => Y <= "0000001111111010011011001101"; -- binario 234 valor entero8 bits con signo -22
			 when "11101011" => Y <= "0000001111111010011010110000"; -- binario 235 valor entero8 bits con signo -21
			 when "11101100" => Y <= "0000001111111010011011111110"; -- binario 236 valor entero8 bits con signo -20
			 when "11101101" => Y <= "0000001111111001100001110011"; -- binario 237 valor entero8 bits con signo -19
			 when "11101110" => Y <= "0000001111111001100001111111"; -- binario 238 valor entero8 bits con signo -18
			 when "11101111" => Y <= "0000001111111001100001110001"; -- binario 239 valor entero8 bits con signo -17
			 when "11110000" => Y <= "0000001111111001100000011111"; -- binario 240 valor entero8 bits con signo -16
			 when "11110001" => Y <= "0000001111111001100001011011"; -- binario 241 valor entero8 bits con signo -15
			 when "11110010" => Y <= "0000001111111001100000110011"; -- binario 242 valor entero8 bits con signo -14
			 when "11110011" => Y <= "0000001111111001100001111001"; -- binario 243 valor entero8 bits con signo -13
			 when "11110100" => Y <= "0000001111111001100001001101"; -- binario 244 valor entero8 bits con signo -12
			 when "11110101" => Y <= "0000001111111001100000110000"; -- binario 245 valor entero8 bits con signo -11
			 when "11110110" => Y <= "0000001111111001100001111110"; -- binario 246 valor entero8 bits con signo -10
			 when "11110111" => Y <= "0000001111111011111101110011"; -- binario 247 valor entero8 bits con signo -9
			 when "11111000" => Y <= "0000001111111011111101111111"; -- binario 248 valor entero8 bits con signo -8
			 when "11111001" => Y <= "0000001111111011111101110001"; -- binario 249 valor entero8 bits con signo -7
			 when "11111010" => Y <= "0000001111111011111100011111"; -- binario 250 valor entero8 bits con signo -6
			 when "11111011" => Y <= "0000001111111011111101011011"; -- binario 251 valor entero8 bits con signo -5
			 when "11111100" => Y <= "0000001111111011111100110011"; -- binario 252 valor entero8 bits con signo -4
			 when "11111101" => Y <= "0000001111111011111101111001"; -- binario 253 valor entero8 bits con signo -3
			 when "11111110" => Y <= "0000001111111011111101001101"; -- binario 254 valor entero8 bits con signo -2
			 when "11111111" => Y <= "0000001111111011111100110000"; -- binario 255 valor entero8 bits con signo -1
			 when others => null; 
		 end case; 
	 end process; 
END TABLE; 
