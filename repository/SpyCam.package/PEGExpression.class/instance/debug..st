as yet unclassified
debug: input 
	PEGExpression debug ifTrue: 
		[ PEGExpression
			indent;
			increaseIndent.
		Transcript show: 'Trying to match: ' , self asString , ' at: '.
		Transcript show: input sample.
		Transcript cr ]