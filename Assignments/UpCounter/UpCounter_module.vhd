----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:00:32 10/22/2019 
-- Design Name: 
-- Module Name:    UpCounter_module - Structural 
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

entity UpCounter_module is
    Port ( clock : in  STD_LOGIC;
			clear: in  STD_LOGIC;
           Count : out  STD_LOGIC_VECTOR(2 downto 0));
end UpCounter_module;

architecture Structural of UpCounter_module is
 Component JK_FF 
			Port ( j : in  STD_LOGIC;
			k : in  STD_LOGIC;
			clear : in  STD_LOGIC;
			clock : in  STD_LOGIC;
			q : out  STD_LOGIC);
 end Component;
		signal temp : STD_LOGIC_VECTOR(2 downto 0):="000";
begin

		JK_FF1: JK_FF port map(clear=>clear,clock=>clock,j=>'1',k=>'1',q=>temp(2));
		JK_FF2: JK_FF port map(clear=>clear,clock=>not temp(2),j=>'1',k=>'1',q=>temp(1));
		JK_FF3: JK_FF port map(clear=>clear,clock=>not temp(1),j=>'1',k=>'1',q=>temp(0));
		
		Count(2) <= temp(0);
		Count(1) <= temp(1);
		Count(0) <= temp(2);
	
end Structural;

