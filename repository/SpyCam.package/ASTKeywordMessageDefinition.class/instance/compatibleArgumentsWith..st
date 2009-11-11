comparing
compatibleArgumentsWith: aSelector
	 1 to: parameters size
		do: [:index | (parameters at: index) type = (aSelector parameters at: index) type
				ifFalse: [^ false]].
	^ true