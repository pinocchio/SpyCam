variable
variableName
	^ PEGParser
		named: 'VARIABLE-NAME'
		parsing: self identifier