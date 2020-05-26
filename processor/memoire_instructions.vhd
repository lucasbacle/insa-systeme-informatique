----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:27 04/22/2020 
-- Design Name: 
-- Module Name:    memoire_instructions - Behavioral 
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

entity memoire_instructions is
    Port ( ADDR : in  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (31 downto 0));
end memoire_instructions;

architecture Behavioral of memoire_instructions is
	type registers_array is array (natural range 0 to 255) of std_logic_vector (31 downto 0);

	signal registers: registers_array;
begin
	registers <= (x"06010200", x"06020600", x"00000000", x"00000000", x"00000000", x"03030201", x"00000000", x"00000000", x"00000000", x"08000300", x"07FF0000", others => x"00000000");
	
	process (CLK) is
	begin
	
		if falling_edge(CLK) then
			OUTPUT <= registers(to_integer(unsigned(ADDR)));
		end if;
	
	end process;

end Behavioral;

