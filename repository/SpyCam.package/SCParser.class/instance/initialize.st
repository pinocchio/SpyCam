initialization
initialize
	parsers := Dictionary new.
	" this initializes the whole smalltalk parser, as it is the root of all parsers. "
	self method.
	" set separators "
	
	" Used for parsing methods "
	self method separator: (self separator).
	
	" Used for parsing class definitions. "
	self messageExpression separator: (self separator).