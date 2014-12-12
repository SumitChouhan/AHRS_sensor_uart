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
		 Button		 	: in  STD_LOGIC_VECTOR(2 downto 0);
		 Led	 			: out STD_LOGIC_VECTOR(2 downto 0);
		 reset			: in  STD_LOGIC;
		 tx_clk_out	 	: out STD_LOGIC;
		 tx 				: out STD_LOGIC);
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
				 tx_clk_out	 	: out STD_LOGIC;
				 rx_clk_out 	: out STD_LOGIC);
end component;

component Uart_tx is
   Port ( 
			   tx 			 : out STD_LOGIC;
				Button	 	 : in  STD_LOGIC_VECTOR(2 downto 0);
				Rx_Data_in	 : in  STD_LOGIC_VECTOR(7 downto 0);
				reset			 : in  STD_LOGIC;
				tx_clk_in	 : in  STD_LOGIC);
end component;


----------------------------------------------------------------------------
------------------------------------------------------------ Signal --------
----------------------------------------------------------------------------
signal tx_clk_i	: STD_LOGIC;
signal rx_clk_i	: STD_LOGIC;
signal Rx_Data_i  : STD_LOGIC_VECTOR(7 downto 0);


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
--	tx_clk_out	 => tx_clk_out,
--	rx_clk_out	 => rx_clk_out
	tx_clk_out 	 => tx_clk_i,
	rx_clk_out	 => rx_clk_i
);

Uart_tx_block : Uart_tx
port map 
(
	tx		 		=> tx,
	reset			=> reset,
	Button		=> Button,
	Rx_Data_in	=> Rx_Data_i,
	tx_clk_in	=> tx_clk_i
);


end Behavioral;
