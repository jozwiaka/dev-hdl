library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Schemat_VHDL is
  port (
    clk : in std_logic;
    sw0 : in std_logic;
    sw1 : in std_logic;
    b0 : in std_logic;
    b1 : in std_logic;
    wy_aktywna_anoda : out std_logic_vector (3 downto 0);
    wy_transkoder_7s : out std_logic_vector (6 downto 0);
    wy_sterowanie_kropka : out std_logic;
    d_Stopwatch1 : out std_logic;
    d_Stopwatch2 : out std_logic
  );
end Schemat_VHDL;

architecture Behavioral of Schemat_VHDL is
  signal wy_clk : std_logic;

  signal wy_we : std_logic_vector (1 downto 0);

  signal wy_clk_mp : std_logic;

  signal not_sw0 : std_logic;

  signal wy_ds_we1 : std_logic_vector (3 downto 0);
  signal wy_s_j_we2 : std_logic_vector (3 downto 0);
  signal wy_s_dz_we3 : std_logic_vector (3 downto 0);
  signal wy_min_we4 : std_logic_vector (3 downto 0);

  signal wy_ds_we1_2 : std_logic_vector (3 downto 0);
  signal wy_s_j_we2_2 : std_logic_vector (3 downto 0);
  signal wy_s_dz_we3_2 : std_logic_vector (3 downto 0);
  signal wy_min_we4_2 : std_logic_vector (3 downto 0);

  signal wy_we_Stopwatch1 : std_logic_vector (3 downto 0);
  signal wy_we_Stopwatch2 : std_logic_vector (3 downto 0);

  signal wy_we_transkoder7s : std_logic_vector (3 downto 0);

  component dzielnik_100kHz_na_400Hz
    port (
      clk : in std_logic;
      wy : out std_logic
    );
  end component;

  component licznik_cyfra
    port (
      clk : in std_logic;
      wy : out std_logic_vector(1 downto 0)
    );
  end component;
  component aktywna_anoda
    port (
      we : in std_logic_vector(1 downto 0);
      wy : out std_logic_vector(3 downto 0)
    );
  end component;

  component dzielnik_400Hz_na_10Hz
    port (
      clk : in std_logic;
      wy : out std_logic
    );
  end component;

  component moj_projekt_Diody
    port (
      sw0 : in std_logic;
      d_Stopwatch1 : out std_logic;
      d_Stopwatch2 : out std_logic
    );
  end component;

  component moj_projekt
    port (
      clk : in std_logic;
      sw0 : in std_logic;
      sw1 : in std_logic;
      b0 : in std_logic;
      b1 : in std_logic;
      wy_ds : out std_logic_vector(3 downto 0);
      wy_s_j : out std_logic_vector(3 downto 0);
      wy_s_dz : out std_logic_vector(3 downto 0);
      wy_min : out std_logic_vector(3 downto 0)
    );
  end component;

  component mult_vec1
    port (
      we : in std_logic_vector(1 downto 0);
      we1 : in std_logic_vector(3 downto 0);
      we2 : in std_logic_vector(3 downto 0);
      we3 : in std_logic_vector(3 downto 0);
      we4 : in std_logic_vector(3 downto 0);
      wy : out std_logic_vector(3 downto 0)
    );
  end component;

  component moj_projekt_MUX
    port (
      sw0 : in std_logic;
      we_Stopwatch1 : in std_logic_vector(3 downto 0);
      we_Stopwatch2 : in std_logic_vector(3 downto 0);
      wy : out std_logic_vector(3 downto 0)
    );
  end component;
  component transkoder_7s
    port (
      we : in std_logic_vector(3 downto 0);
      wy : out std_logic_vector(6 downto 0)
    );
  end component;

  component ster_kropka
    port (
      we : in std_logic_vector(1 downto 0);
      wy : out std_logic
    );
  end component;
begin
  not_sw0 <= not sw0;
  Inst_dzielnik_100kHz_na_400Hz : dzielnik_100kHz_na_400Hz port map(
    clk => clk,
    wy => wy_clk
  );

  Inst_licznik_cyfra : licznik_cyfra port map(
    clk => wy_clk,
    wy => wy_we
  );

  Inst_aktywna_anoda : aktywna_anoda port map(
    we => wy_we,
    wy => wy_aktywna_anoda
  );

  Inst_dzielnik_400Hz_na_10Hz : dzielnik_400Hz_na_10Hz port map(
    clk => wy_clk,
    wy => wy_clk_mp
  );

  Inst_moj_projekt_Diody : moj_projekt_Diody port map(
    sw0 => sw0,
    d_Stopwatch1 => d_Stopwatch1,
    d_Stopwatch2 => d_Stopwatch2
  );

  Inst_moj_projekt_1 : moj_projekt port map(
    clk => wy_clk_mp,
    sw0 => sw0,
    sw1 => sw1,
    b0 => b0,
    b1 => b1,
    wy_ds => wy_ds_we1,
    wy_s_j => wy_s_j_we2,
    wy_s_dz => wy_s_dz_we3,
    wy_min => wy_min_we4
  );

  Inst_moj_projekt_2 : moj_projekt port map(
    clk => wy_clk_mp,
    sw0 => not_sw0,
    sw1 => sw1,
    b0 => b0,
    b1 => b1,
    wy_ds => wy_ds_we1_2,
    wy_s_j => wy_s_j_we2_2,
    wy_s_dz => wy_s_dz_we3_2,
    wy_min => wy_min_we4_2
  );

  Inst_mult_vec1_1 : mult_vec1 port map(
    we => wy_we,
    we1 => wy_ds_we1,
    we2 => wy_s_j_we2,
    we3 => wy_s_dz_we3,
    we4 => wy_min_we4,
    wy => wy_we_Stopwatch1
  );

  Inst_mult_vec1_2 : mult_vec1 port map(
    we => wy_we,
    we1 => wy_ds_we1_2,
    we2 => wy_s_j_we2_2,
    we3 => wy_s_dz_we3_2,
    we4 => wy_min_we4_2,
    wy => wy_we_Stopwatch2
  );

  Inst_moj_projekt_MUX : moj_projekt_MUX port map(
    sw0 => sw0,
    we_Stopwatch1 => wy_we_Stopwatch1,
    we_Stopwatch2 => wy_we_Stopwatch2,
    wy => wy_we_transkoder7s
  );

  Inst_transkoder_7s : transkoder_7s port map(
    we => wy_we_transkoder7s,
    wy => wy_transkoder_7s
  );

  Inst_ster_kropka : ster_kropka port map(
    we => wy_we,
    wy => wy_sterowanie_kropka
  );
end Behavioral;