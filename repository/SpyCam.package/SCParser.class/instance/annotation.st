annotations
annotation
	^ PEGParser
		named: 'ANNOTATION'
		parsing: (('<' asPEG omit: true)
					& (self keywordMessageExpression | self unaryMessageExpression)
					<& ('>' asPEG omit: true))