library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity scroll_top is
    port(
            mclk : in STD_LOGIC;
            btn : in std_logic_vector(3 downto 3);
            a_to_g : out std_logic_vector(6 downto 0);
            an : out std_logic_vector(3 downto 0);
            dp : out STD_LOGIC
         );
end scroll_top;

architecture scroll_top of scroll_top is
component clkdiv is
    port(
        mclk : in STD_LOGIC;
        clr : in STD_LOGIC;
        clk190 : out STD_LOGIC;
        clk3 : out STD_LOGIC
        );
end component;

component shift_array is   
    port(   
        clk : in STD_LOGIC;
        clr : in STD_LOGIC;
        x : out STD_LOGIC_VECTOR(15 downto 0)
        );
end component;

component x7seg_msg is
    port(
        x : in STD_LOGIC_VECTOR(15 downto 0);
        cclk : in std_logic;
        clr : in std_logic;
        a_to_g : out STD_LOGIC_VECTOR(6 downto 0);
        an : out STD_LOGIC_VECTOR(3 downto 0);
        dp : out STD_LOGIC
        );
end component;

signal clr, clk190, clk3: STD_LOGIC;
signal x: STD_LOGIC_VECTOR(15 downto 0);
begin
    clr <= btn(3);     
    U1: clkdiv
        port map(
            mclk => mclk,
            clr => clr,
            clk190 => clk190,
            clk3 => clk3
                );
                
    U2: shift_array
        port map(
            x => x,
            clk => clk3,
            clr => clr
                );
     U3: x7seg_msg
        port map (
            x => x,
            cclk => clk190,
            clr => clr,
            a_to_g => a_to_g,
            an => an,
            dp => dp
                );
end scroll_top;
