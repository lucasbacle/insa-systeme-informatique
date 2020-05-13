--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:54:43 04/22/2020
-- Design Name:   
-- Module Name:   /home/lucasbacle/WORKSPACES/xilinx/processeur/tb_banc_de_registres.vhd
-- Project Name:  processeur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: banc_de_registres
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
 
ENTITY tb_banc_de_registres IS
END tb_banc_de_registres;
 
ARCHITECTURE behavior OF tb_banc_de_registres IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT banc_de_registres
    PORT(
         ADDR_A : IN  std_logic_vector(3 downto 0);
         ADDR_B : IN  std_logic_vector(3 downto 0);
         ADDR_W : IN  std_logic_vector(3 downto 0);
         W : IN  std_logic;
         DATA : IN  std_logic_vector(7 downto 0);
         RST : IN  std_logic;
         CLK : IN  std_logic;
         QA : OUT  std_logic_vector(7 downto 0);
         QB : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ADDR_A : std_logic_vector(3 downto 0) := (others => '0');
   signal ADDR_B : std_logic_vector(3 downto 0) := (others => '0');
   signal ADDR_W : std_logic_vector(3 downto 0) := (others => '0');
   signal W : std_logic := '0';
   signal DATA : std_logic_vector(7 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal QA : std_logic_vector(7 downto 0);
   signal QB : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: banc_de_registres PORT MAP (
          ADDR_A => ADDR_A,
          ADDR_B => ADDR_B,
          ADDR_W => ADDR_W,
          W => W,
          DATA => DATA,
          RST => RST,
          CLK => CLK,
          QA => QA,
          QB => QB
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
		RST <= '1'; -- clear reset
		ADDR_A <= x"0";
		ADDR_B <= x"1";
		wait for CLK_period*10;
		
		-- Write 0xEE at @0x2 
		W <= '1';
		DATA <= x"EE";
		ADDR_W <= x"2";
		wait for CLK_period*10;
		
		-- Read previous data
		ADDR_B <= x"2";
		W <= '0';
		wait for CLK_period*10;

      wait;
   end process;

END;
