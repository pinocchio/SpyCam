as yet unclassified
capitalIdentifier
	^ PEGParser
		named: 'CAPITAL-IDENTIFIER'
		
		parsing: (self uppercase strongAnd: (self letter | self decimalDigit) strongTimes)
						
		semantics: [ :result |
			result second inject: result first into: [ :c :e | c, e ]
		]