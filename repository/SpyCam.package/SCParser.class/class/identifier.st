as yet unclassified
identifier
	| parser |
	parser := PEGParser 	named: 'IDENTIFIER'
						parsing: (self letter strongAnd: (self letter | self decimalDigit) strongTimes).
						
	parser semantics: [ :result |
		result second inject: result first into: [ :c :e | c, e ]
	].

	^ parser
	