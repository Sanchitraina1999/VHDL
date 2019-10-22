--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:15:39 10/22/2019
-- Design Name:   
-- Module Name:   /home/sanchit/VHDL/Assignments/FlipFlop_JK/FF_tb.vhd
-- Project Name:  FlipFlop_JK
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FF_module
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY FF_tb IS
END FF_tb;
 
ARCHITECTURE behavior OF FF_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FF_module
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         CLR : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic;
         Q_bar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal CLR : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Q_bar : std_logic;

   -- Clock period definitions
   --constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FF_module PORT MAP (
          J => J,
          K => K,
          CLR => CLR,
          CLK => CLK,
          Q => Q,
          Q_bar => Q_bar
        );

   -- Clock process definitions
   CLK_process :process
   begin
		wait for 5 ns;
		clk <= not clk;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      clr<='1';
		j <= '1';
		k <= '1';
		wait for 10 ns;
			
		clr<='0';
		j<='0';
		k<='1';
		wait for 10 ns;
			
		clr<='0';
		j<='1';
		k<='0';
		wait for 10 ns;
			
		clr<='0';
		j<='1';
		k<='1';
		wait for 10 ns;
		
		clr<='0';
		j<='0';
		k<='0';
		wait for 10 ns;
			
   end process;

END;
