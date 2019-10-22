----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:59:25 10/22/2019 
-- Design Name: 
-- Module Name:    Mux_module - Behavioral 
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

architecture Behavioral of Mux_module is

component inv0
	Port ( pin : in  STD_LOGIC;
          pout : out  STD_LOGIC);
end component;

component and0
	Port ( inp1 : in  STD_LOGIC;
          inp2: in  STD_LOGIC;
          inp3 : in  STD_LOGIC;
          out4 : out  STD_LOGIC);
end component;
		 
component or0
	Port ( in1: in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           in3 : in  STD_LOGIC;
           in4: in  STD_LOGIC;
           ou5 : out  STD_LOGIC);
end component;
signal s0bar,s1bar,t1,t2,t3,t4 : STD_LOGIC;
begin
	inv_1: inv0 port map(s0,s0bar);
	inv_2: inv0 port map(S1,s1bar);
	and_1: and0 port map(s1bar,s0bar,d0,t1);
	and_2: and0 port map(s1bar,s0,d1,t2);
	and_3: and0 port map(s1,s0bar,d2,t3);
	and_4: and0 port map(s1,s0,d3,t4);
	or_1 : or0  port map(t1,t2,t3,t4,y);
	
end Behavioral;



