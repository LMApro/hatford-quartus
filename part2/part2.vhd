LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part2 IS
	PORT (
		SW: IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		LEDR: OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
		LEDG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END part2;

ARCHITECTURE structure OF part2 IS
	SIGNAL selectsignal: STD_LOGIC;
	SIGNAL X, Y, M: STD_LOGIC_VECTOR(7 DOWNTO 0);
	
BEGIN
	LEDR <= SW;
	X <= SW(7 DOWNTO 0);
	Y <= SW(15 DOWNTO 8);
	selectsignal <= SW(17);
	
	M(0) <= (NOT(selectsignal) AND X(0)) OR (selectsignal AND Y(0));
	M(1) <= (NOT(selectsignal) AND X(1)) OR (selectsignal AND Y(1));
	M(2) <= (NOT(selectsignal) AND X(2)) OR (selectsignal AND Y(2));
	M(3) <= (NOT(selectsignal) AND X(3)) OR (selectsignal AND Y(3));
	M(4) <= (NOT(selectsignal) AND X(4)) OR (selectsignal AND Y(4));
	M(5) <= (NOT(selectsignal) AND X(5)) OR (selectsignal AND Y(5));
	M(6) <= (NOT(selectsignal) AND X(6)) OR (selectsignal AND Y(6));
	M(7) <= (NOT(selectsignal) AND X(7)) OR (selectsignal AND Y(7));
	
	LEDG(7 DOWNTO 0) <= M;
END structure;