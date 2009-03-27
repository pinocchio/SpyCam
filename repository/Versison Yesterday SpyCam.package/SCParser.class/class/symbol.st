literal
symbol
	^ PEGParser
		named: 'SYMBOL'
		parsing: (self symbolKeywords | self identifier <= self binarySelector <= self symbolString)