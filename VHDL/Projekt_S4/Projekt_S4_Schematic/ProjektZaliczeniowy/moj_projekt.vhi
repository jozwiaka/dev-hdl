
-- VHDL Instantiation Created from source file moj_projekt.vhd -- 11:30:32 10/13/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT moj_projekt
	PORT(
		clk : IN std_logic;
		sw0 : IN std_logic;
		sw1 : IN std_logic;
		b0 : IN std_logic;
		b1 : IN std_logic;          
		wy_ds : OUT std_logic_vector(3 downto 0);
		wy_s_j : OUT std_logic_vector(3 downto 0);
		wy_s_dz : OUT std_logic_vector(3 downto 0);
		wy_min : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_moj_projekt: moj_projekt PORT MAP(
		clk => ,
		sw0 => ,
		sw1 => ,
		b0 => ,
		b1 => ,
		wy_ds => ,
		wy_s_j => ,
		wy_s_dz => ,
		wy_min => 
	);


