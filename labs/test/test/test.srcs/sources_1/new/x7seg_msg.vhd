library IEEE;
use IEEE.STD_LOGiC_1164.all;
use IEEE.std_logic_unsigned.all;

entity x7seg_msg is
    port(
        x : in STD_LOGIC_VECTOR(15 downto 0);
        cclk : in STD_LOGIC;
        clr : in STD_LOGIC;
        a_to_g : out STD_LOGIC_VECTOR(6 downto 0);
        an : out STD_LOGIC_VECTOR(3 downto 0);
        dp : out STD_LOGIC
        );
end x7seg_msg;

architecture x7seg_msg of x7seg_msg is
signal s: STD_LOGIC_VECTOR(1 downto 0);
signal digit: STD_LOGIC_VECTOR(3 downto 0);
signal aen: STD_LOGIC_VECTOR(3 downto 0);

begin
    dp <= '1';
    aen <= "1111";
    
    process (s,x)
    begin
        case s is
            when "00" => digit <= x(3 downto 0);
            when "01" => digit <= x(7 downto 4);
            when "10" => digit <= x(11 downto 8);
            when others => digit <= x(15 downto 12);
        end case;
    end process;


process(digit)
begin
    case digit is
        when x"0" => a_to_g <= "1000000"; -- "0"
        when x"1" => a_to_g <= "1111001"; -- "1"
        when x"2" => a_to_g <= "0100100"; -- "2"
        when x"3" => a_to_g <= "0110000"; -- "3"
        when x"4" => a_to_g <= "0011001"; -- "4"
        when x"5" => a_to_g <= "0010010"; -- "5"
        when x"6" => a_to_g <= "0000010"; -- "6"
        when x"7" => a_to_g <= "1011000"; -- "7"
        when x"8" => a_to_g <= "0000000"; -- "8"
        when x"9" => a_to_g <= "0010000"; -- "9"
        when x"A" => a_to_g <= "0001000"; -- A
        when x"b" => a_to_g <= "0000011"; -- b
        when x"C" => a_to_g <= "1000110"; -- C
        when x"d" => a_to_g <= "1111110"; -- DASH
        when x"E" => a_to_g <= "0000110"; -- E
        when others => a_to_g <= "1111111"; --blank
    end case;

end process;

process(s,aen)
begin
        an <= "1111";
        if aen(CONV_INTEGER(s)) = '1' then
            an(CONV_INTEGER(s)) <= '0';
        end if;
end process;

process(cclk,clr)
begin
        if clr = '1' then
            s <= "00";
        elsif cclk'event and cclk = '1' then 
            s <= s + 1;
        end if;
end process;








end x7seg_msg;