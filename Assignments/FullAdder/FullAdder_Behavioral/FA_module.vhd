----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:39:39 10/22/2019 
-- Design Name: 
-- Module Name:    FA_module - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA_module is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end FA_module;

architecture Behavioral of FA_module is
begin
	P1: PROCESS(A,B,C)
begin
	IF(A<='0' AND B <='0' AND C <= '0')then
		Sum <= '0';
		Carry <= '0';
	
	ELSIF(A<='0' AND B <='0' AND C <= '1')then
		Sum <= '1';
		Carry <= '0';

	ELSIF(A<='0' AND B <='1' AND C <= '0')then
		Sum <= '1';
		Carry <= '0';
		
	ELSIF(A<='0' AND B <='1' AND C <= '1')then
		Sum <= '0';
		Carry <= '1';
		
	ELSIF(A<='1' AND B <='0' AND C <= '0')then
		Sum <= '1';
		Carry <= '0';
		
	ELSIF(A<='1' AND B <='0' AND C <= '1')then
		Sum <= '0';
		Carry <= '1';
		
	ELSIF(A<='1' AND B <='1' AND C <= '0')then
		Sum <= '0';
		Carry <= '1';
		
	ELSE
		Sum <= '1';
		Carry <= '1';
		
	END IF;
end PROCESS P1;
end Behavioral;

