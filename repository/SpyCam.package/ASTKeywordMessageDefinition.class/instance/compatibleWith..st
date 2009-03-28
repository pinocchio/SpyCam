comparing
compatibleWith: aSelector 
	(super compatibleWith: aSelector)
		ifFalse: [^ false].
	"check if each argument has the same type"
	^self compatibleArgumentsWith: aSelector.