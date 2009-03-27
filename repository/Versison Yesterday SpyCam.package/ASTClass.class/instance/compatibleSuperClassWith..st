comparing
compatibleSuperClassWith: anObject 
	anObject superClass
		ifNil: [self error: 'comparing superclass is nil'].
	self superClass
		ifNil: [self error: 'my own superclass is nil'].
	^ self superClass = anObject superClass