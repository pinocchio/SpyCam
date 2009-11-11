typing
compatibleWith: anObject
	self = anObject
		ifTrue: [^ true].
	(self compatibleSuperClassWith: anObject)
		ifTrue: [^true].
	(self compatibleMethodsWith: anObject )
		ifTrue: [^true].
	(self compatibleInstanceVariablesWith: anObject )
		ifTrue: [^true].
		
	^false