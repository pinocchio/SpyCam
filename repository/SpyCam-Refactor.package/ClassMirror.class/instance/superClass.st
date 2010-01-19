accessing
superClass
	superClass
		ifNil: [context mirrorClass: internalClass superclass].
	^ superClass