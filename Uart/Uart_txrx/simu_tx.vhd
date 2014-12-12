--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:18:22 02/26/2014
-- Design Name:   
-- Module Name:   C:/Xilinx/Project/Uart/Uart_txrx/simu_tx.vhd
-- Project Name:  Uart_txrx
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Uart_tx
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
 
ENTITY simu_tx IS
END simu_tx;
 
ARCHITECTURE behavior OF simu_tx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Uart_tx
    PORT(
         tx : OUT  std_logic;
         tick_in : IN  std_logic;
         Rx_Data_in : IN  std_logic_vector(7 downto 0);
         reset : IN  std_logic;
         tx_clk_in : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal tick_in : std_logic := '1';
   signal Rx_Data_in : std_logic_vector(7 downto 0) := "00110001";
   signal reset : std_logic := '0';
   signal tx_clk_in : std_logic := '0';

 	--Outputs
   signal tx : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant tx_clk_in_period : time := 0.8 ms;--10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Uart_tx PORT MAP (
          tx => tx,
          tick_in => tick_in,
          Rx_Data_in => Rx_Data_in,
          reset => reset,
          tx_clk_in => tx_clk_in
        );

   -- Clock process definitions
   tx_clk_in_process :process
   begin
		tx_clk_in <= '0';
		wait for tx_clk_in_period/2;
		tx_clk_in <= '1';
		wait for tx_clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for tx_clk_in_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
