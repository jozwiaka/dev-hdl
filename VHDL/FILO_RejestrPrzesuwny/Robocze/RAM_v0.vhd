--FILO wesja 2
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity RAM is
  port (
    magistrala_we : in std_logic_vector (3 downto 0); --J1
    not_e : in std_logic; --sw0 -- 0->licznik liczy
    clk_wpis : in std_logic; --sw1
    rd_not_wr : in std_logic; -- 1->odczyt->liczy do tyłu (15->0); 0->zapis->liczy do przodu (0->15)

    magistrala_wy : out std_logic_vector (3 downto 0); --J4
    empty_half_full : out std_logic_vector (2 downto 0)); --J3 lub diody
  --Układ Kombinacyjny 2:
  --EMPTY
  --HALF - zapisana połowa pamięci
  --FULL
  --ERROR - gdy wpis przy pełnej pamięci //dla wersji 1
end RAM;

architecture Behavioral of RAM is
  type pamiec_16_4 is array (15 downto 0) of std_logic_vector(3 downto 0); --16 komórek 4-bitowych
  signal ram : pamiec_16_4;
  --signal empty_half_full_wew : std_logic_vector(2 downto 0);
  --signal magistrala_wew : std_logic_vector(3 downto 0);
  signal licznik : integer range 0 to 15 := 0; --   signal licznik : std_logic_vector (7 downto 0) := "00000000";
begin
  -- zapis i odczyt z tej samej komórki 0 (0-15) //zapisujemy z pierwszej komórki i odcztujemy też z pierwszej

  --dekoder adresowy (dla wersji 1)
  --mul/demultiplekser (dla FIFO)
  --RAM
  --licznik adresowy(start(not_e), kierunek_liczenia(rd_not_wr), clk) 0-15; 0->EMPTY; 15->FULL
  --układ sterowania wejściowy
  --układ sterowania wyjściowy
  --magistrala wewnętrzna
  ram(0) <= magistrala_we when rd_not_wr = '0';
  process (clk_wpis)
  begin
    if rising_edge(clk_wpis) then
      if not_e = '0' then
        if rd_not_wr = '0' then
          licznik <= licznik + 1;
          for i in licznik - 1 to 0 loop
            ram(i + 1) <= ram(i);
          end loop;
        elsif licznik /= 0 then
          licznik <= licznik - 1;
          for i in 0 to licznik - 1 loop
            ram(i) <= ram(i + 1);
          end loop;
        end if;
      end if;
      if licznik = 0 then
        empty_half_full <= "100";
      elsif licznik = 7 then
        empty_half_full <= "010";
      elsif licznik = 15 then
        empty_half_full <= "001";
      end if;
    end if;
  end process;
  magistrala_wy <= ram(0) when rd_not_wr = '1';
end Behavioral;