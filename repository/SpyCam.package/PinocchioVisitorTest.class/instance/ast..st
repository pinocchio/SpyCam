convenience
ast: aString
	| ast |
	ast :=  parser match: (PEGMemoizedStringScanner on: aString).
	ast should not = nil.
	^ visitor visit: ast.