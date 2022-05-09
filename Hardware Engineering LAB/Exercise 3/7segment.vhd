entity SevenSegment is
port (

Ain, Bin, Cin, Din : in bit;
a, b, c, d, e, f, g : out bit );

end SevenSegment;


architecture SS of SevenSegment is
begin
a <= Ain or Cin or (not Bin and not Din) or (Bin and Din);
b <= not Bin or (not Cin and not Din) or (Cin and Din);
c <= Bin or not Cin or Din;
d <= Ain or (not Bin and not Din) or (not Bin and Cin) or (Cin and not Din) or (Bin and not Cin and Din);
e <= (not Bin and not Din) or (Cin and not Din);
f <= Ain or (Bin and not Din) or (Bin and not Cin) or (not Cin and not Din);
g <= Ain or (Bin and not Cin) or (not Bin and Cin) or (Cin and not Din);

end SS;