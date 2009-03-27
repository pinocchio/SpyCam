variable
primaryVariable
	^ PEGParser
		named: 'PRIMARY-VARIABLE'
		parsing: self identifier