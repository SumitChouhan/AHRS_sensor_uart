----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:02:23 02/11/2014 
-- Design Name: 
-- Module Name:    Uart_top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Uart_top is
Port (
		 clk_in 			: in  STD_LOGIC;
		 Baudrate		: in	STD_LOGIC_VECTOR(2 downto 0);
		 reset			: in  STD_LOGIC;
		 Uart_clk_out	: out STD_LOGIC);
end Uart_top;

architecture Behavioral of Uart_top is

----------------------------------------------------------------------------
------------------------------------------------------------ Component -----
----------------------------------------------------------------------------
component clk_div is
Port ( 
		 clk_in 			: in  STD_LOGIC;
		 Baudrate		: in	STD_LOGIC_VECTOR(2 downto 0);
		 reset			: in  STD_LOGIC;
       Uart_clk_out 	: out  STD_LOGIC);
end component;


begin

----------------------------------------------------------------------------
------------------------------------------------------------ Port Map ------
----------------------------------------------------------------------------
clk_div_unit: clk_div
port map 
(
	clk_in		 => clk_in,
	Baudrate	 	 => Baudrate,
	reset			 => reset,
	Uart_clk_out => Uart_clk_out
);

end Behavioral;
