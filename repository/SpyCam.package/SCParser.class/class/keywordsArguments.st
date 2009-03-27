selector
keywordsArguments
	| result |
	^ PEGParser
		named: 'KEYWORDS-ARGUMENTS'
		parsing: (self keyword & self argumentName) plus
		
		semantics: [:pairs |
			result := ASTArgumentSelector new
						keywords: OrderedCollection new;
						arguments: OrderedCollection new.
			pairs do: [ :pair |
				result keywords add: (pair at: 1).
				result arguments add: (pair at: 2)
			].
			result
		]