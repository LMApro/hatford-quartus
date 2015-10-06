LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part3 IS
	PORT (
		SW: IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		LEDR: OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
		LEDG: OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END part3;

ARCHITECTURE structure OF part3 IS
	SIGNAL m_0, m_1, m_2: STD_LOGIC_VECTOR(1 TO 3);
	SIGNAL S, U, V, W, X, Y, M: STD_LOGIC_VECTOR(2 DOWNTO 0);
	
BEGIN
	S <= SW(17 downto 15);
	U <= SW(2 downto 0);
	V <= SW(5 downto 3);
	W <= SW(8 downto 6);
	X <= SW(11 downto 9);
	Y <= SW(14 downto 12);
	
	LEDR <= SW;
	-- 5-to-1 multiplexer for bit 0 --
	m_0(1) <= (NOT(S(0)) AND U(0)) OR (S(0) AND V(0));
	m_0(2) <= (NOT(S(0)) AND W(0)) OR (S(0) AND X(0));
	m_0(3) <= (NOT(S(1)) AND m_0(1)) OR (S(1) AND m_0(2));
	M(0) <= (NOT(S(2)) AND m_0(3)) OR (S(2) AND Y(0));
	
	-- 5-to-1 multiplexer for bit 1 --
	m_1(1) <= (NOT(S(0)) AND U(1)) OR (S(0) AND V(1));
	m_1(2) <= (NOT(S(0)) AND W(1)) OR (S(0) AND X(1));
	m_1(3) <= (NOT(S(1)) AND m_1(1)) OR (S(1) AND m_1(2));
	M(1) <= (NOT(S(2)) AND m_1(3)) OR (S(2) AND Y(1));
	
	-- 5-to-1 multiplexer for bit 2 --
	m_2(1) <= (NOT(S(0)) AND U(2)) OR (S(0) AND V(2));
	m_2(2) <= (NOT(S(0)) AND W(2)) OR (S(0) AND X(2));
	m_2(3) <= (NOT(S(1)) AND m_2(1)) OR (S(1) AND m_2(2));
	M(2) <= (NOT(S(2)) AND m_2(3)) OR (S(2) AND Y(2));
	
	LEDG <= M;
	
END structure;