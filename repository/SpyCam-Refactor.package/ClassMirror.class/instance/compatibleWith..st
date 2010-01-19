typing
compatibleWith: anObject
	^ (self = anObject or:
		[(self compatibleSuperClassWith: anObject) or:
		[(self compatibleMethodsWith: anObject) or:
		[self compatibleInstanceVariablesWith: anObject]]])