matching
privateMatch: input in: scope 
	| result match |
	result := OrderedCollection new.
	children
		do: [:child | 
			skipWhitespace
				ifTrue: [input skipWhitespace: scope].
			match := child match: input in: scope.
			match
				ifNil: [^ match].
			child omit
				ifFalse: [result add: match]].
	result size = 1
		ifTrue: [^ result at: 1].
	^ result