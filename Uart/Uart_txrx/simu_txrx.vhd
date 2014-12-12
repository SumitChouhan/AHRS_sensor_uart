--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:58:06 02/26/2014
-- Design Name:   
-- Module Name:   C:/Xilinx/Project/Uart/Uart_txrx/simu_txrx.vhd
-- Project Name:  Uart_txrx
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
 
ENTITY simu_txrx IS
END simu_txrx;
 
ARCHITECTURE behavior OF simu_txrx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Uart_top
    PORT(
         clk_in : IN  std_logic;
         Baudrate : IN  std_logic_vector(2 downto 0);
         tick_in : IN  std_logic;
         reset : IN  std_logic;
         tx_clk_out : OUT  std_logic;
         rx_clk_out : OUT  std_logic;
         tx : OUT  std_logic;
         rx : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';
   signal Baudrate : std_logic_vector(2 downto 0) := "111";
   signal tick_in : std_logic := '0';
   signal reset : std_logic := '0';
   signal rx : std_logic := '0';

 	--Outputs
   signal tx_clk_out : std_logic;
   signal rx_clk_out : std_logic;
   signal tx : std_logic;

   -- Clock period definitions
   constant clk_in_period : time := 37 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Uart_top PORT MAP (
          clk_in => clk_in,
          Baudrate => Baudrate,
          tick_in => tick_in,
          reset => reset,
          tx_clk_out => tx_clk_out,
          rx_clk_out => rx_clk_out,
          tx => tx,
          rx => rx
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
		
		rx	<= '1';
      wait for 0.83 ms;	
		rx <= '1';
		wait for 0.83 ms;		
		
		rx <= '0';		--start bit
		wait for 0.83 ms;		
		
		rx <= '1';		--data bit 뒤 1010 -> 0101
		wait for 0.83 ms;				
		rx <= '0';
		wait for 0.83 ms;				
		rx <= '1';
		wait for 0.83 ms;				
		rx <= '0';
		wait for 0.83 ms;		
			
		rx <= '1';		--data bit 앞 1100 -> 0011
		wait for 0.83 ms;		
		rx <= '1';
		wait for 0.83 ms;			
		rx <= '0';
		wait for 0.83 ms;			
		rx <= '0';
		wait for 0.83 ms;	
			
		rx <= '1';		--stop bit
		wait for 0.83 ms;		
		
		
--		
--		rx	<= '1';
--      wait for 0.83 ms;	
--		rx <= '1';
--		wait for 0.83 ms;		
--		
--		rx <= '0';		--start bit
--		wait for 0.83 ms;		
--		
--		rx <= '1';		--data bit 뒤 1000 -> 0001
--		wait for 0.83 ms;				
--		rx <= '0';
--		wait for 0.83 ms;				
--		rx <= '0';
--		wait for 0.83 ms;				
--		rx <= '0';
--		wait for 0.83 ms;		
--			
--		rx <= '1';		--data bit 앞 1100 -> 0011
--		wait for 0.83 ms;		
--		rx <= '1';
--		wait for 0.83 ms;			
--		rx <= '0';
--		wait for 0.83 ms;			
--		rx <= '0';
--		wait for 0.83 ms;	
--			
--		rx <= '1';		--stop bit
--		wait for 0.83 ms;		
	
		
		

      wait;
   end process;

END;
