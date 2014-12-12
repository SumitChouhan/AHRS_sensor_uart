--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:34:29 03/07/2014
-- Design Name:   
-- Module Name:   C:/Xilinx/Project/Uart/Uart_clk/simu01.vhd
-- Project Name:  Uart_clk
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
 
ENTITY simu01 IS
END simu01;
 
ARCHITECTURE behavior OF simu01 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Uart_top
    PORT(
         clk_in : IN  std_logic;
         Baudrate : IN  std_logic_vector(2 downto 0);
         reset : IN  std_logic;
         Uart_clk_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';
   signal Baudrate : std_logic_vector(2 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal Uart_clk_out : std_logic;

   -- Clock period definitions
   constant clk_in_period : time := 37 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Uart_top PORT MAP (
          clk_in => clk_in,
          Baudrate => Baudrate,
          reset => reset,
          Uart_clk_out => Uart_clk_out
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
