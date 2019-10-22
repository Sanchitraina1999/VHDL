--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:33:53 10/21/2019
-- Design Name:   
-- Module Name:   /home/sanchit/VHDL/OrGate/Or_tb.vhd
-- Project Name:  OrGate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Or_module
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
 
ENTITY Or_tb IS
END Or_tb;
 
ARCHITECTURE behavior OF Or_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Or_module
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal C : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Or_module PORT MAP (
          A => A,
          B => B,
          C => C
        );

  

   -- Stimulus process
   process
   begin		
	
	A <='0';
	B <='0';
	WAIT FOR 10 NS;
	
	A <='0';
	B <='1';
	WAIT FOR 10 NS;
	
	A <='1';
	B <='0';
	WAIT FOR 10 NS;
	
	A <='1';
	B <='1';
	WAIT FOR 10 NS;
	
   end process;

END;
