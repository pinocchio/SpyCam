accessing
at: index ifPresent: block
	index should beKindOf: PinocchioSymbol.
	^ members at: index ifPresent: block