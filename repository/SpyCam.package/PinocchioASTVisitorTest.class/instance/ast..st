convenience
ast: aString
	| ast |
	ast :=  parser match: (PEGMemoizedStringScanner on: aString).
	^ visitor visit: ast.