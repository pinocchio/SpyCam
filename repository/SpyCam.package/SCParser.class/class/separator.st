separator
separator
	" has to be strongPlus since plus would match separator in between -> infinite recursion. "
	^ (PEGParser separators | self commentFormat) strongTimes