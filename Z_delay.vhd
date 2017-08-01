library ieee;
    use ieee.std_logic_1164.all;
      
entity Z_Delay is
  generic ( n : integer := 4);
    port(clk:in  std_logic;
           D:in  std_logic_vector(n-1 downto 0):=(others=>'0');
           Q:out std_logic_vector(n-1 downto 0):=(others=>'0')
         );
end Z_Delay;

Architecture operation of Z_Delay is

 begin
   process(clk)
     begin
       if rising_edge(clk) then
         Q<=D;
       end if;
     end process;
 
 end;

