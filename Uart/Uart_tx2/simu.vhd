--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:04:11 02/26/2014
-- Design Name:   
-- Module Name:   C:/Xilinx/Project/Uart/Uart_tx2/simu.vhd
-- Project Name:  Uart_tx2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Uart_top
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
 
ENTITY simu IS
END simu;
 
ARCHITECTURE behavior OF simu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Uart_top
    PORT(
         clk_in : IN  std_logic;
         Dip_switch : IN  std_logic_vector(2 downto 0);
         Led : OUT  std_logic_vector(2 downto 0);
         reset : IN  std_logic;
         tx_clk_out : OUT  std_logic;
         tx : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';
   signal Dip_switch : std_logic_vector(2 downto 0) := "001";
   signal reset : std_logic := '0';

 	--Outputs
   signal Led : std_logic_vector(2 downto 0);
   signal tx_clk_out : std_logic;
   signal tx : std_logic;

   -- Clock period definitions
   constant clk_in_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Uart_top PORT MAP (
          clk_in => clk_in,
          Dip_switch => Dip_switch,
          Led => Led,
          reset => reset,
          tx_clk_out => tx_clk_out,
          tx => tx
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_in_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
