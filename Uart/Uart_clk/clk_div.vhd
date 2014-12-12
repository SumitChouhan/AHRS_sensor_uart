----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:02:55 02/11/2014 
-- Design Name: 
-- Module Name:    clk_div - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity clk_div is
    Port ( clk_in			 : in  STD_LOGIC;	--27MHz
			  Baudrate		 : in	 STD_LOGIC_VECTOR(2 downto 0);
			  reset			 : in  STD_LOGIC;
           Uart_clk_out  : out STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is

----------------------------------------------------------------------------
------------------------------------------------------------ Signal --------
----------------------------------------------------------------------------
	signal	Baud	 	 : integer range 0 to 22500 := 0;
	signal	tmp	    : STD_LOGIC := '0' ;
	signal	counter   : integer range 0 to 22500 := 0;


begin

----------------------------------------------------------------------------
------------------------------------------------------------ Process -------
----------------------------------------------------------------------------
process (reset, Baudrate, clk_in)
begin
	if(reset = '1') then
		Baud <= 0;
	elsif rising_edge(clk_in) then
		case Baudrate is					 	--(들어오는 주파수/원하는 주파수)/2
			when "000" => Baud <=   117;	--115.200Hz
			when "001" => Baud <=   234;	-- 57.600Hz
			when "010" => Baud <=   351;	-- 38.400Hz
			when "011" => Baud <=   703;	-- 19.200Hz
			when "100" => Baud <=  1406;	--  9.600Hz
			when "101" => Baud <=  2813;	--  4.800Hz
			when "110" => Baud <=  5625;	--  2.400Hz
			when "111" => Baud <= 11250;	--  1.200Hz
			when others => Baud <=  117;  -- nothing used
		end case;
	end if;
end process;
	
process (reset, clk_in) -- Making Tx Baudrate 
begin
	if(reset = '1') then
		tmp 		<= '0';
		counter  <= 0;
	elsif rising_edge(clk_in) then
		if (counter = Baud) then	
			tmp		<= NOT(tmp);
			counter  <= 0;
		else
			counter	<= counter+1;
		end if;
	end if;
end process;

Uart_clk_out <= tmp;

end Behavioral;

