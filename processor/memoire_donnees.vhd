----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:14 04/22/2020 
-- Design Name: 
-- Module Name:    memoire_donnees - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memoire_donnees is
    Port ( ADDR : in  STD_LOGIC_VECTOR (7 downto 0);
           INPUT : in  STD_LOGIC_VECTOR (7 downto 0);
           RW : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0));
end memoire_donnees;

architecture Behavioral of memoire_donnees is
	type registers_array is array (natural range 255 downto 0) of std_logic_vector (7 downto 0);

	signal registers: registers_array;
begin
	
	process (CLK) is
	begin
		-- synchrone sur front descendant
		if falling_edge(CLK) then
		
			OUTPUT <= (others => '0');
			
			if RST = '0' then
				registers <= (others => b"00000000");		
			else

				if RW = '1' then -- READ
					OUTPUT <= registers(to_integer(unsigned(ADDR)));
				else -- WRITE
					registers(to_integer(unsigned(ADDR))) <= INPUT;
				end if;
				
			end if;
		
		end if;
	
	end process;

end Behavioral;