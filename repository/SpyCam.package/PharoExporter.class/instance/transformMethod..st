exporting
transformMethod: aMethodSource
	|ast |
	ast :=  scparser method match: (PEGStringScanner on: aMethodSource  separator: scparser separator).
	^ pinocchioVisitor visit: ast.