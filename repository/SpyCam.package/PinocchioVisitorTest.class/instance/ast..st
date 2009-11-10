convenience
ast: aString
	| ast |
	ast :=  parser match: (PEGStringScanner on: aString).
	ast should not = nil.
	^ visitor visit: ast.