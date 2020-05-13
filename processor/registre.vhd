----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:17 04/22/2020 
-- Design Name: 
-- Module Name:    banc_de_registres - Behavioral 
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
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
	
entity banc_de_registres is
    Port ( ADDR_A : in  STD_LOGIC_VECTOR (3 downto 0);
           ADDR_B : in  STD_LOGIC_VECTOR (3 downto 0);
           ADDR_W : in  STD_LOGIC_VECTOR (3 downto 0);
           W : in  STD_LOGIC;
           DATA : in  STD_LOGIC_VECTOR (7 downto 0);
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           QA : out  STD_LOGIC_VECTOR (7 downto 0);
           QB : out  STD_LOGIC_VECTOR (7 downto 0));
end banc_de_registres;

architecture Behavioral of banc_de_registres is
	type registers_array is array (natural range 15 downto 0) of std_logic_vector (7 downto 0);

	signal registers: registers_array;
begin
	
	QA <= DATA when ADDR_W=ADDR_A and W='1' else registers(to_integer(unsigned(ADDR_A)));
	QB <= DATA when ADDR_W=ADDR_B and W='1' else registers(to_integer(unsigned(ADDR_B)));
	
	process (CLK) is
	begin
	
	-- TODO: lecture asynchrone, ecriture synchrone IS OK
		if rising_edge(CLK) then
			
			if RST = '0' then
				registers <= (others => b"00000000");		
			else
				
				if W = '1' then -- write
					if ADDR_W /= ADDR_A and ADDR_W /= ADDR_B then
						registers(to_integer(unsigned(ADDR_W))) <= DATA;
					end if;
				end if;
				
			end if;
		
		end if;
	
	end process;

end Behavioral;

