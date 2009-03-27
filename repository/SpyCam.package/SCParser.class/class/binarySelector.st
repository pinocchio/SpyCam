selector
binarySelector
	^ PEGParser
		named: 'BINARY-SELECTOR'

		parsing: ((	(self specialCharacter | '-')
						strongAnd: (self specialCharacter) strongTimes)
					| '|' )
							
		semantics: [ :result |
		
			result isString
				ifTrue: [ result ]
				ifFalse: [ result second inject: result first into: [ :c :e | c, e ] ]
			
		]