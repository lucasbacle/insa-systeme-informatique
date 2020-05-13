--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:54:52 04/21/2020
-- Design Name:   
-- Module Name:   /home/lucasbacle/WORKSPACES/xilinx/processeur/UAL_test.vhd
-- Project Name:  processeur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UAL
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
 
ENTITY UAL_test IS
END UAL_test;
 
ARCHITECTURE behavior OF UAL_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UAL
    PORT(
         N : OUT  std_logic;
         O : OUT  std_logic;
         Z : OUT  std_logic;
         C : OUT  std_logic;
         Ctrl_Alu : IN  std_logic_vector(2 downto 0);
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         S : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Ctrl_Alu : std_logic_vector(2 downto 0) := (others => '0');
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal N : std_logic;
   signal O : std_logic;
   signal Z : std_logic;
   signal C : std_logic;
   signal S : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UAL PORT MAP (
          N => N,
          O => O,
          Z => Z,
          C => C,
          Ctrl_Alu => Ctrl_Alu,
          A => A,
          B => B,
          S => S
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;

      -- insert stimulus here
		Ctrl_Alu<=b"000";
		A<=b"00000001";
		B<=b"00000010";
		
		wait for 100 ns;
		
		Ctrl_Alu<=b"001";
		A<=b"00000011";
		B<=b"00000001";
		
		wait for 100 ns;
		
		Ctrl_Alu<=b"000";
		A<=b"11111111";
		B<=b"00000001";
		
		wait for 100 ns;
		
		Ctrl_Alu<=b"000";
		A<=b"10000001";
		B<=b"10000001";
		
		wait for 100 ns;
		
		Ctrl_Alu<=b"010";
		A<=b"00000001";
		B<=b"00000001";
		
		wait for 100 ns;
		
		Ctrl_Alu<=b"010";
		A<=b"00000010";
		B<=b"00000010";
		
		wait for 100 ns;
		
		Ctrl_Alu<=b"010";
		A<=b"11111111";
		B<=b"00000010";
		
		wait for 100 ns;
		
      wait;
   end process;

END;