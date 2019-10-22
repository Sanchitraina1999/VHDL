----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:29:38 10/22/2019 
-- Design Name: 
-- Module Name:    Mux_module - DataFlow 
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

entity Mux_module is
    Port ( d0 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           d2 : in  STD_LOGIC;
           d3 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end Mux_module;

architecture DataFlow of Mux_module is

begin

	--if(s1<='0' and s0 <='0')
		--y<=d0;
	--elsif(s1<='0' and s0 <='1')
		--y<=d1;
	--elsif(s1<='1' and s0 <='0')
		--y<=d2;
	--else
		--y<=d3;
	--end if;

	           --ANOTHER WAY--
	y <= d0 when s1 <= '0' and s0 <= '0'
	else d1 when s1 <= '0' and s0 <= '1'
	else d2 when s1 <= '1' and s0 <= '0'
	else d3 when s1 <= '0' and s0 <= '0';

end DataFlow;

