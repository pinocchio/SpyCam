typing
compatibleWith: aSelector
	self selectorName = aSelector selectorName
		ifFalse: [^ false].
	^ true.
	