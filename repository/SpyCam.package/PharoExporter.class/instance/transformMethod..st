exporting
transformMethod: aMethodSource
	|ast |
	ast :=  scparser method match: (PEGStringScanner on: aMethodSource).
	^ pinocchioVisitor visit: ast.