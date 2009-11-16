accessing
at: index
	self assert: (index isKindOf: PinocchioSymbol ).
	^ members at: index