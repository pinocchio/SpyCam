comparing
compatibleArgumentsWith: aSelector
	 parameters size timesRepeat: [:index | 
		(parameters at: index) type = (aSelector parameters at: index) type
			ifFalse: [^ false]
	].
	^ true