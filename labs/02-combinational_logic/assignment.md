# Lab 2: Ondřej Kudela

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![K-map_greater](mapgreater.png)

   Less than:

   ![K-map_less](mapless.png)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![function_great](functiongreater.png)
   ![function_less](functionless.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx10**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0001"; -- Such as "0001" if ID = xxxx10
        s_a <= "0000";        -- Such as "0000" if ID = xxxx10
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0001, 0000 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![Simulation](sim.PNG)
   ![Reports](log.PNG)

3. Link to your public EDA Playground example:

https://www.edaplayground.com/x/PfX5
