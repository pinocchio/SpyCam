selector
messagePattern
	^ PEGParser
		named: 'MESSAGE-PATTERN'
		parsing: (self keywordsArguments | self binaryArgument <= self unarySelector)