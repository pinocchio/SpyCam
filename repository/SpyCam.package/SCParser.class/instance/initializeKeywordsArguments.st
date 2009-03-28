selector
initializeKeywordsArguments
	| result |
	^ PEGParser
		named: 'KEYWORDS-ARGUMENTS'
		parsing: (self keyword & self argumentName) plus
		
		semantics: [:pairs |
			result := ASTArgumentSelector new.
			pairs do: [ :pair |
				result keywords add: (pair at: 1).
				result arguments add: (pair at: 2)
			].
			result
		]