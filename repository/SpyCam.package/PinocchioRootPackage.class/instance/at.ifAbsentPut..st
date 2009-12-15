accessing
at: index ifAbsentPut: block
	index should beKindOf: PinocchioSymbol.
	self haltIf: [ index printString = 'a PinocchioSymbol #PinocchioLocalVariable' ].
	^ members at: index ifAbsentPut: block