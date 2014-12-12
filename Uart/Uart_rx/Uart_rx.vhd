----------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:57 02/12/2014 
-- Design Name: 
-- Module Name:    txd - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity Uart_rx is
    Port ( 
				rx 				: in  STD_LOGIC;
				Rx_Data_out	 	: out STD_LOGIC_VECTOR(7 downto 0);
				Led				: out STD_LOGIC_VECTOR(2 downto 0);
			   reset			 	: in  STD_LOGIC;
		      rx_clk_in   	: in  STD_LOGIC);
end Uart_rx;

architecture Behavioral of Uart_rx is

----------------------------------------------------------------------------
------------------------------------------------------------ Signal --------
----------------------------------------------------------------------------
type state_type1 is (idle, Start, data_first, data_remain, stop, Send);
signal	state			 : state_type1;
signal	Dbit_cnt		 : integer range 0 to 8		:= 0;
signal	rx_cnt		 : integer range 0 to 8 	:= 0;
signal 	Pulse_cnt	 : integer range 0 to 17	:= 0;
signal	Rx_Data		 : STD_LOGIC_VECTOR(7 downto 0)	:= "00000000";


begin

----------------------------------------------------------------------------
------------------------------------------------------------ Process -------
----------------------------------------------------------------------------
process(rx_clk_in)
begin
	if rising_edge(rx_clk_in) then
	
		case state is
			when idle =>
				if (rx = '1') then
					rx_cnt <= rx_cnt + 1;
						if(rx_cnt = 7) then
							state 	 <= start;
						end if;
				end if;
			when start =>
				if (rx = '0') then
					state <= data_first;
				end if;
			when data_first =>
				Pulse_cnt <= Pulse_cnt + 1;
					if (Pulse_cnt = 20) then
						Pulse_cnt <= 0;
						Rx_data(0) <= rx;
						Dbit_cnt	  <= 1;
						state		  <= data_remain;
					end if;
			when data_remain =>
				Pulse_cnt <= Pulse_cnt + 1;
					if (Pulse_cnt = 16) then
						Pulse_cnt  <= 0;
						case Dbit_cnt is
							when 1 => Rx_data(1) <= rx;
										 Dbit_cnt	<= 2;
							when 2 => Rx_data(2) <= rx;
										 Dbit_cnt	<= 3;
							when 3 => Rx_data(3) <= rx;
										 Dbit_cnt	<= 4;
							when 4 => Rx_data(4) <= rx;
										 Dbit_cnt	<= 5;
							when 5 => Rx_data(5) <= rx;
										 Dbit_cnt	<= 6;			 
							when 6 => Rx_data(6) <= rx;
										 Dbit_cnt	<= 7;
							when 7 => Rx_data(7) <= rx;
										 Dbit_cnt	<= 8;
							when others => state <= idle;
										 
							if (Dbit_cnt = 8) then
								state <= stop;
							else	
								state <= data_remain;
							end if;
						end case;
					end if;
			when stop => 
				if (rx = '1') then
					state <= send;
				else
					state <= idle;
				end if;
			when send =>
			
				if 	(Rx_data(2)='0' and Rx_data(1)='0' and Rx_data(0)='1') then
					Led <= "001";		
				elsif (Rx_data(2)='0' and Rx_data(1)='1' and Rx_data(0)='0') then
					Led <= "010";		
				elsif (Rx_data(2)='0' and Rx_data(1)='1' and Rx_data(0)='1') then
					Led <= "011";			
				elsif (Rx_data(2)='1' and Rx_data(1)='0' and Rx_data(0)='0') then
					Led <= "100";
				elsif (Rx_data(2)='1' and Rx_data(1)='0' and Rx_data(0)='1') then
					Led <= "101";
				elsif (Rx_data(2)='1' and Rx_data(1)='1' and Rx_data(0)='0') then
					Led <= "110";
				elsif (Rx_data(2)='1' and Rx_data(1)='1' and Rx_data(0)='1') then
					Led <= "111";
				else 	
					Led <= "000";
				end if;
				
				state 		<= idle;
			when others => state <= idle;
		end case;
	end if;
				
end process;

end Behavioral;

