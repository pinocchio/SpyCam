convenience
ast: aString
	| ast |
	ast :=  parser match: (PEGMemoizedStringScanner on: aString).
	^ unifier visit: ast.