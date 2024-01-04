--FILO wesja 2
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity FILO_RejestrPrzesuwny is
  port (
    we_dane : in std_logic_vector (3 downto 0); --J1
    not_e : in std_logic; --sw0 -- 0->licznik liczy
    clk_wpis : in std_logic; --sw1
    rd_not_wr : in std_logic; -- 1->odczyt->liczy do tyłu (15->0); 0->zapis->liczy do przodu (0->15)

    wy_dane : out std_logic_vector (3 downto 0); --J4
    ehf : out std_logic_vector (2 downto 0)); --J3 lub diody
  --Układ Kombinacyjny 2:
  --EMPTY
  --HALF - zapisana połowa pamięci
  --FULL
  --ERROR - gdy wpis przy pełnej pamięci //dla wersji 1
end FILO_RejestrPrzesuwny;

architecture Behavioral of FILO_RejestrPrzesuwny is
  type pamiec_16_4 is array (15 downto 0) of std_logic_vector(3 downto 0); --16 komórek 4-bitowych
  signal ram : pamiec_16_4;

  signal wy_pamiec : std_logic_vector(3 downto 0);
  signal magistrala_wew : std_logic_vector(3 downto 0);
  signal licznik : integer range -1 to 15; --   signal licznik : std_logic_vector (7 downto 0) := "00000000";
begin
  -- zapis i odczyt z tej samej komórki 0 (0-15) //zapisujemy z pierwszej komórki i odcztujemy też z pierwszej

  --dekoder adresowy (dla wersji 1)
  --mul/demultiplekser (dla FIFO)
  --RAM
  --licznik adresowy(start(not_e), kierunek_liczenia(rd_not_wr), clk) -1-16; -1->EMPTY; 16->FULL
  --układ sterowania wejściowy
  --układ sterowania wyjściowy
  --magistrala wewnętrzna

  --   process(clock)
  -- 		begin
  -- 			if clock'event and clock = '1' then
  -- 				rejestr(0)<=we;
  -- 				rejestr(1)<=rejestr(0);
  -- 				rejestr(2)<=rejestr(1);
  -- 				rejestr(3)<=rejestr(2);
  -- 				rejestr(4)<=rejestr(3);
  -- 				rejestr(5)<=rejestr(4);
  -- 				rejestr(6)<=rejestr(5);
  -- 				rejestr(7)<=rejestr(6);
  -- 			end if;
  -- 		end process;
end Behavioral;