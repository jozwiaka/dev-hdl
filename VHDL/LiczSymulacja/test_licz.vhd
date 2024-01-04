--------------------------------------------------------------------------------
-- Company: 
library ieee;
use ieee.std_logic_1164.all;
entity test_licz is
end test_licz;

architecture behavior of test_licz is

  component licz
    port (
      clk : in std_logic;
      start : in std_logic;
      reset : in std_logic;
      wy : out std_logic_vector(3 downto 0)
    );
  end component;
  --Inputs
  signal clk : std_logic := '0';
  signal start : std_logic := '0';
  signal reset : std_logic := '1';

  --Outputs
  signal wy : std_logic_vector(3 downto 0);

  -- Clock period definitions
  constant clk_period : time := 50 ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut : licz port map(
    clk => clk,
    start => start,
    reset => reset,
    wy => wy
  );

  -- Clock process definitions
  clk_process : process
  begin
    clk <= '0';
    wait for 50 ns;
    clk <= '1';
    wait for 50 ns;
    clk <= '0';
    wait for 10 ns;
    start <= '1';
    wait for 40 ns;
    clk <= '1';
    clk_loop : for x in 0 to 24 loop --25 loops
      wait for clk_period;
      clk <= '0';
      wait for clk_period;
      clk <= '1';
    end loop clk_loop;

    wait;
  end process;

  -- reset procesu
  res_process : process
  begin
    wait for 720 ns;
    reset <= '0';
    wait for 100 ns;
    reset <= '1';
    wait;
  end process;

end;