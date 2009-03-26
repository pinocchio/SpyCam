as yet unclassified
identifier
	^ PEGParser
		named: 'IDENTIFIER'
		
		parsing: (self letter strongAnd: (self letter | self decimalDigit) strongTimes)
						
		semantics: [ :result |
			result second inject: result first into: [ :c :e | c, e ]
		]