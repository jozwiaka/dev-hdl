library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_unsigned.all;

entity licz is
  port (
    clk : in std_logic;
    start : in std_logic;
    reset : in std_logic;
    wy : out std_logic_vector (3 downto 0));
end licz;

architecture Behavioral of licz is
  signal wy_wew : std_logic_vector (3 downto 0) := "0000";
begin

  proces_liczenia : process (clk)
  begin
    if rising_edge(clk) then
      if reset = '0' then
        wy_wew <= "0000";
      elsif start = '1' then
        wy_wew <= wy_wew + '1';
      end if;
    end if;
  end process proces_liczenia;
  wy <= wy_wew;
end Behavioral;