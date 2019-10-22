----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:47:57 10/22/2019 
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

component SUM1
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           S : out  STD_LOGIC);
end component;

COMPONENT CARRY1
    Port ( P : in  STD_LOGIC;
           Q : in  STD_LOGIC;
           R : in  STD_LOGIC;
           CARR : out  STD_LOGIC);
end COMPONENT;

begin

V1: SUM1 PORT MAP(A,B,C,Sum);
V2: CARRY1 PORT MAP(A,B,C,Carry);

end Behavioral;

