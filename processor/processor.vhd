----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:01 04/30/2020 
-- Design Name: 
-- Module Name:    processor - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity processor is
	 Port (	RST : in  std_logic;
				CLK : in  std_logic;
				QA : out std_logic_vector(7 downto 0);
				QB : out std_logic_vector(7 downto 0)
			  );
end processor;

architecture Behavioral of processor is

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
	 
	 COMPONENT memoire_instructions
    PORT(
         ADDR : IN  std_logic_vector(7 downto 0);
         CLK : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT pipeline_buffer
    PORT(
			RST : IN  std_logic;
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
	 
	 --signals
	 signal IP : std_logic_vector(7 downto 0) := x"00";
	 
	 signal OP_li : std_logic_vector(7 downto 0);
	 signal A_li : std_logic_vector(7 downto 0);
	 signal B_li : std_logic_vector(7 downto 0);
	 signal C_li : std_logic_vector(7 downto 0);
	 
	 signal OP_di : std_logic_vector(7 downto 0);
	 signal A_di : std_logic_vector(7 downto 0);
	 --signal B_di : std_logic_vector(7 downto 0);
	 --signal C_di : std_logic_vector(7 downto 0);
	 
	 signal OP_ex : std_logic_vector(7 downto 0);
	 signal A_ex : std_logic_vector(7 downto 0);
	 --signal B_ex : std_logic_vector(7 downto 0);
	 --signal C_ex : std_logic_vector(7 downto 0);
	 
	 signal OP_mem : std_logic_vector(7 downto 0);
	 signal A_mem : std_logic_vector(7 downto 0);
	 --signal B_mem : std_logic_vector(7 downto 0);
	 --signal C_mem : std_logic_vector(7 downto 0);
	 
	 signal ADDR_A_reg : std_logic_vector(7 downto 0);
	 signal ADDR_B_reg : std_logic_vector(7 downto 0);
	 signal ADDR_W_reg : std_logic_vector(7 downto 0);
	 signal W_reg : std_logic;
	 signal DATA_reg : std_logic_vector(7 downto 0);
	 signal QA_reg : std_logic_vector(7 downto 0);
	 signal QB_reg : std_logic_vector(7 downto 0);
	 
	 --alu
	 signal A_alu : std_logic_vector(7 downto 0);
	 signal B_alu : std_logic_vector(7 downto 0);
	 signal S_alu : std_logic_vector(7 downto 0);
	 
	 --data mem
	 signal IN_data : std_logic_vector(7 downto 0);
	 signal OUT_data : std_logic_vector(7 downto 0);
	 
	 --mux
	 signal mux_di : std_logic_vector(7 downto 0);
	 signal mux_ex : std_logic_vector(7 downto 0);
	 signal mux_mem : std_logic_vector(7 downto 0);
	 signal mux_datamem : std_logic_vector(7 downto 0);
	 
	 --LC
	 signal lc_mem_reg_in: std_logic_vector(7 downto 0);
	 signal lc_alu: std_logic_vector(2 downto 0);
	 signal lc_data: std_logic;
	
begin
	
	-- pour observation
	QA <= QA_reg;
	QB <= QB_reg;
	
	process (CLK, RST) is
	begin
		if rising_edge(CLK) and RST = '1' then
			IP <= IP + x"1";
		end if;
	end process;
	
	instruction_memory : memoire_instructions PORT MAP (
         ADDR => IP,
         CLK => CLK,
         OUTPUT(31 downto 24) => OP_li,
			OUTPUT(23 downto 16) => A_li,
			OUTPUT(15 downto 8) => B_li, 
			OUTPUT(7 downto 0) => C_li
	);
	
	li_di : pipeline_buffer PORT MAP (
			RST => RST,
			CLK => CLK,
         A_in => A_li,
         B_in => B_li,
         C_in => C_li,
         OP_in => OP_li,
         A_out => A_di,
         B_out => ADDR_A_reg,
         C_out => ADDR_B_reg,
         OP_out => OP_di
	);
		  
	registers : banc_de_registres PORT MAP (
			ADDR_A=> ADDR_A_reg(3 downto 0),
			ADDR_B=> ADDR_B_reg(3 downto 0),
			ADDR_W => ADDR_W_reg(3 downto 0),
			W => W_reg,
			DATA => DATA_reg,
			RST => RST,
			CLK => CLK,
			QA => QA_reg, -- to mux
			QB => QB_reg
	);
	
	-- multiplexer reg
   mux_di <= QA_reg WHEN OP_di = X"05" ELSE
	QA_reg WHEN OP_di = X"01" ELSE
	QA_reg WHEN OP_di = X"02" ELSE
	QA_reg WHEN OP_di = X"03" ELSE
	QA_reg WHEN OP_di = X"04" ELSE
	QA_reg WHEN OP_di = X"08" ELSE
	ADDR_A_reg;
	
	di_ex : pipeline_buffer PORT MAP (
			RST => RST,
			CLK => CLK,
         A_in=> A_di,
         B_in=> mux_di,
         C_in => QB_reg,
         OP_in => OP_di,
         A_out=> A_ex,
         B_out => A_alu,
         C_out=> B_alu,
         OP_out => OP_ex
	);
	
	alu : UAL PORT MAP (
			--N => ;
         --O => ;
         --Z => ;
         --C => ;
         Ctrl_Alu => lc_alu,
         A => A_alu,
         B => B_alu,
         S => S_alu
	);
	
	---- LC alu
	lc_alu <= b"000" when OP_ex = x"01" else --add
				b"001" when OP_ex = x"03" else --sou
				b"010" when OP_ex = x"02" else --mul
				b"011" when OP_ex = x"04" else --div
				b"111";
	
	---- Mutiplexer alu ex		
   mux_ex <= S_alu WHEN OP_ex = x"01"
        OR OP_ex = x"02"
        OR OP_ex = x"03"
		  OR OP_ex = x"04"
        ELSE A_alu;
	
	ex_mem : pipeline_buffer PORT MAP (
			RST => RST,
			CLK => CLK,
         A_in => A_ex,
         B_in => mux_ex,
			C_in =>(others => 'X'),
         OP_in => OP_ex,
         A_out => A_mem,
         B_out => IN_data,
         --C_out =>,
         OP_out => OP_mem
	);
	
	data_memory : memoire_donnees PORT MAP (
			ADDR => mux_datamem,
         INPUT => IN_data,
         RW => lc_data,
         RST => RST,
			CLK => CLK,
         OUTPUT => OUT_data
	);
	
	---- LC data_memory
	lc_data <= '0' when OP_mem = x"08" else -- store --> write
				'1'; -- load --> read & others...
	
	---- Mutiplexer mem (output of data mem)
   mux_mem <= OUT_data WHEN OP_mem = x"07" ELSE IN_data;
	
	---- Mutiplexer data mem (input of data mem)
	mux_datamem <= A_mem WHEN OP_mem = x"08" ELSE IN_data;
	
	mem_re : pipeline_buffer PORT MAP (
			RST => RST,
			CLK => CLK,
         A_in => A_mem,
         B_in => mux_mem,
         C_in => (others => 'X'), -- to change
         OP_in => OP_mem,
         A_out => ADDR_W_reg,
         B_out => DATA_reg,
         --C_out =>,
         OP_out => lc_mem_reg_in
	);
	
	---- LC alu
	W_reg <= '0' when lc_mem_reg_in = x"08" else '1';
	
end Behavioral;

