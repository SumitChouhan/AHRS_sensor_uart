--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:02:13 02/25/2014
-- Design Name:   
-- Module Name:   C:/Xilinx/Project/Moon_Uart_Last/simu_rx.vhd
-- Project Name:  Moon_Uart_Last
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Uart_rx
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
 
ENTITY simu_rx IS
END simu_rx;
 
ARCHITECTURE behavior OF simu_rx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Uart_rx
    PORT(
         rx : IN  std_logic;
         Rx_Data_out : OUT  std_logic_vector(7 downto 0);
         tick_out : OUT  std_logic;
         reset : IN  std_logic;
         rx_clk_in : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rx : std_logic := '0';
   signal reset : std_logic := '0';
   signal rx_clk_in : std_logic := '0';

 	--Outputs
   signal Led : std_logic_vector(2 downto 0);
   signal Rx_Data_out : std_logic_vector(7 downto 0);
   signal tick_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant rx_clk_in_period : time := 52.083us; --10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Uart_rx PORT MAP (
          rx => rx,
          Rx_Data_out => Rx_Data_out,
          tick_out => tick_out,
			 reset	 => reset,
          rx_clk_in => rx_clk_in
        );

   -- Clock process definitions
   rx_clk_in_process :process
   begin
		rx_clk_in <= '0';
		wait for rx_clk_in_period/2;
		rx_clk_in <= '1';
		wait for rx_clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rx	<= '1';
      wait for 0.8 ms;	
		rx <= '1';		
      wait for 0.8 ms;	
		rx <= '0';		--start bit
		wait for 0.8 ms;	
		rx <= '1';		
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		
		rx	<= '1';
      wait for 0.8 ms;	
		rx <= '1';		
      wait for 0.8 ms;	
		rx <= '0';		--start bit
		wait for 0.8 ms;	
		rx <= '1';		
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';

	rx	<= '1';
      wait for 0.8 ms;	
		rx <= '1';		
      wait for 0.8 ms;	
		rx <= '0';		--start bit
		wait for 0.8 ms;	
		rx <= '1';		
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		
		
    rx	<= '1';
      wait for 0.8 ms;	
		rx <= '1';		
      wait for 0.8 ms;	
		rx <= '0';		--start bit
		wait for 0.8 ms;	
		rx <= '1';		
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		
		
		rx	<= '1';
      wait for 0.8 ms;	
		rx <= '1';		
      wait for 0.8 ms;	
		rx <= '0';		--start bit
		wait for 0.8 ms;	
		rx <= '1';		
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		
	rx	<= '1';
      wait for 0.8 ms;	
		rx <= '1';		
      wait for 0.8 ms;	
		rx <= '0';		--start bit
		wait for 0.8 ms;	
		rx <= '1';		
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		
			
 
		rx	<= '1';
      wait for 0.8 ms;	
		rx <= '1';		
      wait for 0.8 ms;	
		rx <= '0';		--start bit
		wait for 0.8 ms;	
		rx <= '1';		
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';

		rx	<= '1';
      wait for 0.8 ms;	
		rx <= '1';		
      wait for 0.8 ms;	
		rx <= '0';		--start bit
		wait for 0.8 ms;	
		rx <= '1';		
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		wait for 0.8 ms;	
		rx <= '0';
		wait for 0.8 ms;	
		rx <= '1';
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
