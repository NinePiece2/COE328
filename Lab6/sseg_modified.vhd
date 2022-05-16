LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY sseg_modified IS
PORT ( 
bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
neg : IN STD_LOGIC;
leds, ledss : OUT STD_LOGIC_VECTOR(1 TO 7));
END sseg_modified;

ARCHITECTURE Behavior OF sseg_modified IS
BEGIN
PROCESS (bcd, neg)

BEGIN

	if (neg ='0') then
		ledss <= ("0000000");
	end if;
	if (neg = '1') then
		ledss <= ("0000001");
	end if;

	CASE bcd IS --abcdefg
		WHEN "0000" =>leds <= ("0111011");--y
		WHEN "0001" =>leds <= ("0010101");--n
		WHEN OTHERS =>leds <= ("-------");
	END CASE;

END PROCESS;
END Behavior;