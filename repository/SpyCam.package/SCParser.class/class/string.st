as yet unclassified
string
	" XXX Have to optimize and clean..."
	| stringBorder parser first |
	stringBorder := '''' asPEG omit: true.

	parser := PEGParser 	named: 'STRING'
						parsing: ((stringBorder strongAnd: ((stringBorder not) strongTimes)) <= stringBorder) strongTimes.
	
	parser semantics: [:result |
		first := result removeFirst.
		first := first inject: '' into: [:c :e | c, e asString].
		result inject: first into: [:c :e | c, '''', (e inject: '' into: [:ic :ie | ic, ie asString]) ]
	].

	^ parser