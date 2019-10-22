--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:56:39 10/22/2019
-- Design Name:   
-- Module Name:   /home/sanchit/VHDL/Assignments/FullAdder_Behavioral/FA_tb.vhd
-- Project Name:  FullAdder_Structural
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FA_module
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
 
ENTITY FA_tb IS
END FA_tb;
 
ARCHITECTURE behavior OF FA_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FA_module
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FA_module PORT MAP (
          A => A,
          B => B,
          C => C,
          Sum => Sum,
          Carry => Carry
        );

   -- Clock process definitions

   -- Stimulus process
   process
   begin		
      A <= '0';
		B <= '0';
		C <= '0';
		wait for 10 ns;
		
		A <= '0';
		B <= '0';
		C <= '1';
		wait for 10 ns;
		
		A <= '0';
		B <= '1';
		C <= '0';
		wait for 10 ns;
		
		A <= '0';
		B <= '1';
		C <= '1';
		wait for 10 ns;
		
		A <= '1';
		B <= '0';
		C <= '0';
		wait for 10 ns;
		
		A <= '1';
		B <= '0';
		C <= '1';
		wait for 10 ns;
		
		A <= '1';
		B <= '1';
		C <= '0';
		wait for 10 ns;
		
		A <= '1';
		B <= '1';
		C <= '1';
		wait for 10 ns;
		
   end process;

END;
