----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:39:19 04/21/2020 
-- Design Name: 
-- Module Name:    UAL - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--use ieee.numeric_std.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UAL is
    Port ( N : out  STD_LOGIC;
           O : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           C : out  STD_LOGIC;
           Ctrl_Alu : in  STD_LOGIC_VECTOR (2 downto 0);
           A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0));
end UAL;

architecture Behavioral of UAL is
	signal resultat_tmp : STD_LOGIC_VECTOR (15 downto 0); -- 1 bit more
begin
	
	Z <= '1' when resultat_tmp(7 downto 0) = 0 else '0';
	C <= resultat_tmp(8);
	N <= resultat_tmp(7);
	O <= '1' when resultat_tmp(15 downto 8) > 0 else '0'; 
	
	S <= resultat_tmp(7 downto 0);
	
	process (A, B, Ctrl_Alu, resultat_tmp) is
	begin
		if Ctrl_Alu = b"000" then
			-- ADD
			resultat_tmp <= (b"00000000" & A) + (b"00000000" &  B);
		elsif Ctrl_Alu = b"001" then
			-- SOU (A - B)
			resultat_tmp <= (b"00000000" & A) - (b"00000000" & B);
		elsif Ctrl_Alu = b"010" then
			-- MUL
			resultat_tmp <= A * B;
		else
			-- not implemented
			resultat_tmp <= (others => '0');
		end if;
		
	end process;

end Behavioral;

