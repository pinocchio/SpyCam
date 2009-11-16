accessing
at: index put: value
	self assert: (index isKindOf: PinocchioSymbol ).
	self haltIf: [ index printString = 'a PinocchioSymbol #PinocchioLocalVariable'].
	members at: index put: value