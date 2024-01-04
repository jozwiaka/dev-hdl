--FILO wesja 2 przesuwny = First In Last Out
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity RAM is
  port (
    magistrala_we : in std_logic_vector (3 downto 0); --J1
    not_e : in std_logic; --sw0 -- 0->licznik liczy
    clk_wpis : in std_logic; --sw1
    rd_not_wr : in std_logic; --b0 1->odczyt->liczy do tylu (15->0); 0->zapis->liczy do przodu (0->15)

    magistrala_wy : out std_logic_vector (3 downto 0); --J4
    empty_half_full : out std_logic_vector (2 downto 0)); --J3 lub diody
  --ERROR - gdy wpis przy pe�nej pami�ci //dla wersji 1
end RAM;

architecture Behavioral of RAM is
  type pamiec_16_4 is array (15 downto 0) of std_logic_vector(3 downto 0);
  signal ram : pamiec_16_4;
  signal empty_half_full_wew : std_logic_vector(2 downto 0);
  signal magistrala_wew : std_logic_vector(3 downto 0);
  signal licznik : integer range 0 to 15 := 0;

begin
  magistrala_wew <= ram(0) when (rd_not_wr = '1' and not_e = '0')
    else (magistrala_we) when (rd_not_wr = '0' and not_e = '0')
    else "0000"; --Last Out

  magistrala_wy <= magistrala_wew;
  empty_half_full <= empty_half_full_wew;

  process (clk_wpis)
  begin
    if rising_edge(clk_wpis) then
      if not_e = '0' then
        if rd_not_wr = '0' and licznik /= 15 then --Write
          licznik <= licznik + 1;
          for i in 0 to ram'high - 1 loop
            ram(i + 1) <= ram(i);
          end loop;
          ram(0) <= magistrala_we; --First In
        elsif rd_not_wr = '1' and licznik /= 0 then --Read
          licznik <= licznik - 1;
          for i in 0 to ram'high - 1 loop
            ram(i) <= ram(i + 1);
          end loop;
        end if;
      end if;
    end if;
  end process;
  process (licznik)
  begin
    if licznik = 0 then
      empty_half_full_wew <= "011";
    elsif licznik > 7 and licznik /= 15 then
      empty_half_full_wew <= "101";
    elsif licznik = 15 then
      empty_half_full_wew <= "110";
    else
      empty_half_full_wew <= "111";
    end if;
  end process;

end Behavioral;