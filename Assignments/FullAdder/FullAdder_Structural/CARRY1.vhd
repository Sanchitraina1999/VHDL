----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:54:25 10/22/2019 
-- Design Name: 
-- Module Name:    CARRY1 - Behavioral 
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

entity CARRY1 is
    Port ( P : in  STD_LOGIC;
           Q : in  STD_LOGIC;
           R : in  STD_LOGIC;
           CARR : out  STD_LOGIC);
end CARRY1;

architecture Behavioral of CARRY1 is

begin
	CARR <= (P AND Q) OR (Q AND R) OR (R AND P);
end Behavioral;

