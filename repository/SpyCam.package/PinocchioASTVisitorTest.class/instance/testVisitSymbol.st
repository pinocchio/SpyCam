running
testVisitSymbol
	| symbol result |
	symbol := ASTSymbol new symbol: 'at:put:'.
	result := visitor visit: symbol.
	result class should = PinocchioConstant.
	result constant class should = PinocchioInternalSymbol.
	result constant symbol should = 'at:put:'.
	
	symbol := ASTSymbol new symbol: 'notInternalat:put:'.
	result := visitor visit: symbol.
	result class should = PinocchioConstant.
	result constant class should = PinocchioSymbol.
	result constant symbol should = 'notInternalat:put:'.