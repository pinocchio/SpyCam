accessing
at: index ifAbsentPut: block
	self assert: (index isKindOf: PinocchioSymbol ).
	self haltIf: [ index printString = 'a PinocchioSymbol #PinocchioLocalVariable'].
	^ members at: index ifAbsentPut: block