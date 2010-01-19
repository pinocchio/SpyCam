exporting
generateMethod: method
	| ast |
	ast := self ast: method getSource asString.
	cdumper clear.
	cdumper visitCollection: ast. 
	outStream nextPutAll: cdumper asString.
	self generateMethodInstallFor: method withCode: ast.
	^ ast