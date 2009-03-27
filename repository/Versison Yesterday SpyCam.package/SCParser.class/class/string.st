literal
string
	" XXX Have to optimize and clean..."
	| stringBorder first |
	stringBorder := '''' asPEG omit: true.

	^ PEGParser
		named: 'STRING'
		
		parsing: ((stringBorder strongAnd: ((stringBorder not) strongTimes)) <= stringBorder) strongTimes
	
		semantics: [:result |
			first := result removeFirst.
			first := first inject: '' into: [:c :e | c, e ].
			result inject: first into: [:c :e | c, '''', (e inject: '' into: [:ic :ie | ic, ie ]) ]
		]