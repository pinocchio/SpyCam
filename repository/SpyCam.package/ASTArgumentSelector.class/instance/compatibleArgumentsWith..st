typing
compatibleArgumentsWith: aSelector
	 1 to: arguments size
		do: [:index | (arguments at: index) type = (aSelector arguments at: index) type
				ifFalse: [^ false]].
	^ true