as yet unclassified
capitalIdentifier
	| parser |
	parser := PEGParser 	named: 'CAPITAL-IDENTIFIER'
						parsing: (self uppercase strongAnd: (self letter | self decimalDigit) strongTimes).
						
	parser semantics: [ :result |
		result second inject: result first into: [ :c :e | c, e ]
	].

	^ parser
	