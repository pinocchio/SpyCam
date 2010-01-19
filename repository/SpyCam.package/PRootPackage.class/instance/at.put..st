accessing
at: index put: value
	index should beKindOf: PSymbol.
	self haltIf: [ index printString = 'a PinocchioSymbol #PinocchioLocalVariable' ].
	members at: index put: value