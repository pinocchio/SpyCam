visitor
visitSymbol: anASTSymbol 
	^PinocchioConstant new constant: (PinocchioSymbol new symbol: (anASTSymbol symbol))