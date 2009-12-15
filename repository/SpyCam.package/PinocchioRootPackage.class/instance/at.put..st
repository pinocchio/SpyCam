accessing
at: index put: value
	index should beKindOf: PinocchioSymbol.
	self haltIf: [ index printString = 'a PinocchioSymbol #PinocchioLocalVariable' ].
	members at: index put: value