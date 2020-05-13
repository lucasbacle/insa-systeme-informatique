----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:26:06 04/30/2020 
-- Design Name: 
-- Module Name:    pipeline_buffer - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pipeline_buffer is
    Port ( RST : in STD_LOGIC;
			  CLK : in STD_LOGIC;
			  A_in : in  STD_LOGIC_VECTOR (7 downto 0);
           B_in : in  STD_LOGIC_VECTOR (7 downto 0);
           C_in : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_in : in  STD_LOGIC_VECTOR (7 downto 0);
           A_out : out  STD_LOGIC_VECTOR (7 downto 0);
           B_out : out  STD_LOGIC_VECTOR (7 downto 0);
           C_out : out  STD_LOGIC_VECTOR (7 downto 0);
           OP_out : out  STD_LOGIC_VECTOR (7 downto 0));
end pipeline_buffer;

architecture Behavioral of pipeline_buffer is

begin

	process (CLK) is
	begin
		
		if rising_edge(CLK) then
			if RST = '0' then
				A_out <= x"00";
				B_out <= x"00";
				C_out <= x"00";
				OP_out <= x"00";
			else
				A_out <= A_in;
				B_out <= B_in;
				C_out <= C_in;
				OP_out <= OP_in;
			end if;
		end if;
	
	end process;

end Behavioral;

