comparing
hasCompatibleMethod: aMethod
	methods do: [:m|
		(m compatibleWith: aMethod)
			ifFalse: [^false]].
	^ true.