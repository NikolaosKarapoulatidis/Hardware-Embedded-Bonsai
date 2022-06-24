library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGA_driver is 

 Port ( CLK, RST : in STD_LOGIC;           
	HSYNC, VSYNC : out STD_LOGIC;
	RGB : out STD_LOGIC_VECTOR (2 downto 0));  --1 bit for each color

end VGA_driver;

architecture arch of VGA_driver is

--following values (in microseconds) depend on the vga monitor resolution and refresh rate
--this example: 640*480 at 60hz (industry standard)

	signal clk25 : std_logic := '0';  -- pixel freq. is at 25mhz
	signal hPos : integer := 0;	  --initialize
	signal vPos : integer := 0;   
	signal videoOn : std_logic := '0';      
         
	constant HD : integer := 639;   --horizontal display
	constant HFP : integer := 16;   --front poarch
	constant HSP : integer := 96;   --sync pulse/retrace
	constant HBP : integer := 48;   --back poarch

	constant VD : integer := 479;   --vertical display
	constant VFP : integer := 10;   --upper poarch
	constant VSP : integer := 2;    --sync pulse/retrace
	constant VBP : integer := 33;   --lower poarch

begin

clk_divider:process(CLK)   
begin
	if(CLK'event and CLK = '1')then
		clk25 <= not clk25;             --default clk is 50mhz
	end if;
end process;            

hPos_counter:process(clk25, RST)
begin
	if(RST = '1')then
		hpos <= 0;                     --start from beginning if reset is true

	elsif(clk25'event and clk25 = '1')then
		if (hPos = (HD + HFP + HSP + HBP)) then   --if the horizontal Pos is equal to total horizontal pixels then start from beginning(left)
			hpos <= 0;

		else
			hPos <= hPos+1;    --go one pixel to the right
		end if;
	end if;
end process;

vPos_counter:process(clk25, RST, hPos)
begin
	if(RST = '1')then
		vpos <= 0;                     --start from beginning if reset is true

	elsif(clk25'event and clk25 = '1')then
		if (hPos = (HD + HFP + HSP + HBP)) then
			if (vPos = (VD + VFP + VSP + VBP)) then   --if the vertical Pos is equal to total vertical pixels then start from beginning(top)
				vpos <= 0;
		else 
			vPos <= vPos + 1;
			end if;
		end if;
	end if;
end process;

Horizontal_Synch:process(clk25, RST, hPos)
begin
	if(RST = '1')then
		HSYNC <= '0';                     --start from beginning if reset is true

	elsif(clk25'event and clk25 = '1')then
		if((hPos <= (HD+HFP)) or (hPos > HD + HFP +HSP)) then
			HSYNC <= '1';
		else
			HSYNC <= '0';
		end if;
	end if;
end process;

Vertical_Synch:process(clk25, RST, VPos)
begin
	if(RST = '1')then
		VSYNC <= '0';                     

	elsif(clk25'event and clk25 = '1')then
		if((VPos <= (VD+VFP)) or (VPos > VD + VFP +VSP)) then
			VSYNC <= '1';
		else
		VSYNC <= '0';
		end if;
	end if;
end process;

Video_On:process(clk25, RST, vPos, hPos)   
begin
	if(RST = '1')then
		videoOn <= '0';

	elsif(clk25'event and clk = '1')then
		if(hPos <= HD and vPos <= VD)then     	 --ensures that the video is only on when the actual position is not inside a porch
			videoOn <= '1';
		else
			videoOn <= '0';
		end if;
	end if;
end process;

draw_box:process(clk25, RST, hPos, vPos, videoOn)
begin
	if(RST = '1')then
		RGB <= "000";

	elsif(clk25'event and clk = '1')then
		if(videoOn = '1')then
			if((hPos >= 10 and hPos <= 60) and (vPos >= 10 and vPos <= 60))then  --only inside this boundaries the pixel are white which creates a square
				RGB <= "111";
			else
				RGB <= "000";
			end if;
		else
			RGB <= "000";
		end if;
	end if;
end process;

end arch;