running
testVisitBinaryMethod
	| ast |
	parser := scparser method.
	ast := self ast: '= other 
	^ self name = other name.'.
	ast selector class should = PinocchioSymbol.
	ast selector asString should = '='.
	ast class should = PinocchioMethod.
	