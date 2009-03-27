variable
argumentName
	^ PEGParser
		named: 'ARGUMENT-NAME'
		parsing: self identifier