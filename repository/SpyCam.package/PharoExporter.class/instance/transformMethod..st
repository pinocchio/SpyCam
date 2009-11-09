exporting
transformMethod: aMethodSource
	|ast|
	ast :=  scparser method match: (PEGMemoizedStringScanner on: aMethodSource).
	^ pinocchioVisitor visit: ast.