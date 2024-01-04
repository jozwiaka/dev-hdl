-- Vhdl instantiation template created from schematic C:\dev\ULiC_Scripts\ProjektZaliczeniowy_TrescZadan\ProjektZaliczeniowy\SchematGlowny.sch - Wed Oct 13 11:34:01 2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

   COMPONENT SchematGlowny
   PORT( clk	:	IN	STD_LOGIC; 
          sw0	:	IN	STD_LOGIC; 
          d_Stopwatch1	:	OUT	STD_LOGIC; 
          d_Stopwatch2	:	OUT	STD_LOGIC; 
          sw1	:	IN	STD_LOGIC; 
          b0	:	IN	STD_LOGIC; 
          b1	:	IN	STD_LOGIC; 
          wy_sterowanie_kropka	:	OUT	STD_LOGIC; 
          wy_aktywna_anoda	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          wy_transkoder_7s	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0));
   END COMPONENT;

   UUT: SchematGlowny PORT MAP(
		clk => , 
		sw0 => , 
		d_Stopwatch1 => , 
		d_Stopwatch2 => , 
		sw1 => , 
		b0 => , 
		b1 => , 
		wy_sterowanie_kropka => , 
		wy_aktywna_anoda => , 
		wy_transkoder_7s => 
   );
