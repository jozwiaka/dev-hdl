library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;
use IEEE.numeric_std.all;

entity Z2 is
  port (
    zegar : in std_logic;
    reset : in std_logic;
    wy    : out std_logic_vector (3 downto 0));
end Z2;

architecture Behavioral of Z2 is
  signal licz         : std_logic_vector (3 downto 0) := "1001";
  signal przesuniecie : std_logic_vector (3 downto 0) := "1001";
begin
  process (zegar, reset)
  begin
    if reset = '0' then
      licz <= "1001";
    elsif zegar'event and zegar = '1' then
      if licz = "0000" then
        licz <= "1001";
      else
        licz <= licz - 1;
      end if;
    end if;
  end process;
  przesuniecie(0) <= licz(0);
  przesuniecie(1) <= licz(0) xor licz(1);
  przesuniecie(2) <= licz(1) xor licz(2);
  przesuniecie(3) <= licz(2) xor licz(3);
  wy              <= not przesuniecie;
end Behavioral;

--				licz(0)<=(not licz(2)and not licz(1)) or (licz(3) and not licz(0)) or (licz(2) and licz(1));
--				licz(1)<=(licz(1) and not licz(0)) or (not licz(2) and licz(0));
--				licz(2)<=(not licz(3) and licz(2)) or (licz(3) and not licz(0)) or (licz(1) and not licz(0));