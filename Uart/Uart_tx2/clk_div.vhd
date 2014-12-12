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
			  rx_clk_out	 : out STD_LOGIC;
           tx_clk_out	 : out STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is

----------------------------------------------------------------------------
------------------------------------------------------------ Signal --------
----------------------------------------------------------------------------
	signal	Tx_Baud, Rx_Baud	 	  : integer range 0 to 22500 := 0;
	signal	Tx_tmp, Rx_tmp	    	  : STD_LOGIC := '0' ;
	signal	Tx_counter, Rx_counter : integer range 0 to 22500 := 0;


begin


----------------------------------------------------------------------------
------------------------------------------------------------ Process -------
----------------------------------------------------------------------------
process (reset, Baudrate, clk_in) -- Dip Switch/Choosing Baudrate
begin
	if(reset = '1') then
		Tx_Baud <= 0;
		Rx_Baud <= 0;
	elsif rising_edge(clk_in) then
		case Baudrate is					 	   --(들어오는 주파수/원하는 주파수)/2
			when "000" => Tx_Baud <=   117;	--115.200Hz
						     Rx_Baud <= 	  7;
			when "001" => Tx_Baud <=   234;	-- 57.600Hz
							  Rx_Baud <=	 15;
			when "010" => Tx_Baud <=   351;	-- 38.400Hz
							  Rx_Baud <=	 22;
			when "011" => Tx_Baud <=   703;	-- 19.200Hz
							  Rx_Baud <=	 44;
			when "100" => Tx_Baud <=  1406;	--  9.600Hz
							  Rx_Baud <=	 88;
			when "101" => Tx_Baud <=  2813;	--  4.800Hz
							  Rx_Baud <=	176;
			when "110" => Tx_Baud <=  5625;	--  2.400Hz
							  Rx_Baud <=	352;
			when "111" => Tx_Baud <= 11250;	--  1.200Hz
							  Rx_Baud <=	703;
			when others => Tx_Baud <=  117;  -- nothing used
							  Rx_Baud <=	  7;
		end case;
	end if;
end process;
	
process (reset, clk_in) -- Making Tx Baudrate  
begin
	if(reset = '1') then
		Tx_tmp 	  <= '0';
		Tx_counter <= 0;
	elsif rising_edge(clk_in) then
		if (Tx_counter = Tx_Baud) then	
			Tx_tmp	  <= NOT(Tx_tmp);
			Tx_counter <= 0;
		else
			Tx_counter <= Tx_counter+1;
		end if;
	end if;
end process;
tx_clk_out <= Tx_tmp;

process (reset, clk_in) -- Making Rx Baudrate  
begin
	if(reset = '1') then
		Rx_tmp 	  <= '0';
		Rx_counter <= 0;
	elsif rising_edge(clk_in) then
		if (Rx_counter = Rx_Baud) then	
			Rx_tmp	  <= NOT(Rx_tmp);
			Rx_counter <= 0;
		else
			Rx_counter <= Rx_counter+1;
		end if;
	end if;
end process;
rx_clk_out <= Rx_tmp;

end Behavioral;

