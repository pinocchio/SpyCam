accessing
at: index ifPresent: block
	self assert: (index isKindOf: PinocchioSymbol ).
	^ members at: index ifPresent: block