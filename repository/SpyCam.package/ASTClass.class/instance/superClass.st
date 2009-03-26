accessing
superClass
	superClass
		ifNil: [ASTClass newFromClass: internalClass superclass].
	^ superClass