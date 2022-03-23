# Lab 6: Ondřej Kudela

### Bidirectional counter

1. Listing of VHDL code of the completed process `p_cnt_up_down`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    --------------------------------------------------------
    -- p_cnt_up_down:
    -- Clocked process with synchronous reset which implements
    -- n-bit up/down counter.
    --------------------------------------------------------
    p_cnt_up_down : process(clk)
    begin
        if rising_edge(clk) then
        
            if (reset = '1') then   -- Synchronous reset
                s_cnt_local <= (others => '0'); -- Clear all bits

            elsif (en_i = '1') then -- Test if counter is enabled
                if(cnt_up_i = '1') then
                    s_cnt_local <= s_cnt_local + 1;
                    
                elsif(cnt_up_i = '0') then
                    s_cnt_local <= s_cnt_local - 1;
       
                end if;
            end if;
        end if;
    end process p_cnt_up_down;
```

2. Screenshot with simulated time waveforms. Test reset as well. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

    ![image](https://user-images.githubusercontent.com/99534053/159756126-a6ca794b-d995-4cf5-b235-96f1d22ee8bc.png)


### Two counters

1. Image of the top layer structure including both counters, ie a 4-bit bidirectional counter from *Part 4* and a 16-bit counter with a 10 ms time base from *Experiments on your own*. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![276946714_506592557571198_6106398301655045556_n](https://user-images.githubusercontent.com/99534053/159768335-fec00ae3-d8b6-46eb-b7f6-f1148e5cd647.jpg)
   
#### In Vivado:
   
   ![image](https://user-images.githubusercontent.com/99534053/159765843-90973d61-4c6a-403e-b76b-4dc294fa3649.png)

