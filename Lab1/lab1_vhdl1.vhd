LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab1_vhdl1 IS
PORT(
x1,x2,x3: IN STD_logic;
f: OUT STD_logic);
END lab1_vhdl1;

ARCHITECTURE Behavoir OF lab1_vhdl1 IS
BEGIN 
f <= (x1 and x2) or ((not x2) and x3);
END Behavoir;