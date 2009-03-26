as yet unclassified
binarySelector
	| parser |
	parser := PEGParser named: 'BINARY-SELECTOR'
				parsing: ((	(self specialCharacter | self minus)
								strongAnd: (self specialCharacter) strongTimes)
							| '|' ).
							
	parser semantics: [ :result |
	
		result isString
			ifTrue: [ result ]
			ifFalse: [ result second inject: result first into: [:c :e | c, e] ]
			
	].

	^ parser