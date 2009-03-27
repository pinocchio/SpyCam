typer
compatibleWith: aMethod
	self returnType = aMethod returnType
		ifFalse: [ ^false ].
	self selector = aMethod selector
		ifFalse: [ ^false ].
	^ true.