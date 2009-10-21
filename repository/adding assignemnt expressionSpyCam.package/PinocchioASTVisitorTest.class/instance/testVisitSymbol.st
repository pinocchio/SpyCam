running
testVisitSymbol
	| symbol result |
	symbol := ASTSymbol new symbol: 'at:put:'.
	result := visitor visit: symbol.
	self assert: (result class = PinocchioConstant).
	self assert: (result constant class = PinocchioSymbol).
	self assert: (result constant symbol = 'at:put:').