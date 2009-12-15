accessing
at: index ifAbsent: block
	index should beKindOf: PinocchioSymbol.
	^ members at: index ifAbsent: block