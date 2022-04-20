library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity shift_array is
    port(
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        x : out STD_LOGIC_VECTOR (31 downto 0)
    );
end shift_array;



architecture shift_array of shift_array is
signal msg_array : STD_LOGIC_VECTOR(0 to 63);
constant PHONE_NO : STD_LOGIC_VECTOR (63 downto 0) :=X"248D656D1490FFFF";
begin
    process (reset, clk)
    
    begin
        if reset = '1' then
            msg_array <= PHONE_NO;
        elsif(clk'event and clk = '1') then
            msg_array (0 to 59) <= msg_array (4 to 63);
            msg_array (60 to 63) <= msg_array (0 to 3);
        end if;
    end process;
    x <= msg_array (0 to 31);
    
end shift_array;

