--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:36:06 10/22/2019
-- Design Name:   
-- Module Name:   /home/sanchit/VHDL/Assignments/UpCounter/UpCounter_tb.vhd
-- Project Name:  UpCounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UpCounter_module
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
 
ENTITY UpCounter_tb IS
END UpCounter_tb;
 
ARCHITECTURE behavior OF UpCounter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UpCounter_module
    PORT(
         clock : IN  std_logic;
         clear : IN  std_logic;
         Count : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal clear : std_logic := '0';

 	--Outputs
   signal Count : std_logic_vector(2 downto 0);

   -- Clock period definitions
   --constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UpCounter_module PORT MAP (
          clock => clock,
          clear => clear,
          Count => Count
        );

	process
	begin
	
		wait for 5ns;
		clock <= not clock;
		
	end process;
   
   -- Stimulus process
   process
   begin		
	
			clear <= '1';
			wait for 20ns;
			clear <= not clear;
			wait;
      
   end process;

END;
