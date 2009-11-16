accessing
at: index ifAbsent: block
	self assert: (index isKindOf: PinocchioSymbol).
	^ members at: index ifAbsent: block