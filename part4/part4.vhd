LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY part4 IS
	PORT (
		SW: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		HEX0, HEX1, HEX2, HEX3, HEX4: OUT STD_LOGIC_VECTOR(0 TO 6) -- HEX1, HEX2, HEX3,
		
	);
END part4;

ARCHITECTURE structure OF part4 IS
	SIGNAL c: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL tmp: STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL tmp0, tmp1, tmp2, tmp3: STD_LOGIC;
BEGIN
	c <= SW;
	
	tmp(0) <=  (C(3) and C(2) and NOT(C(1)) and C(0)) OR
		(C(3) and not(C(2)) and C(1) and C(0)) OR
		(not(C(3)) and C(2) and not(C(1)) and not(C(0))) OR
		(not(C(3)) and not(C(2)) and not(C(1)) and C(0))
		;
		
	tmp(1) <=  (c(3) and c(2) and c(1) and c(0)) OR
		(c(3) and c(2) and c(1) and not(c(0))) OR
		(c(3) and c(2) and not(c(1)) and not(c(0))) OR
		(c(3) and not(c(2)) and c(1) and c(0)) OR
		(not(c(3)) and c(2) and c(1) and not(c(0))) OR
		(not(c(3)) and c(2) and not(c(1)) and c(0))
	;
	
	tmp(2) <=   (c(3) and c(2) and c(1) and c(0)) OR
		(c(3) and c(2) and c(1) and not(c(0))) OR
		(c(3) and c(2) and not(c(1)) and not(c(0))) OR
		(not(c(3)) and not(c(2)) and c(1) and not(c(0))) ;
	
	tmp(3) <= (c(3) and c(2) and c(1) and c(0)) OR
		(c(3) and not(c(2)) and c(1) and not(c(0))) OR
		(not(c(3)) and c(2) and c(1) and c(0)) OR
		(not(c(3)) and c(2) and not(c(1)) and not(c(0))) OR
		(not(C(3)) and not(C(2)) and not(C(1)) and C(0))
	;  
		
	tmp(4) <= (C(3) and not(C(2)) and not(C(1)) and C(0)) OR
		(not(c(3)) and c(2) and c(1) and c(0)) OR
		(not(c(3)) and c(2) and not(c(1)) and c(0)) OR
		(not(c(3)) and c(2) and not(c(1)) and not(c(0))) OR
		(not(c(3)) and not(c(2)) and c(1) and c(0)) OR
		(not(C(3)) and not(C(2)) and not(C(1)) and C(0)); 
	
	tmp(5) <= (C(3) and C(2) and NOT(C(1)) and C(0)) OR
		(not(c(3)) and c(2) and c(1) and c(0)) OR
		(not(c(3)) and not(c(2)) and c(1) and c(0)) OR
		(not(c(3)) and not(c(2)) and c(1) and not(c(0))) OR
		(not(C(3)) and not(C(2)) and not(C(1)) and C(0));  
	
	tmp(6) <= (c(3) and c(2) and not(c(1)) and not(c(0))) OR
		(not(c(3)) and c(2) and c(1) and c(0)) OR
		(not(C(3)) and not(C(2)) and not(C(1)) and C(0)) OR
		(not(C(3)) and not(C(2)) and not(C(1)) and not(C(0)))
	; 
	
	HEX4 <= tmp;
	
	tmp0 <= c(0);
	HEX0(0) <= tmp0;
	HEX0(1) <= '0';
	HEX0(2) <= '0';
	HEX0(3) <= tmp0;
	HEX0(4) <= tmp0;
	HEX0(5) <= tmp0;
	HEX0(6) <= '1';
	
	tmp1 <= c(1);
	HEX1(0) <= tmp1;
	HEX1(1) <= '0';
	HEX1(2) <= '0';
	HEX1(3) <= tmp1;
	HEX1(4) <= tmp1;
	HEX1(5) <= tmp1;
	HEX1(6) <= '1';
	
	tmp3 <= c(3);
	HEX3(0) <= tmp3;
	HEX3(1) <= '0';
	HEX3(2) <= '0';
	HEX3(3) <= tmp3;
	HEX3(4) <= tmp3;
	HEX3(5) <= tmp3;
	HEX3(6) <= '1';
	
	tmp2 <= c(2);
	HEX2(0) <= tmp2;
	HEX2(1) <= '0';
	HEX2(2) <= '0';
	HEX2(3) <= tmp2;
	HEX2(4) <= tmp2;
	HEX2(5) <= tmp2;
	HEX2(6) <= '1';
	
	
	
END;