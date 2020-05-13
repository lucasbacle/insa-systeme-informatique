--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:26:37 04/22/2020
-- Design Name:   
-- Module Name:   /home/lucasbacle/WORKSPACES/xilinx/processeur/tb_memoire_donnees.vhd
-- Project Name:  processeur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: memoire_donnees
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
 
ENTITY tb_memoire_donnees IS
END tb_memoire_donnees;
 
ARCHITECTURE behavior OF tb_memoire_donnees IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memoire_donnees
    PORT(
         ADDR : IN  std_logic_vector(7 downto 0);
         INPUT : IN  std_logic_vector(7 downto 0);
         RW : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ADDR : std_logic_vector(7 downto 0) := (others => '0');
   signal INPUT : std_logic_vector(7 downto 0) := (others => '0');
   signal RW : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memoire_donnees PORT MAP (
          ADDR => ADDR,
          INPUT => INPUT,
          RW => RW,
          RST => RST,
          CLK => CLK,
          OUTPUT => OUTPUT
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
		RST <= '1';
		RW <= '1';
		ADDR <= x"00";
		wait for CLK_period*10;
		
		RW <= '0';
		INPUT <= x"FF";
		ADDR <= x"01";
		wait for CLK_period*10;
		
		RW <= '1';
		ADDR <= x"01";
		wait for CLK_period*10;
		
      wait;
   end process;

END;
