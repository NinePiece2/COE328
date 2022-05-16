LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab2_vhdl1 IS
PORT(
x1,x2,x3,x4: IN STD_logic;
f: OUT STD_logic);
END lab2_vhdl1;

ARCHITECTURE Behavoir OF lab2_vhdl1 IS
BEGIN 
f <= ((not x1) and x2 and (not x3)) or ((not x1) and x2 and x4) 
or (x2 and (not x3) and x4) or (x1 and (not x2) and x3);
END Behavoir;