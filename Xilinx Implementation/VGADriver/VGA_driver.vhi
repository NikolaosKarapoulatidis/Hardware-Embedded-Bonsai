
-- VHDL Instantiation Created from source file VGA_driver.vhd -- 15:40:39 06/24/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT VGA_driver
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;          
		HSYNC : OUT std_logic;
		VSYNC : OUT std_logic;
		RGB : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_VGA_driver: VGA_driver PORT MAP(
		CLK => ,
		RST => ,
		HSYNC => ,
		VSYNC => ,
		RGB => 
	);


