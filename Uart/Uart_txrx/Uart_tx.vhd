---------------------------------------------------------------------------
----------------------------------------------------------------------------
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

entity Uart_tx is
    Port ( 
				tx 				: out STD_LOGIC;
			   tick_in			: in 	STD_LOGIC;
				Rx_Data_in		: in 	STD_LOGIC_VECTOR(7 downto 0);
			   reset			 	: in  STD_LOGIC;
		      tx_clk_in	  	: in  STD_LOGIC);
end Uart_tx;

architecture Behavioral of Uart_tx is	

----------------------------------------------------------------------------
------------------------------------------------------------ Signal --------
----------------------------------------------------------------------------
type state_type is (idle, start);
signal	state			 : state_type;
signal	tx_i			 : STD_LOGIC := '1';
signal	Tx_Data		 : STD_LOGIC_VECTOR(7 downto 0)	:= "00000000";
signal	Tx_Reg		 : STD_LOGIC_VECTOR(9 downto 0)	:= "1111111111";
signal	Data			 : integer range 0 to 255  := 0;
signal 	count			 : integer range 0 to 10 	:= 0;

begin

----------------------------------------------------------------------------
------------------------------------------------------------ Process -------
----------------------------------------------------------------------------
process(state, tick_in, tx_clk_in)
begin 
	case state is
		when idle => tx <= '1';
			if tick_in = '1' then
				state <= start;
			else
				tx <= '1';
			end if;
		when start => 
			--Data <= 1;
			--Tx_Data <= CONV_STD_LOGIC_VECTOR(Data, 8);
			Tx_Data <= Rx_Data_in;
			Tx_Reg  <= '1'&Tx_Data&'0';			
			if rising_edge(tx_clk_in) then		
				case count is
					when 0 => tx <= Tx_Reg(0);
					when 1 => tx <= Tx_Reg(1);
					when 2 => tx <= Tx_Reg(2);
					when 3 => tx <= Tx_Reg(3);
					when 4 => tx <= Tx_Reg(4);
					when 5 => tx <= Tx_Reg(5);
					when 6 => tx <= Tx_Reg(6);
					when 7 => tx <= Tx_Reg(7);
					when 8 => tx <= Tx_Reg(8);
					when 9 => tx <= Tx_Reg(9);
					when others => tx <= '1';
				end case;
				count <= count+1;					
				if(count = 10) then
					count <= 0;
					state	<= idle;
					Tx_Data  <= "00000000";
				end if;
			end if;			
		when others => tx <= '1';
	end case;
end process;

end Behavioral;
