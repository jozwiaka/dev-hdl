--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schematUkladIteracyjny.vhf
-- /___/   /\     Timestamp : 01/02/2022 12:24:35
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl C:/dev/ULiC/Verilog/Z1/schematUkladIteracyjny.vhf -w C:/dev/ULiC/Verilog/Z1/schematUkladIteracyjny.sch
--Design Name: schematUkladIteracyjny
--Device: xbr
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schematUkladIteracyjny is
   port ( ai_1   : in    std_logic; 
          ai_2   : in    std_logic; 
          ai_3   : in    std_logic; 
          ai_4   : in    std_logic; 
          ai_5   : in    std_logic; 
          ai_6   : in    std_logic; 
          ai_7   : in    std_logic; 
          ai_8   : in    std_logic; 
          wyNand : out   std_logic);
end schematUkladIteracyjny;

architecture BEHAVIORAL of schematUkladIteracyjny is
   attribute BOX_TYPE   : string ;
   signal P1wy_8  : std_logic;
   signal P2wy_8  : std_logic;
   signal XLXN_56 : std_logic;
   signal XLXN_57 : std_logic;
   signal XLXN_58 : std_logic;
   signal XLXN_60 : std_logic;
   signal XLXN_62 : std_logic;
   signal XLXN_63 : std_logic;
   signal XLXN_64 : std_logic;
   signal XLXN_65 : std_logic;
   signal XLXN_66 : std_logic;
   signal XLXN_67 : std_logic;
   signal XLXN_68 : std_logic;
   signal XLXN_69 : std_logic;
   signal XLXN_70 : std_logic;
   signal XLXN_71 : std_logic;
   signal XLXN_78 : std_logic;
   signal XLXN_79 : std_logic;
   component blokIteracyjny
      port ( ai   : in    std_logic; 
             P2we : in    std_logic; 
             P1we : in    std_logic; 
             P2wy : out   std_logic; 
             P1wy : out   std_logic);
   end component;
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
begin
   XLXN_78 <= '0';
   XLXN_79 <= '0';
   blok_1 : blokIteracyjny
      port map (ai=>ai_1,
                P1we=>XLXN_79,
                P2we=>XLXN_78,
                P1wy=>XLXN_57,
                P2wy=>XLXN_56);
   
   blok_2 : blokIteracyjny
      port map (ai=>ai_2,
                P1we=>XLXN_57,
                P2we=>XLXN_56,
                P1wy=>XLXN_63,
                P2wy=>XLXN_62);
   
   blok_3 : blokIteracyjny
      port map (ai=>ai_3,
                P1we=>XLXN_63,
                P2we=>XLXN_62,
                P1wy=>XLXN_67,
                P2wy=>XLXN_66);
   
   blok_4 : blokIteracyjny
      port map (ai=>ai_4,
                P1we=>XLXN_67,
                P2we=>XLXN_66,
                P1wy=>XLXN_69,
                P2wy=>XLXN_68);
   
   blok_5 : blokIteracyjny
      port map (ai=>ai_5,
                P1we=>XLXN_69,
                P2we=>XLXN_68,
                P1wy=>XLXN_60,
                P2wy=>XLXN_58);
   
   blok_6 : blokIteracyjny
      port map (ai=>ai_6,
                P1we=>XLXN_60,
                P2we=>XLXN_58,
                P1wy=>XLXN_65,
                P2wy=>XLXN_64);
   
   blok_7 : blokIteracyjny
      port map (ai=>ai_7,
                P1we=>XLXN_65,
                P2we=>XLXN_64,
                P1wy=>XLXN_71,
                P2wy=>XLXN_70);
   
   blok_8 : blokIteracyjny
      port map (ai=>ai_8,
                P1we=>XLXN_71,
                P2we=>XLXN_70,
                P1wy=>P1wy_8,
                P2wy=>P2wy_8);
   
   wyNand_Inst : NAND2
      port map (I0=>P1wy_8,
                I1=>P2wy_8,
                O=>wyNand);
   
end BEHAVIORAL;


