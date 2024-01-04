library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

-- FIFO = First In, First Out = first entry is processed first.
-- FILO = First In, Last Out = 

entity memory is
  port (
    dane_we : in std_logic_vector(3 downto 0);
    adres : in std_logic_vector(3 downto 0);
    enable : in std_logic;
    no_wr : in std_logic;
    no_rd : in std_logic;
    magistrala : out std_logic_vector(3 downto 0)
  );
end memory;

architecture Behavioral of memory is

  type pamiec_16_4 is array (15 downto 0) of std_logic_vector(3 downto 0);
  signal ram : pamiec_16_4;

  signal wy_pamiec : std_logic_vector(3 downto 0);
  signal clk_wpis : std_logic;
  signal magistrala_wew : std_logic_vector(3 downto 0);

begin

  magistrala <= magistrala_wew when enable = '0' else "ZZZZ";
  magistrala_wew <= wy_pamiec when no_rd = '0' else
    dane_we when no_wr = '0' else "0000";

  clk_wpis <= enable or no_wr;

  process (clk_wpis)
  begin
    if rising_edge(clk_wpis) then
      ram(conv_integer(adres)) <= magistrala_wew;
    end if;
  end process;

  wy_pamiec <= ram(conv_integer(adres));
end Behavioral;