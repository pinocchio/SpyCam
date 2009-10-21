selector
initializeKeywordsArguments
	| result |
	^ PEGParser 
		named: 'KEYWORDS-ARGUMENTS'
		parsing: (self keyword & self parameterName) plus
		semantics: 
			[ :pairs | 
			result := ASTKeywordMessageDefinition new.
			pairs do: 
				[ :pair | 
				result keywords add: (pair at: 1).
				result parameters add: (pair at: 2) ].
			result selector: (self createSymbol: (result keywords joinUsing: '')).
			result ]