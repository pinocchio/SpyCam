convenience
newSymbol: anASTSymbol
	^ symbols at: anASTSymbol printString 
			   ifAbsentPut: anASTSymbol.