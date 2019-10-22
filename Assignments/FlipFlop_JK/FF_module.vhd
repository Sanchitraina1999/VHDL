----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:52:56 10/22/2019 
-- Design Name: 
-- Module Name:    FF_module - Behavioral 
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

entity FF_module is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_bar : out  STD_LOGIC);
end FF_module;

architecture Behavioral of FF_module is
	signal jk: STD_LOGIC_VECTOR(1 downto 0) := "00";
	signal q_temp : STD_LOGIC :='0';
begin
	jk <= j&k;
	process(CLR,CLK)
	begin
		if(CLR='1')then
			q_temp <= '0';
		elsif(CLK'event and CLK = '1')then
			case(jk) is
				when "00" => q_temp <= q_temp;
				when "01" => q_temp <= '0';
				when "10" => q_temp <= '1';
				when others => q_temp <= not q_temp;
			end case;
		end if;
	end process;
Q <= q_temp;
Q_bar <= not q_temp;
end Behavioral;

