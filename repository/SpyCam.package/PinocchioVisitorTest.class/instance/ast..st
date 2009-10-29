convenience
ast: aString
	| ast |
	ast :=  parser match: (PEGMemoizedStringScanner on: aString).
	ast should not be isNil.
	^ visitor visit: ast.