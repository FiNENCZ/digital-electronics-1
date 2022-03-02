----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2022 10:27:22 AM
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_mux_3bit_4to1 is
--  Port ( );
end tb_mux_3bit_4to1;

architecture Behavioral of tb_mux_3bit_4to1 is


   
    signal s_d       : std_logic_vector(3 - 1 downto 0);
    signal s_c       : std_logic_vector(3 - 1 downto 0);
    signal s_b       : std_logic_vector(3 - 1 downto 0);
    signal s_a       : std_logic_vector(3 - 1 downto 0);
    signal s_s       : std_logic_vector(2 - 1 downto 0);
    signal s_f       : std_logic_vector(3 - 1 downto 0);      
begin

    uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
        port map(     
            d_i  => s_d,
            c_i  => s_c,  
            b_i  => s_b,
            a_i  => s_a,
            s_i  => s_s,
            f_o  => s_f
        );
        
uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
p_label : process (a)
begin
    if (a = '0') then
        q <= '0';
    else
        q <= '1';
    end if;
end process p_label;

end Behavioral;
