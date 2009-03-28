selector
initializeBinarySelector
	^ PEGParser
		named: 'BINARY-SELECTOR'

		parsing: ((	(self specialCharacter | '-') && (self specialCharacter) strongTimes)
					| '|' )
							
		semantics: [ :result |
		
			result isString
				ifTrue: [ result ]
				ifFalse: [ result second inject: result first into: [ :c :e | c, e ] ]
			
		]