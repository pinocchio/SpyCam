literal
array
	| array |
	array := PEGParser named: 'ARRAY'.
	array <= ('(' asPEG omit: true) & (self number | self string <= self symbol <= self symbolConstant <= self characterConstant <= array) <& (')' asPEG omit: true).
	 ^ array