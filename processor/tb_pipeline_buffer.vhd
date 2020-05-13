--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:41:47 04/30/2020
-- Design Name:   
-- Module Name:   /home/lucasbacle/WORKSPACES/xilinx/processeur/tb_pipeline_buffer.vhd
-- Project Name:  processeur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pipeline_buffer
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
 
ENTITY tb_pipeline_buffer IS
END tb_pipeline_buffer;
 
ARCHITECTURE behavior OF tb_pipeline_buffer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pipeline_buffer
    PORT(
         CLK : IN  std_logic;
         A_in : IN  std_logic_vector(7 downto 0);
         B_in : IN  std_logic_vector(7 downto 0);
         C_in : IN  std_logic_vector(7 downto 0);
         OP_in : IN  std_logic_vector(7 downto 0);
         A_out : OUT  std_logic_vector(7 downto 0);
         B_out : OUT  std_logic_vector(7 downto 0);
         C_out : OUT  std_logic_vector(7 downto 0);
         OP_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal A_in : std_logic_vector(7 downto 0) := (others => '0');
   signal B_in : std_logic_vector(7 downto 0) := (others => '0');
   signal C_in : std_logic_vector(7 downto 0) := (others => '0');
   signal OP_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal A_out : std_logic_vector(7 downto 0);
   signal B_out : std_logic_vector(7 downto 0);
   signal C_out : std_logic_vector(7 downto 0);
   signal OP_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pipeline_buffer PORT MAP (
          CLK => CLK,
          A_in => A_in,
          B_in => B_in,
          C_in => C_in,
          OP_in => OP_in,
          A_out => A_out,
          B_out => B_out,
          C_out => C_out,
          OP_out => OP_out
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here
		A_in<="11111111";
		B_in<="11111111";
		wait for CLK_period*10;
		
		A_in<="00000000";
		B_in<="00000000";
		wait for CLK_period*10;

      wait;
   end process;

END;
