block
block
	^ PEGParser
		named: 'BLOCK'
		
		parsing: ('[' asPEG omit
					& (self blockArguments & self bar) optional
					& self temporaries optional
					& self statements
					& ']' asPEG omit)

		semantics: [ :result |
			ASTBlock new
				arguments: ((result at: 1) resultIfFailed: [ OrderedCollection new ]);
				temporaries: ((result at: 2) resultIfFailed: [ OrderedCollection new ]);
				statements: 	(result at: 3)
		]